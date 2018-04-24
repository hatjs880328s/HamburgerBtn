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

let hanBtncircleDuration : Double = 0.3

let hanBtntop2LineDuration: Double = 0.3

let hanBtnlastLineDuration: Double = 0.2

class HanBtnVw: UIButton {
    
    var one = HanBtnLayerOne(duration: hanBtntop2LineDuration)
    var two = HanBtnLayerTwo(duration: hanBtntop2LineDuration)
    var three = HanBtnLayerThree(duration: hanBtnlastLineDuration)
    var circle = HanBtnCircleLayer(duration: hanBtncircleDuration)
    
    var change = true
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.addSublayer(one)
        self.layer.addSublayer(two)
        self.layer.addSublayer(three)
        self.layer.addSublayer(circle)
//        self.layer.borderColor = UIColor.gray.cgColor
//        self.layer.borderWidth = 0.5
//        self.layer.cornerRadius = 4
        
        self.addTarget(self, action: #selector(animationStart), for: UIControlEvents.touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init fail.HanBtnVw")
    }
    
    @objc func animationStart() {
        if change {
            self.one.animationX()
            self.two.animationX()
            self.three.changeShort()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + hanBtnlastLineDuration) {
                self.circle.changeCircle()
            }
            self.change = false
        }else{
            self.one.changeNormal()
            self.two.changeNormal()
            self.circle.changenormal()
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + hanBtncircleDuration) {
                self.three.changeNormal()
            }
            self.change = true
        }
    }
}
