//
//  GameViewController.swift
//  Swiftris
//
//  Created by Mark on 12/22/14.
//  Copyright (c) 2014 MEB. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController
{
    var scene : GameScene!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    
        // view config
        let skView = view as SKView
        skView.multipleTouchEnabled = false
     
        // create and config the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        // present the scene
        skView.presentScene(scene)
    }
}

    func prefersStatusBarHidden() -> Bool
    {
        return true
    }
