//
//  TeamTableViewCell.swift
//  SampleUIKit
//
//  Created by 강치우 on 11/19/23.
//

import UIKit

class TeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    private lazy var containerVw: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.layer.shadowOffset = CGSize(width: 5, height: 5)
        vw.layer.shadowOpacity = 0.7
        vw.layer.shadowRadius = 5
        vw.layer.shadowColor = UIColor.gray.cgColor
        vw.layer.opacity = 0.9
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
       let stackVwv = UIStackView()
        stackVwv.translatesAutoresizingMaskIntoConstraints = false
        stackVwv.spacing = 6
        stackVwv.axis = .vertical
        return stackVwv
    }()
    
    private lazy var propileImgvW: UIImageView = {
        let imgVw = UIImageView()
        imgVw.translatesAutoresizingMaskIntoConstraints = false
        imgVw.contentMode = .scaleAspectFit
        imgVw.layer.cornerRadius = 30
        imgVw.clipsToBounds = true
        return imgVw
    }()
    
    private lazy var playbackBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.tintColor = .white
        return btn
    }()
    
    private lazy var nameLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0 // 디폴트 값이 1이라서 0으로 안해주면 두 줄 이상 텍스트는 잘림
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var heightLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var mbtiLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 10, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var ageLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var foundedLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var infoLbl: UILabel = {
       let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .medium)
        lbl.textColor = .white
        return lbl
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerVw.layer.cornerRadius = 10
    }
    
    func configure(with item: Team) {
        
        containerVw.backgroundColor = item.id.propile
        
        propileImgvW.image = item.id.picture
        playbackBtn.setImage(UIImage(systemName: "paperplane"), for: .normal)
        
        nameLbl.text = item.name
        ageLbl.text = "나이 : \(item.age)"
        foundedLbl.text = item.founded
        heightLbl.text = "키 : \(item.height)"
        mbtiLbl.text = item.mbti
        infoLbl.text = item.info
        
        self.contentView.addSubview(containerVw)
        
        containerVw.addSubview(contentStackVw)
        containerVw.addSubview(propileImgvW)
        containerVw.addSubview(playbackBtn)
        
        contentStackVw.addArrangedSubview(nameLbl)
        contentStackVw.addArrangedSubview(ageLbl)
        contentStackVw.addArrangedSubview(foundedLbl)
        contentStackVw.addArrangedSubview(heightLbl)
        contentStackVw.addArrangedSubview(mbtiLbl)
        contentStackVw.addArrangedSubview(infoLbl)
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -16),
            
            propileImgvW.heightAnchor.constraint(equalToConstant: 60),
            propileImgvW.widthAnchor.constraint(equalToConstant: 60),
            propileImgvW.topAnchor.constraint(equalTo: contentStackVw.topAnchor),
            propileImgvW.leadingAnchor.constraint(equalTo: containerVw.leadingAnchor, constant: 8),
            
            contentStackVw.topAnchor.constraint(equalTo: containerVw.topAnchor, constant: 16),
            contentStackVw.bottomAnchor.constraint(equalTo: containerVw.bottomAnchor, constant: -16),
            contentStackVw.leadingAnchor.constraint(equalTo: propileImgvW.trailingAnchor, constant: 8),
            contentStackVw.trailingAnchor.constraint(equalTo: playbackBtn.leadingAnchor, constant: -8),
            
            playbackBtn.heightAnchor.constraint(equalToConstant: 44),
            playbackBtn.widthAnchor.constraint(equalToConstant: 44),
            playbackBtn.trailingAnchor.constraint(equalTo: containerVw.trailingAnchor, constant: -8),
            playbackBtn.topAnchor.constraint(equalTo: containerVw.topAnchor, constant: 10)
            
        ])
        
    }
}
