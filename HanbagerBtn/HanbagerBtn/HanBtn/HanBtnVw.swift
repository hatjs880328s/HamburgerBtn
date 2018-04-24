//
//  HanBtnVw.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit


let hanBtnHeight: CGFloat = 38

let hanBtnpadding: CGFloat = 10

let hanBtnLinecolor: CGColor = UIColor.red.cgColor


class HanBtnVw: UIButton {
    
    var one = HanBtnLayerOne(duration: 0.3)
    var two = HanBtnLayerTwo(duration: 0.3)
    var three = HanBtnLayerThree(duration: 0.2)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.addSublayer(one)
        self.layer.addSublayer(two)
        self.layer.addSublayer(three)
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 0.5
        self.layer.cornerRadius = 4
        
        self.addTarget(self, action: #selector(animationStart), for: UIControlEvents.touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init fail.HanBtnVw")
    }
    
    var change = true
    @objc func animationStart() {
        if change {
            self.one.animationX()
            self.two.animationX()
            self.three.changeShort()
            self.change = false
        }else{
            self.one.changeNormal()
            self.two.changeNormal()
            self.three.changeNormal()
            self.change = true
        }
    }
}
