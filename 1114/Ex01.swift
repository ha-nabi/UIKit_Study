//
//  Ex01.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/14/23.
//

import UIKit

class Ex01: UIViewController {
    
    var newImage: UIImageView = {
        let image = UIImageView(image: UIImage(named: "one"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(newImage)
        newImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        newImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        newImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
}
