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

enum HanburgerBtnType{
    case normal
    case leftArrow
    case rightArrow
}

class HanBtnVw: UIButton {
    
    var one = HanBtnLayerOne(duration: hanBtntop2LineDuration)
    var two = HanBtnLayerTwo(duration: hanBtntop2LineDuration)
    var three = HanBtnLayerThree(duration: hanBtnlastLineDuration)
    var circle = HanBtnCircleLayer(duration: hanBtncircleDuration)
    
    var change = true
    
    var hanburgerType: HanburgerBtnType = .normal
    
    init(frame: CGRect,hanburgerType: HanburgerBtnType = .normal) {
        super.init(frame: frame)
        self.hanburgerType = hanburgerType
        createLayers(hanburgerType)
        self.addTarget(self, action: #selector(animationStart), for: UIControlEvents.touchUpInside)
    }
    
    func createLayers(_ hanburgerType: HanburgerBtnType = .normal) {
        switch hanburgerType {
        case .normal:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
            self.layer.addSublayer(circle)
        case .leftArrow:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .rightArrow:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init fail.HanBtnVw")
    }
    
    @objc func animationStart() {
        doAnimation()
    }
    
    func doAnimation() {
        switch self.hanburgerType {
        case .normal:
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
        case .leftArrow:
            if change {
                self.change = false
                self.one.changeLeftArrow()
                self.three.changeLeftArrow()
            }else{
                self.change = true
                self.one.leftArrowChangeNormal()
                self.three.leftArrowChangeNormal()
            }
        case .rightArrow:
            if change {
                self.change = false
                self.one.changeRightArrow()
                self.three.changeRightArrow()
            }else{
                self.change = true
                self.one.rightArrowChangeNormal()
                self.three.rightArrowChangeNormal()
            }
        }
    }
}
