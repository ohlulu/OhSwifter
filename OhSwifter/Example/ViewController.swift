//
//  ViewController.swift
//  Example
//
//  Created by ohlulu on 2019/7/29.
//  Copyright © 2019 ohlulu. All rights reserved.
//

import UIKit
import OhSwifter

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table)
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

