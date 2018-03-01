//
//  ViewController.swift
//  Dicee
//
//  Created by Miyoshi Masataka on 2018/02/27.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    let rootView: RootView = {
       
        let rootView = RootView(frame: UIScreen.main.bounds)
        
        return rootView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        [rootView].forEach{ self.view.addSubview($0) }
        
        updateDiceImages()
        
    }
    
    // MARK: Actions
    
    @objc func rollButtonTapped(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    private func updateDiceImages() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        rootView.diceLeftImageView.image = diceArray[randomDiceIndex1]
        rootView.diceRightImageView.image = diceArray[randomDiceIndex2]
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }

}

















