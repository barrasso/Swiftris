//
//  GameScene.swift
//  Swiftris
//
//  Created by Mark on 12/22/14.
//  Copyright (c) 2014 MEB. All rights reserved.
//

import SpriteKit

let TickLengthLevelOne = NSTimeInterval(600)

class GameScene: SKScene
{
    var tick:(() -> ())?
    var tickLengthMillis = TickLengthLevelOne
    var lastTick:NSDate?
   
    override func update(currentTime: CFTimeInterval)
    {
        /* Called before each frame is rendered */
        if lastTick == nil {
            return
        }
        var timePassed = lastTick!.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis {
            lastTick = NSDate()
            tick?()
        }
    }
    
    func startTicking() {
        lastTick = NSDate()
    }
    
    func stopTicking() {
        lastTick = nil
    }
    
    required init(coder aDecoder: NSCoder)
    {
        fatalError("Coder not supported")
    }
    
    override init(size: CGSize)
    {
        // init size
        super.init(size: size)
        
        // set anchor
        anchorPoint = CGPoint (x: 0, y: 1.0)
        
        // background setup
        let background = SKSpriteNode (imageNamed: "background")
        background.position = CGPoint (x: 0, y: 0)
        background.anchorPoint = CGPoint (x: 0, y: 1.0)
        addChild(background)
    }
}
