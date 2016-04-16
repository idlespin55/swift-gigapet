//
//  ViewController.swift
//  3_Gigapet
//
//  Created by Ajmal Ahmady on 4/16/16.
//  Copyright © 2016 FrontierGroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //*********************************Class variables***************************************
    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var fooddImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    //*********************************ViewDidLoad()****************************************
    override func viewDidLoad() {
        super.viewDidLoad()
        var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        //Creates the animation from the image array
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0   //Setting this to zero will repeat the animationmonster
        monsterImg.startAnimating()
    }
    
    //************************************FUNCTIONS*******************************************
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I JUST TOUCHED THE SCREEN")
    }
}