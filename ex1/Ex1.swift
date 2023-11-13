//
//  Ex1.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/13/23.
//

import UIKit

class Ex1: UIViewController {
    
    var newLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var secondLabel: UILabel = {
        let labels = UILabel()
        labels.text = "World"
        labels.textAlignment = .center
        labels.translatesAutoresizingMaskIntoConstraints = false
        return labels
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(newLabel)
        newLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        newLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        view.addSubview(secondLabel)
        secondLabel.leadingAnchor.constraint(equalTo: newLabel.leadingAnchor, constant: 60).isActive = true
        secondLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

}
