//
//  MonsterImg.swift
//  3_Gigapet
//
//  Created by Ajmal Ahmady on 4/16/16.
//  Copyright © 2016 FrontierGroup. All rights reserved.
//

import Foundation
import UIKit

class MonsterImg: UIImageView {
    
    //************************Subclassing UIImageView requires implementing these two initializers******************
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
