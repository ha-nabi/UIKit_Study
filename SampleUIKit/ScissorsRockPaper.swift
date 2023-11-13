//
//  ScissorsRockPaper.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/13/23.
//

import UIKit

class ScissorsRockPaper: UIViewController {
    
    let gameImageNameData: [InputState] = [.paper, .rock, .scissors]
    
    enum InputState: String {
        case scissors
        case rock
        case paper
    }

    lazy var playStackView: UIStackView = {
        let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
    }()
    
    lazy var computerGameImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var myGameImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var gameResultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "결과는?"
        return label
    }()
    
    lazy var playerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Player?"
        return label
    }()
    
    lazy var computerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Computer?"
        return label
    }()
    
    lazy var inputStackView: UIStackView = {
        let stackView = UIStackView()
            stackView.axis = .horizontal
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
    }()
    
    lazy var scissoursButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("가위", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var rockButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("바위", for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 15
        return button
    }()
    
    lazy var paperButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("보", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 15
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
        
        playStackView.addArrangedSubview(computerGameImageView)
        playStackView.addArrangedSubview(myGameImageView)
        
        view.addSubview(gameResultLabel)
        gameResultLabel.topAnchor.constraint(equalTo: playStackView.bottomAnchor, constant: 20).isActive = true
        gameResultLabel.centerXAnchor.constraint(equalTo: playStackView.centerXAnchor).isActive = true
        
        view.addSubview(computerLabel)
        computerLabel.bottomAnchor.constraint(equalTo: playStackView.topAnchor, constant: 20).isActive = true
        computerLabel.leadingAnchor.constraint(equalTo: playStackView.leadingAnchor, constant: 50).isActive = true
        
        view.addSubview(playerLabel)
        playerLabel.bottomAnchor.constraint(equalTo: playStackView.topAnchor, constant: 20).isActive = true
        playerLabel.trailingAnchor.constraint(equalTo: playStackView.trailingAnchor, constant: -60).isActive = true
        
        view.addSubview(inputStackView)
        inputStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        inputStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        inputStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -130).isActive = true
        inputStackView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        inputStackView.addArrangedSubview(scissoursButton)
        inputStackView.addArrangedSubview(rockButton)
        inputStackView.addArrangedSubview(paperButton)
        
        scissoursButton.addTarget(self, action: #selector(didTapChangeGameImageButton), for: .touchUpInside)
        rockButton.addTarget(self, action: #selector(didTapChangeGameImageButton2), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(didTapChangeGameImageButton3), for: .touchUpInside)
    }
    
    @objc func didTapChangeGameImageButton() {
        myGameImageView.image = UIImage(named: "scissors")
        let randomInput = gameImageNameData.randomElement()!
        computerGameImageView.image = UIImage(named: randomInput.rawValue) // rawValue는 이넘 String 값임.
        
        gameResultLabel.text = fetchGameResult(myInput: .scissors, computerInput: randomInput)
    }
    @objc func didTapChangeGameImageButton2() {
        myGameImageView.image = UIImage(named: "rock")
        let randomInput = gameImageNameData.randomElement()!
        computerGameImageView.image = UIImage(named: randomInput.rawValue)
        
        gameResultLabel.text = fetchGameResult(myInput: .rock, computerInput: randomInput)
    }
    @objc func didTapChangeGameImageButton3() {
        myGameImageView.image = UIImage(named: "paper")
        let randomInput = gameImageNameData.randomElement()!
        computerGameImageView.image = UIImage(named: randomInput.rawValue)
        
        gameResultLabel.text = fetchGameResult(myInput: .paper, computerInput: randomInput)
    }
    
    private func fetchGameResult(myInput: InputState, computerInput: InputState) -> String {
        // 내가 낸 값, 컴퓨터의 값
        switch myInput {
        case .scissors:
            switch computerInput {
            case .scissors:
                return "비김"
            case .rock:
                return "짐"
            case .paper:
                return "이김"
            }
        case .rock:
            switch computerInput {
            case .scissors:
                return "이김"
            case .rock:
                return "비김"
            case .paper:
                return "짐"
            }
        case .paper:
            switch computerInput {
            case .scissors:
                return "짐"
            case .rock:
                return "이김"
            case .paper:
                return "비김"
            }
        }
    }
}
