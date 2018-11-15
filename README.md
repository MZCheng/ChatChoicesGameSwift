# ChatChoicesGameSwift
A message-based game structure

import SpriteKit

struct Chatter {
    static let others = "Others"
    static let myself = "Myself"
}

class GameScene: SKScene {
    var sampleNode = SKNode()
    
    var text1 = SKLabelNode()
    var text2 = SKLabelNode()
    var text: String?
    
    var samLabel0 = SKLabelNode()
    var samLabel1 = SKLabelNode()
    var samLabel2 = SKLabelNode()
    var samLabel3 = SKLabelNode()
    var samLabel4 = SKLabelNode()
    var samLabel5 = SKLabelNode()
    var samLabel6 = SKLabelNode()
    
    //var samLabel: SKLabelNode?
    
    var labels = [SKLabelNode]()
    
    //var touchPoint: CGPoint?
    
    override func sceneDidLoad() {
        
        labels = [SKLabelNode](arrayLiteral: samLabel0,samLabel1,samLabel2,samLabel3,samLabel4,samLabel5,samLabel6)
        
        samLabel0.name = "Others"
        samLabel1.name = "Others"
        samLabel2.name = Chatter.others
        samLabel3.name = Chatter.myself
        samLabel4.name = Chatter.others
        samLabel5.name = Chatter.myself
        samLabel6.name = Chatter.myself
        
        for i in sampleNode.children.count...labels.count-1 {
            if labels[i].name == Chatter.others {
                sampleNode.run(SKAction.sequence([SKAction.wait(forDuration:Double(i-sampleNode.children.count+1)*1.5),
                                                  SKAction.run {
                                                    self.sampleNode.addChild(self.labels[i])
                    }]))
            }
            
            else if labels[i].name == Chatter.myself {
                text1.text = "haha"
                text2.text = "xixi"
                
                if text != nil {
                    labels[i].text = text
                    sampleNode.addChild(labels[i])
                }
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        if text1.contains(touch.location(in: self)) {
            text = text1.text
        }
        else if text2.contains(touch.location(in: self)) {
            text = text2.text
        }
    }
    
}

