//
//  Ex3.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/13/23.
//

import UIKit

class Ex3: UIViewController {
    
    var newImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var newLabel: UILabel = {
        let labelView = UILabel()
        labelView.text = "AutoLayout"
        labelView.textAlignment = .center
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(newImage)
        newImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        newImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        newImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 45).isActive = true
        newImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(newLabel)
        newLabel.topAnchor.constraint(equalTo: newImage.bottomAnchor, constant: 20).isActive = true
        newLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
