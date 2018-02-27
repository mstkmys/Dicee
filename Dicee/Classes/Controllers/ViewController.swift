//
//  ViewController.swift
//  Dicee
//
//  Created by Miyoshi Masataka on 2018/02/27.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let rootView: RootView = {
       
        let rootView = RootView(frame: UIScreen.main.bounds)
        
        return rootView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [rootView].forEach{ self.view.addSubview($0) }
        
    }

}

















