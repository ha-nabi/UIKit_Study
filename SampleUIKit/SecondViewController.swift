//
//  SecondViewController.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/12/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    let diceImageNameData = ["one", "two", "three", "four", "five", "six"]
    
    lazy var diceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var ChangeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false // 우리가 이제 오토레이아웃을 코드로 쓸거다 라고 코드로 적는 부분
        button.setTitle("변경해주세요", for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(diceImageView)
        
        diceImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        diceImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        diceImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        diceImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(ChangeButton)
        ChangeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        ChangeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ChangeButton.topAnchor.constraint(equalTo: diceImageView.bottomAnchor, constant: 200).isActive = true
        ChangeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        ChangeButton.addTarget(self, action: #selector(didTapChangeDiceImageButton), for: .touchUpInside)
    }
    
    @objc func didTapChangeDiceImageButton() {
        diceImageView.image = UIImage(named: diceImageNameData.randomElement() ?? "one")
    }
}
