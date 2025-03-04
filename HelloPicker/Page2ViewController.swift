//
//  Page2ViewController.swift
//  HelloPicker
//
//  Created by DannyShen on 2025/3/2.
//

import UIKit

class Page2ViewController: UIViewController {
    var ast = ""
    var bld = ""

    @IBOutlet weak var theLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        theLabel.text = "\(ast) \(bld) 今天的運氣是..... "
    }
    

}
