//
//  RootView.swift
//  Dicee
//
//  Created by Miyoshi Masataka on 2018/02/28.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class RootView: UIView {
    
    let bg: UIImageView = {
       
        let imageView = UIImageView()
        imageView.image = UIImage(named: "newbackground")
        
        return imageView
        
    }()
    
    let logoImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.image = UIImage(named: "diceeLogo")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
    
    let diceLeftImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice1")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
    
    let diceRightImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "dice1")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
    
    let rollButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Roll", for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.backgroundColor = .black
        
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [bg, logoImageView, diceLeftImageView, diceRightImageView, rollButton].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        bg.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor
        )
        
        logoImageView.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: self.trailingAnchor,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0 ),
            size: .init(width: 0, height: self.frame.size.height / 5)
        )
        
        diceLeftImageView.anchor(
            top: logoImageView.bottomAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 50, left: 0, bottom: 0, right: 0),
            size: .init(width: self.frame.size.width / 2, height: self.frame.size.height / 5)
        )
        
        diceRightImageView.anchor(
            top: diceLeftImageView.topAnchor,
            leading: diceLeftImageView.trailingAnchor,
            bottom: nil,
            trailing: self.trailingAnchor
        )
        diceRightImageView.anchorSize(to: diceLeftImageView)
        
        rollButton.anchor(
            top: nil,
            leading: nil,
            bottom: self.bottomAnchor,
            trailing: nil,
            padding: .init(top: 0, left: 0, bottom: 50, right: 0),
            size: .init(width: self.frame.size.width / 2, height: 80)
        )
        rollButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }

}










