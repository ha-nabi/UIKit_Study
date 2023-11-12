//
//  SecondViewController.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/12/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    let diceImageNameData = ["one", "two", "three", "four", "five", "six"]
    
    lazy var doubleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "주사위를 굴려주세요!"
        return label
    }()
    
    lazy var playStackView: UIStackView = {
        let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
    }()
    
    lazy var diceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var secondDiceImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var ChangeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false // 우리가 이제 오토레이아웃을 코드로 쓸거다 라고 코드로 적는 부분
        button.setTitle("변경해주세요", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 20
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        view.addSubview(playStackView)
        playStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        playStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        playStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        playStackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        playStackView.addArrangedSubview(diceImageView)
        playStackView.addArrangedSubview(secondDiceImageView)
        
        view.addSubview(doubleLabel)
        doubleLabel.topAnchor.constraint(equalTo: playStackView.bottomAnchor, constant: 30).isActive = true
        doubleLabel.centerXAnchor.constraint(equalTo: playStackView.centerXAnchor).isActive = true
        
        view.addSubview(ChangeButton)
        ChangeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        ChangeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ChangeButton.bottomAnchor.constraint(equalTo: diceImageView.bottomAnchor, constant: 300).isActive = true
        ChangeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        ChangeButton.addTarget(self, action: #selector(didTapChangeDiceImageButton), for: .touchUpInside)
    }
    
    @objc func didTapChangeDiceImageButton() {
        let firstDice = diceImageNameData.randomElement() ?? "one"
        let secondDice = diceImageNameData.randomElement() ?? "one"
        diceImageView.image = UIImage(named: firstDice)
        secondDiceImageView.image = UIImage(named: secondDice)
        
        if firstDice == secondDice {
            doubleLabel.text = "더블!"
        } else {
            doubleLabel.text = "다시 굴려주세요!"
        }
    }
}
