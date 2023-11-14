//
//  Ex02.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/14/23.
//

import UIKit

class Ex02: UIViewController {
    
    var redView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    var greenView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(redView)
        redView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        view.addSubview(greenView)
        greenView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        greenView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        greenView.leadingAnchor.constraint(equalTo: redView.trailingAnchor, constant: 10).isActive = true
    }
}
