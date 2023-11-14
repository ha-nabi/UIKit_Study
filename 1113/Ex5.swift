//
//  Ex5.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/13/23.
//

import UIKit

class Ex5: UIViewController {
    
    var redView: UIView = {
        let redView = UIView()
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
        return redView
    }()
    
    var greenView: UIView = {
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        return greenView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        view.addSubview(redView)
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        redView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true

        view.addSubview(greenView)
        greenView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: redView.trailingAnchor).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        greenView.heightAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
    }
}
