//
//  ViewController.swift
//  DCAnimationKitDemo
//
//  Created by pandazheng on 15/6/7.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var moveLabel : UILabel!
//    var moveView : UIView!
    
    var moveView : UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.moveLabel = UILabel(frame: CGRectMake(80, 85, 200, 100))
//        self.moveLabel.backgroundColor = UIColor.clearColor()
//        self.moveLabel.text = "Animate"
//        self.moveLabel.font = UIFont(name: "Alrial", size: 36)
//        self.moveLabel.sizeToFit()
//        self.view.addSubview(moveLabel)
//        
//        self.moveView = UIView(frame: CGRectMake(40, 165, 200, 100))
//        self.moveView.backgroundColor = UIColor.orangeColor()
//        self.view.addSubview(moveView)
        
        let baseView = UIView(frame: CGRectMake(40, 85, 50, 50))
        baseView.backgroundColor = UIColor.grayColor()
        self.view.addSubview(baseView)
        
        
        self.moveView = UIView(frame: baseView.frame)
        self.moveView.backgroundColor = UIColor.redColor()
        self.view.addSubview(moveView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BtnAnimate(sender: AnyObject) {
        //Tada
//        self.moveLabel.tada { () -> Void in
//            println("moveLabel tada")
//        }
//        
//        self.moveView.tada { () -> Void in
//            println("moveView tada")
//        }
        
        //Bounce
//        self.moveView.bounce { () -> Void in
//            
//        }
//        
//        self.moveLabel.bounce { () -> Void in
//            
//        }
        
        //Pulse
//        self.moveLabel.pulse { () -> Void in
//            
//        }
//        
//        self.moveView.pulse { () -> Void in
//            
//        }
        
        //Shake
//        self.moveView.shake { () -> Void in
//            
//        }
//        
//        self.moveLabel.shake { () -> Void in
//            
//        }
        
        //Swing
//        self.moveLabel.swing { () -> Void in
//            
//        }
//        
//        self.moveView.swing { () -> Void in
//            
//        }
        
        //Snap
//        self.moveView.snapIntoView(self.view, direction: DCAnimationDirection.Top)
//        self.moveLabel.snapIntoView(self.view, direction: DCAnimationDirection.Left)
        
        //Bounce
//        self.moveLabel.bounceIntoView(self.view, direction: DCAnimationDirection.Top)
//        self.moveView.bounceIntoView(self.view, direction: DCAnimationDirection.Left)
        
        //Expand
//        self.moveView.expandIntoView(self.view, finished: { () -> Void in
//            
//        })
//        self.moveLabel.expandIntoView(self.view, finished: { () -> Void in
//            
//        })
        
        //Outros
//        self.moveLabel.compressIntoView { () -> Void in
//            
//        }
//        self.moveLabel.compressIntoView { () -> Void in
//            
//        }
        
        //Hinge
//        self.moveLabel.hinge { () -> Void in
//            
//        }
//        self.moveView.hinge { () -> Void in
//            
//        }
        let distance : Int = 50
        var weakSelf : AnyObject? = self.moveView
//        weakSelf?.moveX(CGFloat(distance), finished: { () -> Void in
//            weakSelf?.moveY(CGFloat(distance), finished: { () -> Void in
//                weakSelf?.moveX(CGFloat(-distance), finished: { () -> Void in
//                    weakSelf?.moveY(CGFloat(-distance), finished: { () -> Void in
//                        
//                    })
//                })
//            })
//        })
        
//        weakSelf?.setX(200, finished: { () -> Void in
//            weakSelf?.setY(200, finished: { () -> Void in
//                weakSelf?.setX(40, finished: { () -> Void in
//                    weakSelf?.setY(85, finished: { () -> Void in
//                        
//                    })
//                })
//            })
//        })
        
        weakSelf?.setRotation(45, duration: 0.35, finished: { () -> Void in
            weakSelf?.setRotation(0, duration: 0.35, finished: { () -> Void in
                
            })
        })
    }

}

