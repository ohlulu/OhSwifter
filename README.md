# OhSwifter

![latest version](https://img.shields.io/cocoapods/v/OhSwifter)![license](https://img.shields.io/github/license/z30262226/OhSwifter)![platform](https://img.shields.io/cocoapods/p/OhSwifter)

A convenience Swift extension and initial

## Request

* iOS 11.0+
* Xcode 10.0+
* Swift 5.0+

## Install

OhSwifter available through [Cocoapods](http://cocoapods.org), simply add the following line to your Podfile:

```
pod 'OhSwifter'
```



## Why use OhSwifter?

#### 1. UILabel

###### Before

```swift
private let label: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
    label.textColor = .gray
    label.textAlignment = .left
    label.text = "Label Wording"
    label.numberOfLines = 0
    return label
}()
```

* Type `label` seven times. 😱
* `let lable = UILabel()` and `return label` looks a bit redundant.

> It too much and too long to me.

###### After

```swift
private let ohLabel = UILabel().oh
    .style(font: UIFont.systemFont(ofSize: 12, weight: .medium), color: .gray)
    .textAlignment(.left)
    .text("Label Wording")
    .numberOfLines(0)
    .done()
```

* First, less to define property type. Ex: `label: UILabel`.
* Second, use `oh` wrapper for namespacing, can distinguish origin function or property, and less smart reminder type.

> Note: `.dnoe()` is must. Although I think this is a bit redundant, But there is no better idea at the moment.



#### 2. UIButton

###### Before

```Swift
private let button: UIButton = {
    let button = UIButton()
    button.setTitle("Button Wording", for: .normal)
    button.setTitleColor(.black, for: .normal)
    button.setTitleColor(.gray, for: .highlighted)
    button.layer.cornerRadius = 12
    button.layer.borderColor = UIColor.darkGray.cgColor
    button.layer.borderWidth = 1
    return button
}()
```

* Type `button` eight times. 😱
* `let button = UIButton()` and `return button` redundant like UILabel.
* type `.layer` twice.

###### After

```Swift
private let ohButton = UIButton().oh
    .title("Button Wording", for: .normal)
    .titleColor(.black, for: .normal)
    .titleColor(.gray, for: .normal)
    .cornerRadius(12)
    .border(color: .darkGray, width: 1)
    .done()
```

* Need not to type any `button`.
* Need not to type any layer
* Border color and width mergi to on function to call



#### 3. Custom

If you don't find style setting on initialized after `oh`, open an [issue](https://github.com/z30262226/OhSwifter/issues). or yout can use `createConfigurator.`

like this:

```swift
.createConfigurator { (button) in
    // ...
}
```

[My Website](https://www.ohlulu.tw/2019/08/13/ohswifterframework/)

## License

OhSwifter is released under the MIT license. See LICENSE for details.

