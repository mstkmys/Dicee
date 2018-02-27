//
//  RootView.swift
//  Dicee
//
//  Created by Miyoshi Masataka on 2018/02/28.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class RootView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
    }

}
