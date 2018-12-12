//
//  RollViewController.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 12/11/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class RollSceneController: UIViewController {

    
    @IBOutlet var dieSKView: SKView!
    
    @IBOutlet var modifierLabel: UILabel!
    
    var die = SKSpriteNode()
    var scene = SKScene()
    
    var timer: Timer? = nil
    let dieRollingImageNameArray: [SKTexture] = [SKTexture(imageNamed: "rolling_1"), SKTexture(imageNamed: "rolling_2"), SKTexture(imageNamed: "rolling_3"), SKTexture(imageNamed: "rolling_4"), SKTexture(imageNamed: "rolling_5")]
    
    @IBAction func rollDieButtonPressed(_ sender: UIButton) {
        print("roll Die Button Pressed")
        rollDie()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scene.scaleMode = .aspectFill
        dieSKView.presentScene(scene)
        // Do any additional setup after loading the view.
    }
    
    
    func rollDie(){
        die = SKSpriteNode(imageNamed: "side_1")
        die.size = CGSize(width: 0.5, height:0.5)
        die.position = CGPoint(x: scene.frame.midX, y: scene.frame.midY + 0.1)
        scene.addChild(die)
        animateDie()
        
        
        }
        
    func animateDie(){
        let newTextureChange = SKAction.animate(withNormalTextures: dieRollingImageNameArray, timePerFrame: 1.0)
        die.run(SKAction.repeatForever(newTextureChange))
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
