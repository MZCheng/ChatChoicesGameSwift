//
//  GameScene.swift
//  PutThemTogether
//
//  Created by 林雅明 on 11/11/18.
//  Copyright © 2018 Yaming. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    /*private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var anotherLabel: SKLabelNode?
    
    var chatOne = SKSpriteNode()
    var chatTwo = SKSpriteNode()
    var chatThree = SKSpriteNode()*/
    
    var first = SKSpriteNode()
    var second = SKSpriteNode()
    var third = SKSpriteNode()
    var fourth = SKSpriteNode()
    var fifth = SKSpriteNode()
    var sixth = SKSpriteNode()
    var seventh = SKSpriteNode()
    var eighth = SKSpriteNode()
    var ninth = SKSpriteNode()
    var tenth = SKSpriteNode()
    var eleven = SKSpriteNode()
    var twelve = SKSpriteNode()
    
    var label1 = SKLabelNode()
    var label2 = SKLabelNode()
    var label3 = SKLabelNode()
    var label4 = SKLabelNode()
    var label5 = SKLabelNode()
    var label6 = SKLabelNode()
    var label7 = SKLabelNode()
    var label8 = SKLabelNode()
    var label9 = SKLabelNode()
    var label10 = SKLabelNode()
    var label11 = SKLabelNode()
    var label12 = SKLabelNode()
    
    
    var chatBackgroundArray = [SKSpriteNode]()
    var chatTextArray = [SKLabelNode]()
    
    var touchPoint: CGPoint?
    var movedPoint: CGPoint?
    
    var firstInputField = SKLabelNode()
    var secondInputField = SKLabelNode()
    
    /*{
        didSet {
            if chatArray.count > 1 {
                for i in 1...chatArray.count-1 {
                    //chatArray[i].position.x = self.size.width/2
                    chatArray[i].position.y = chatArray[i-1].position.y - chatArray[i-1].size.height - 120
                }
            }
        }
    }*/
    
    
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        firstInputField.position = CGPoint(x: self.size.width/2, y: 150)
        secondInputField.position = CGPoint(x: self.size.width/2, y: 50)
        firstInputField.numberOfLines = 0
        
        firstInputField.zPosition = 2
        secondInputField.zPosition = 2
        secondInputField.numberOfLines = 0
        
        firstInputField.text = ""
        secondInputField.text = ""
        
        firstInputField.fontColor = UIColor.black
        secondInputField.fontColor = UIColor.black
        
        //firstInputField.fontSize = 84
        
        addChild(firstInputField)
        addChild(secondInputField)
        
        setArray()
        
        chatBackgroundArray[0].position.y = 700
        
        var i: Int = 0
        while i < chatBackgroundArray.count {
            if i != 0 {
                chatBackgroundArray[i].position.y = chatBackgroundArray[i-1].position.y - chatBackgroundArray[i-1].size.height - 80
            }
            //addChild(chatArray[i])
            i += 1
        }
        //print(chatArray.count)
    }
    
    func setProperties(label:SKLabelNode?) {
        //var label = SKLabelNode(fontNamed: "Helvetica")
        //label.text = "This is the \(labelShape?.name) label \n \(chatArray.count)"
        label!.numberOfLines = 0
        
        label!.fontColor = UIColor.blue
        label!.position = CGPoint(x: 20, y: 0)
        label!.verticalAlignmentMode = .top
        label!.horizontalAlignmentMode = .left
        //labelShape?.color = .red
        //labelShape?.size = CGSize(width: label.frame.width + 25, height: label.frame.height + 5)
        //labelShape!.anchorPoint = CGPoint(x: 0, y: 1)
        //labelShape!.position.x = 0
        label!.zPosition = 1
        
        //labelShape?.addChild(label)
    }
    
    func setBackground(labelShape: SKSpriteNode?,label: SKLabelNode) {
        //labelShape?.texture = SKTexture(imageNamed: "myCat")
        labelShape?.color = .gray
        labelShape?.size = CGSize(width: label.frame.width + 25, height: label.frame.height + 5)
        labelShape!.anchorPoint = CGPoint(x: 0, y: 1)
        labelShape!.position.x = 0
        labelShape?.addChild(label)
    }
    
    func  setArray() {
        
        
        /*setProperties(label: label1)
        //label1.text = "hkaghr"
        setProperties(label: label2)
        //label2.text = "eqtjreti"
        setProperties(label: label3)
        //label3.text = "hrehgieqgi"
        setBackground(labelShape: first, label: label1)
        setBackground(labelShape: second, label: label2)
        setBackground(labelShape: third, label: label3)*/
        //var labelll = SKLabelNode(text:)
        
        chatTextArray.append(label1)
        chatTextArray.append(label2)
        chatTextArray.append(label3)
        chatTextArray.append(label4)
        chatTextArray.append(label5)
        chatTextArray.append(label6)
        chatTextArray.append(label7)
        chatTextArray.append(label8)
        chatTextArray.append(label9)
        chatTextArray.append(label10)
        chatTextArray.append(label11)
        chatTextArray.append(label12)
        
        chatBackgroundArray.append(first)
        chatBackgroundArray.append(second)
        chatBackgroundArray.append(third)
        chatBackgroundArray.append(fourth)
        chatBackgroundArray.append(fifth)
        chatBackgroundArray.append(sixth)
        chatBackgroundArray.append(seventh)
        chatBackgroundArray.append(eighth)
        chatBackgroundArray.append(ninth)
        chatBackgroundArray.append(tenth)
        chatBackgroundArray.append(eleven)
        chatBackgroundArray.append(twelve)
    }
    
    override func didMove(to view: SKView) {
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        touchPoint = pos
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        movedPoint = pos
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            touchPoint = touch.location(in: self)
            touchDown(atPoint: touch.location(in: self))
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            touchMoved(toPoint: touch.location(in: self))
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
}
