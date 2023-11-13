//
//  Ex2.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/13/23.
//

import UIKit

class Ex2: UIViewController {
    
    var myLabel: UILabel = {
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
        
        view.addSubview(myLabel)
        myLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(secondLabel)
        secondLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        secondLabel.trailingAnchor.constraint(equalTo: myLabel.trailingAnchor, constant: 60).isActive = true

    }
}
