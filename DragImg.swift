//
//  DragImg.swift
//  3_Gigapet
//
//  Created by Ajmal Ahmady on 4/16/16.
//  Copyright © 2016 FrontierGroup. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView {
    
    var originalPosition: CGPoint!
    
    //************************Subclassing UIImageView requires implementing these two initializers******************
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //*************************************Touches Class Overrides*************************************************
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center    //Gets the center position of the UIImageView (e.g. the food or heart image)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {                          //Ensure that the touch has a first position
            let position = touch.locationInView(self.superview) //Get the new position of the Image
            self.center = CGPointMake(position.x, position.y)  //Set the position of the image after it has been moved
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.center = originalPosition                      //Resets the position of the Image to its original position
    }
}