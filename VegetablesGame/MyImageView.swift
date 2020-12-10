//
//  MyImageView.swift
//  VegetablesGame
//
//  Created by  石明杰 on 2020/11/26.
//

import UIKit

class MyImageView: UIImageView {
    var myImage : UIImage?
    var myTag : NSInteger?

    required init(coder aDecoder: NSCoder)
    {
        super.init(coder :aDecoder)!
        self.isUserInteractionEnabled = true
    }
    func turn2Left()
    {
        UIView.transition(with: self, duration: 0.5, options: .transitionFlipFromRight, animations: {
            
            self.image = self.myImage
            }, completion:
            { (finished) -> Void in
                
                //水果狀態時,不可點擊
                self.isUserInteractionEnabled = false
            })
    }
    func turn2Right()
    {
        UIView.transition(with: self, duration: 0.5, options: .transitionFlipFromRight, animations: {
                self.image = UIImage(named:"contrary.png")
            }, completion:
            { (finished) -> Void in
                //問號狀態時可點擊
                self.isUserInteractionEnabled = true
            })
    }
}

