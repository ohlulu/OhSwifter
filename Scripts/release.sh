#!/bin/bash

# colors
RED='\033[0;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

MainPath="Sources"

# 印出 cd 的過程
cd_and_print() {

    printf "current path -> ${PWD}\n"
    printf "cd to '$1' folder...\n"

    cd $1 

    if [ $? != 0 ]; then
        printf "${RED}cd failure. ㄅㄅ\n"
        exit 1
    fi

    printf "current path -> ${PWD}\n"
}

# 取得 當前版本號
get_current_version() {

    printf "${YELLOW} [ Step 1 ] : Get current version from Info.plis.${NC}\n"
    cd_and_print "../${MainPath}"

    # 找出標籤在第幾行
    regex="<key>CFBundleShortVersionString<\/key>$"
    line=`grep -n ${regex} Info.plist | cut -d ":" -f 1`

    # 行數加一
    let "line++"

    # 找出當前版本號
    currentVersion=`sed -n "${line}p" Info.plist | cut -d ">" -f 2 | cut -d "<" -f 1`
    printf "current verstion -> ${GREEN}${currentVersion}${NC}\n"
}

# 取得 新的版本號（input）
get_new_version() {

    printf "${YELLOW} [ Step 2 ] : Get new version from input stream.${NC}\n"

    read -p "please input new version : " newVersion
    printf "new version is: ${GREEN}${newVersion}${NC} ?\n"
    read -p "please press [y/n] : " response
    if [ "$response" != "y" ]; then
		echo "${RED}ㄅㄅ"
		exit 1
	fi
}

# error: xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance
# cf. https://github.com/nodejs/node-gyp/issues/569
build() {

    printf "${YELLOW} [ Step 3 ] : Run 'xcodebuild'.${NC}\n"

    cd_and_print ".."

    xcodebuild \
        -project OhSwifter.xcodeproj \
        -scheme OhSwifter \
        -sdk iphonesimulator \
        -destination 'platform=iOS Simulator,name=iPhone 11 pro,OS=13.0' 
    if [ $? != 0 ]; then
		echo "${RED}xcodebuild fail!\nㄅㄅ"
		exit 1
	fi
        # test | xcpretty --simple --report html
        # open ~/Documents/myProject/OhSwifter/OhSwifter/build/reports/tests.html
}

# Gitflow relsease
start_release() {

    printf "${YELLOW} [ Step 4 ] : Start release.${NC}\n"

    git checkout develop || exit $?
    git flow release start ${newVersion} || exit $?
}

# 修改 Info.plist
replace_info_plist() {

    printf "${YELLOW} [ Step 4-1 ] : Modify Info.plist version.${NC}\n"

    cd_and_print "${MainPath}"
    printf "replace ${GREEN}${currentVersion}${NC} -> ${GREEN}${newVersion}${NC}\n"
    plutil -replace CFBundleShortVersionString -string "${newVersion}" Info.plist
}

# 修改 .podspec
replace_pod_spec() {

    printf "${YELLOW} [ Step 4-2 ] : Modify OhSwift.podspec version.${NC}\n"

    cd_and_print ".."
    origin="s.version          = \'[0-9\.]+\'"
    new="s.version          = '${newVersion}'"
    sed -i "" -E "s/${origin}/${new}/g" "OhSwift.podspec" || exit $?
}

# stage and commit
stage_and_commit() {

    printf "${YELLOW} [ Step 4-3 ] : Stage and Commit.${NC}\n"

    git stage . || exit $?
    git commit -m "[ Add ] : Release v${newVersion}" || exit $?
}

# finish release
finish_release() {

    printf "${YELLOW} [ Step 4-4 ] : Finish release.${NC}\n"

    export GIT_MERGE_AUTOEDIT=no
    git flow release finish -m "" ${newVersion}
    unset GIT_MERGE_AUTOEDIT
    git checkout develop || exit $?
    git push origin --tags || exit $?
    git checkout master || exit $?
    git push origin --tags || exit $?
}

# pod lint & push
pod_lint_and_push() {

    printf "${YELLOW} [ Step 5 ] : pod spec lint.${NC}\n"
    pod spec lint
    if [ $? != 0 ]; then
        printf "${RED}[ error ] : pod spec lint.\nㄅㄅ${NC}\n"
        exit 1
    fi

    printf "${YELLOW} [ Step 5 ] : pod trunk push.${NC}\n"
    pod trunk push
    if [ $? != 0 ]; then
        printf "${RED}[ error ] : pod trunk push.\nㄅㄅ${NC}\n"
        exit 1
    fi
}

get_current_version
get_new_version
# build
start_release
replace_info_plist
replace_pod_spec
stage_and_commit
finish_release
pod_lint_and_push