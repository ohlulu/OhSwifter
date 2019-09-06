//
//  ViewController.swift
//  Example
//
//  Created by ohlulu on 2019/7/29.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit
import OhSwifter

enum AppFont: RawRepresentable {
    
    case en(_ weight: UIFont.Weight, _ size: CGFloat)
    case zh(_ weight: UIFont.Weight, _ size: CGFloat)
    init?(rawValue: UIFont) {
        return nil
    }
    var rawValue: UIFont {
        switch self {
        case .en(let weight, let size):
            return UIFont(name: "HelveticaNeue-\(weight.rawValue)", size: size)!
        case .zh(let weight, let size):
            return UIFont(name: "Helvetica-\(weight.rawValue)", size: size)!
        }
    }
}


class ViewController: UIViewController {
    
    lazy var table = UITableView().oh
        .frame(CGRect(x: 0, y: 0, width: 100, height: 400))
        .dataSource(self)
        .delegate(self)
        .done()
    
    lazy var scrollView = UIScrollView().oh
        .delegate(self)
        .done()
    
    let textField = UITextField().oh
        .textColor(.blue)
        .done()
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = .gray
        label.text = "Label Wording"
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    
    private let ohLabel = UILabel().oh
        .font(UIFont.systemFont(ofSize: 12, weight: .medium), color: .gray)
        .textAlignment(.left)
        .text("Label Wording")
        .numberOfLines(0)
        .done()
    
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
    
    private let ohButton = UIButton().oh
        .title("Button Wording", for: .normal)
        .titleColor(.black, for: .normal)
        .titleColor(.gray, for: .normal)
        .cornerRadius(12)
        .border(color: .darkGray, width: 1)
        .createConfigurator { (button) in
            // ...
        }.done()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(table)
//        UIColor.red.createImage()
        let imageView = UIImageView(image: .create(from: .red))
        imageView.frame = .init(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(imageView)
    }
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}

