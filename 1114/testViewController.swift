//
//  testViewController.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/14/23.
//

import UIKit

class testViewController: UIViewController {
    
     lazy var contentScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()

    lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var ImageView1: UIImageView = {
        let view = UIImageView(image: UIImage(named: "one"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var ImageView2: UIImageView = {
        let view = UIImageView(image: UIImage(named: "two"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(contentScrollView)
        contentScrollView.addSubview(contentView)
        contentView.addSubview(ImageView1)
        contentView.addSubview(ImageView2)// Add ImageView1 to contentView

        func setUpUIConstraints() {
            NSLayoutConstraint.activate([
                contentScrollView.topAnchor.constraint(equalTo: view.topAnchor),
                contentScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                contentScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                contentScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

                contentView.topAnchor.constraint(equalTo: contentScrollView.topAnchor),
                contentView.leadingAnchor.constraint(equalTo: contentScrollView.leadingAnchor, constant: 20),
                contentView.trailingAnchor.constraint(equalTo: contentScrollView.trailingAnchor, constant: -20),
                contentView.bottomAnchor.constraint(equalTo: contentScrollView.bottomAnchor),

                ImageView1.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 150),
                ImageView1.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
                ImageView1.widthAnchor.constraint(equalToConstant: 100), // Adjust width as needed
                ImageView1.heightAnchor.constraint(equalToConstant: 200), // Adjust height as needed
                
                ImageView2.topAnchor.constraint(equalTo: ImageView1.bottomAnchor, constant: 500),
                ImageView2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 150),
                ImageView2.widthAnchor.constraint(equalToConstant: 100), // Adjust width as needed
                ImageView2.heightAnchor.constraint(equalToConstant: 200), // Adjust height as needed
                
                ImageView2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ])
        }

        setUpUIConstraints()

        // Set the content size of the scrollView to the size of the contentView
        contentScrollView.contentSize = contentView.bounds.size
    }
}
