//
//  FirstScene.swift
//  PutThemTogether
//
//  Created by 林雅明 on 11/11/18.
//  Copyright © 2018 Yaming. All rights reserved.
//

import SpriteKit
import GameplayKit

class FirstScene: GameScene {
    
    var labelCollect = SKNode()
    var offSet: CGFloat = 0
    
    //var couldMoveToNextStep = false
    
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        //print("hello world")
        
        labelCollect.position = CGPoint(x: 0, y: 0)
        
        backgroundColor = .white
        
        setLabelText()
        //setProperties(label: label1)
        //label1.text = "hkaghr"
        //setProperties(label: label2)
        //label2.text = "eqtjreti"
        //setProperties(label: label3)
        //label3.text = "hrehgieqgi"
        //setBackground(labelShape: first, label: label1)
        //setBackground(labelShape: second, label: label2)
        //setBackground(labelShape: third, label: label3)
        
        addChild(labelCollect)
        
        /*labelCollect.run(SKAction.sequence([
            SKAction.run {
                self.addChild(self.first)
            },
            SKAction.wait(forDuration: 2.0),
            SKAction.run {
                self.addChild(self.second)
            }
            ]))*/
        
        //var i: Int = 0
        
        //repeat {
            /*labelCollect.run(SKAction.sequence([SKAction.run {
                self.addChild(self.chatBackgroundArray[0])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[1])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[2])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[3])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[4])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[5])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[6])
                },SKAction.wait(forDuration: 1.5),
                  SKAction.run {
                    self.addChild(self.chatBackgroundArray[7])
                },SKAction.wait(forDuration: 1.5)]))*/
        
        
       /* labelCollect.run(SKAction.sequence([SKAction.run {
            self.addChild(self.chatBackgroundArray[1])
            },SKAction.wait(forDuration: 1.5)]))*/
            
            //i += 1
        //} while i < chatBackgroundArray.count-1
        
        /*while i < chatBackgroundArray.count {
            labelCollect.run(SKAction.sequence([SKAction.run {
                self.addChild(self.chatBackgroundArray[i])
                },
                SKAction.wait(forDuration: 1.5)]))
            if chatBackgroundArray[i].position.y < 400 {
                labelCollect.position.y += 80
                offSet += 80
                
                i += 1
            }
            
        }*/
        for i in 0...2 {
            
            labelCollect.run(SKAction.sequence([SKAction.wait(forDuration: 1.5*Double(i)),
                SKAction.run {
                    self.addEachNode(labelNode: self.chatBackgroundArray[i])
                }]))
            //labelCollect.addChild(chatBackgroundArray[i])
            
            /*if chatBackgroundArray[i].position.y < 400 {
                labelCollect.position.y += 80
                offSet += 80
            }*/
            //print(touchPoint)
        }
        
        //print(touchPoint)
       
        self.run(SKAction.sequence([
            SKAction.wait(forDuration: 1.5*3),
            SKAction.group([SKAction.run {
                self.firstInputField.text = "Hello"
                },
                            SKAction.run {
                                self.secondInputField.text = "World"
                }])
            ]))
        guard touchPoint != nil else {
            print(touchPoint)
            return
        }
        //print("Have touched.")
        /*if firstInputField.position == touchPoint! {
            label4.text = firstInputField.text
            fourth.position.x = self.size.width
            label4.horizontalAlignmentMode = .right
            addEachNode(collection: labelCollect, labelNode: fourth)
            print("First")
        }*/
       /* else if secondInputField.contains(touchPoint!) {
            label4.text = secondInputField.text
            fourth.position.x = self.size.width
            label4.horizontalAlignmentMode = .right
            addEachNode(collection: labelCollect, labelNode: fourth)
            print("Second")
        }*/
    
    }
    
    func addEachNode(labelNode: SKSpriteNode) {
        
        if labelNode.position.y < 300 {
            labelCollect.position.y += 100
            offSet += 100
            
            //print("This is \(labelCollect.children)")
        }
        
        labelCollect.addChild(labelNode)
        //print(labelCollect.children)
    }
    
    func setLabelText() {
        
        label1.text = "First label"
        label2.text = "Second label"
        label3.text = "Third label"
        label4.text = "Fourth label"
        label5.text = "Fifth label"
        label6.text = "Sixth label"
        label7.text = "Seven label"
        label8.text = "Eighth label"
        
        for i in 0...chatTextArray.count-1 {
            setProperties(label:chatTextArray[i])
            setBackground(labelShape: chatBackgroundArray[i], label: chatTextArray[i])
        }
    }
    
    override func touchMoved(toPoint pos: CGPoint) {
        super.touchMoved(toPoint: pos)
        
        //guard labelCollect.position.y >= -offSet else { return }
        
            if touchPoint!.y > movedPoint!.y {
                
                //print(touchPoint)
            //labelCollect.position.y = (labelCollect.position.y) - ((touchPoint?.y)! - (movedPoint?.y)!)
                
                labelCollect.position.y = CGFloat.maximum(0, (labelCollect.position.y) - ((touchPoint?.y)! - (movedPoint?.y)!))
                //ar offset1 = CGFloat.minimum(offSet, (labelCollect.position.y) - ((touchPoint?.y)! - (movedPoint?.y)!))
                
            }
            else {
                labelCollect.position.y = CGFloat.minimum((labelCollect.position.y) + ((movedPoint?.y)! - (touchPoint?.y)!),offSet)
                
                //var offset2 = CGFloat.maximum(<#T##x: CGFloat##CGFloat#>, <#T##y: CGFloat##CGFloat#>)
                
                
            }
        
    }
    
    override func touchDown(atPoint pos: CGPoint) {
        super.touchDown(atPoint: pos)
        
        for i in 1...chatBackgroundArray.count {
            //print(labelCollect.children)
            if chatBackgroundArray[i-1] == labelCollect.children.last {
                if firstInputField.contains(pos) {
                    chatTextArray[i].text = firstInputField.text
                    chatBackgroundArray[i].size = CGSize(width: chatTextArray[i].frame.width + 25, height: chatTextArray[i].frame.height + 5)
                    chatBackgroundArray[i].position.x = self.size.width - 20 - chatTextArray[i].frame.size.width
                    
                    addEachNode(labelNode: chatBackgroundArray[i])
                    
                    firstInputField.text = ""
                    secondInputField.text = ""
                }
                
                else if secondInputField.contains(pos) {
                    chatTextArray[i].text = secondInputField.text
                    chatBackgroundArray[i].size = CGSize(width: chatTextArray[i].frame.width + 25, height: chatTextArray[i].frame.height + 5)
                    chatBackgroundArray[i].position.x = self.size.width - 20 - chatBackgroundArray[i].size.width
                    
                    addEachNode(labelNode: chatBackgroundArray[i])
                    
                    firstInputField.text = ""
                    secondInputField.text = ""
                }
            }
        }
        
        /*if firstInputField.contains(pos) {
            label4.text = firstInputField.text
            fourth.size = CGSize(width: label4.frame.width + 25, height: label4.frame.height + 5)
            fourth.position.x = self.size.width - 20 - fourth.size.width
            //label4.horizontalAlignmentMode = .right
            
            addEachNode(collection: labelCollect, labelNode: fourth)
            
            firstInputField.text = ""
            secondInputField.text = ""
        }
        
        else if secondInputField.contains(pos) {
            label4.text = secondInputField.text
            fourth.size = CGSize(width: label4.frame.width + 25, height: label4.frame.height + 5)
            fourth.position.x = self.size.width - 20 - fourth.size.width
            
            
            addEachNode(collection: labelCollect, labelNode: fourth)
            
            firstInputField.text = ""
            secondInputField.text = ""
        }*/
        
        /*guard labelCollect.children.last == fourth else { return }
        
        for i in 4...6 {
            labelCollect.run(SKAction.sequence([
                SKAction.wait(forDuration: 1.5*Double((i-3))),
                SKAction.run {
                    self.addEachNode(labelNode: self.chatBackgroundArray[i])
                }]))
        }*/
        
        if labelCollect.children.last == chatBackgroundArray[3] {
            for i in 4...6 {
                runSequence(i: i, j: 3)
            }
        }
        
        if labelCollect.children.last == chatBackgroundArray[7] {
            for i in 8...9 {
                runSequence(i: i, j: 7)
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        super .update(currentTime)
        
        if labelCollect.children.last == chatBackgroundArray[6] {
            firstInputField.text = "Ni hao ma"
            secondInputField.text = "Wo hen hao \n ni ne?"
        }
        
        if labelCollect.children.last == chatBackgroundArray[9] {
            firstInputField.text = "Wo shi xiaobaobao"
            secondInputField.text = "Ni shi yi zhi mao"
        }
        
        if labelCollect.children.last == chatBackgroundArray[10] {
            firstInputField.text = "This is the last one"
            secondInputField.text = "Really the last try"
        }
    }
    
    func runSequence(i: Int, j: Int) {
        labelCollect.run(SKAction.sequence([
            SKAction.wait(forDuration: 1.5*Double(i-j)),
            SKAction.run {
                self.addEachNode(labelNode: self.chatBackgroundArray[i])
            }]))
    }
}
