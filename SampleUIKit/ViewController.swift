//
//  ViewController.swift
//  SampleUIKit
//
//  Created by 강치우 on 10/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didButtonClick(_ sender: Any) {
        nameLabel.text = "Hi, Chiwoo!"
        print("Hello")
    }
}

