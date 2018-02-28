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
        imageView.contentMode = .scaleToFill
        
        return imageView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [bg, logoImageView].forEach{ self.addSubview($0) }
        
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
            padding: .init(top: 50, left: 50, bottom: 0, right: 50  ),
            size: .init(width: 0, height: self.frame.size.height / 5)
        )
        
    }

}










