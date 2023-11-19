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
        imgVw.layer.cornerRadius = 25
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
    
    func configure() {
        
        containerVw.backgroundColor = TeamType.minji.propile
        
        propileImgvW.image = TeamType.minji.picture
        playbackBtn.setImage(UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)), for: .normal)
        
        nameLbl.text = "민지"
        ageLbl.text = "19"
        heightLbl.text = "164"
        mbtiLbl.text = "sdaf"
        foundedLbl.text = "1000d 30d 30"
        infoLbl.text = "강원도 춘천시에서 태어나 중학교 1학년까지 살았다. 초등학생 시절엔 몇 개월 동안 캐나다 캠프를 갔었고 당시 홈스테이를 했었다. 평소 영어를 공부하는 것을 좋아했어서 연습생이 되기 전에는 외국어고등학교 진학을 준비하기도 했다. 그래서 영어를 잘한다. 실용음악 학원에 기타 수강생으로 다니다가 학원의 추천으로 지원한 쏘스뮤직 내방 오디션에서 TWICE의 SIGNAL을 추고 합격하여 연습생이 되었다. 연습생 생활을 위해 서울에 있는 신사중학교로 전학을 갔는데 당시 학교에 엄청 예쁜 학생이 전학을 왔다고 소문이 나서 난리였다고 한다. 중학교 동창에 의하면 성격도 좋았다고 한다. 2017년 중학교 1학년 때부터 약 4년 동안 쏘스뮤직과 어도어에서 연습생으로 생활하였다. 2019년 9월 빅히트 엔터테인먼트, 쏘스뮤직이 민희진과 합작해 진행한 플러스 글로벌 오디션의 공고 포스터와 홍보 영상1, 영상2에 출연했다. NewJeans 데뷔조에도 가장 먼저 합류했다고 한다."
        
        self.contentView.addSubview(containerVw)
        
        containerVw.addSubview(contentStackVw)
        containerVw.addSubview(propileImgvW)
        containerVw.addSubview(playbackBtn)
        
        contentStackVw.addArrangedSubview(nameLbl)
        contentStackVw.addArrangedSubview(ageLbl)
        contentStackVw.addArrangedSubview(heightLbl)
        contentStackVw.addArrangedSubview(mbtiLbl)
        contentStackVw.addArrangedSubview(foundedLbl)
        contentStackVw.addArrangedSubview(infoLbl)
        
        NSLayoutConstraint.activate([
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8),
            
            propileImgvW.heightAnchor.constraint(equalToConstant: 50),
            propileImgvW.widthAnchor.constraint(equalToConstant: 50),
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
