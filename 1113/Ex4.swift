//
//  Ex4.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/13/23.
//

import UIKit

class Ex4: UIViewController {
    
    var newButton: UIButton = {
        let button = UIButton()
        button.setTitle("Tap me", for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(newButton)
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        newButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        newButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
