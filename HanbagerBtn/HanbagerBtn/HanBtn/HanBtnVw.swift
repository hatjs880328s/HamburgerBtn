//
//  HanBtnVw.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit


let hanBtnHeight: CGFloat = 76

let hanBtnpadding: CGFloat = 20

let hanBtnLinecolor: CGColor = UIColor.black.cgColor

let hanBtnLineWidth: CGFloat = 3

let hanBtncircleDuration : Double = 0.3

let hanBtntop2LineDuration: Double = 0.3

let hanBtnlastLineDuration: Double = 0.2

enum HanburgerBtnType{
    case normal
    case normalNoCircle
    case leftArrow
    case rightArrow
    case downArrow
    case ver3
    case oneline
    case addcharacter
    case stairway
}

class HanBtnVw: UIButton {
    
    var one = HanBtnLayerOne(duration: hanBtntop2LineDuration)
    var two = HanBtnLayerTwo(duration: hanBtntop2LineDuration)
    var three = HanBtnLayerThree(duration: hanBtnlastLineDuration)
    var circle = HanBtnCircleLayer(duration: hanBtncircleDuration)
    
    var forwardAnimationEndAction:(()->Void)!
    
    var backwordAnimationEndAction:(()->Void)!
    
    var change = true
    
    var hanburgerType: HanburgerBtnType = .normal
    
    init(frame: CGRect,hanburgerType: HanburgerBtnType = .normal) {
        super.init(frame: frame)
        self.hanburgerType = hanburgerType
        createLayers(hanburgerType)
        self.addTarget(self, action: #selector(animationStart), for: UIControlEvents.touchUpInside)
        self.layer.cornerRadius = 6
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 0.5
    }
    
    func createLayers(_ hanburgerType: HanburgerBtnType = .normal) {
        switch hanburgerType {
        case .normal:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
            self.layer.addSublayer(circle)
        case .normalNoCircle:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .leftArrow:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .rightArrow:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .downArrow:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .ver3:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .oneline:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .addcharacter:
            self.layer.addSublayer(one)
            self.layer.addSublayer(two)
            self.layer.addSublayer(three)
        case .stairway:
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
                    self.endAction(time: hanBtncircleDuration, isForward: true)
                }
                self.change = false
            }else{
                self.one.changeNormal()
                self.two.changeNormal()
                self.circle.changenormal()
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + hanBtncircleDuration) {
                    self.three.changeNormal()
                    self.endAction(time: hanBtntop2LineDuration, isForward: false)
                }
                self.change = true
            }
        case .normalNoCircle:
            if change {
                self.one.animationX()
                self.two.animationX()
                self.three.changeShort()
                self.change = false
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.one.changeNormal()
                self.two.changeNormal()
                self.three.changeNormal()
                self.change = true
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .leftArrow:
            if change {
                self.change = false
                self.one.changeLeftArrow()
                self.three.changeLeftArrow()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.leftArrowChangeNormal()
                self.three.leftArrowChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .rightArrow:
            if change {
                self.change = false
                self.one.changeRightArrow()
                self.three.changeRightArrow()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.rightArrowChangeNormal()
                self.three.rightArrowChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .downArrow:
            if change {
                self.change = false
                self.one.changeDownArrow()
                self.two.changeDownArrow()
                self.three.changeDownArrow()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.downArrowChangeNormal()
                self.two.downArrowChangeNormal()
                self.three.downArrowChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .ver3:
            if change {
                self.change = false
                self.one.changeVer3Arrow()
                self.two.changeVer3Arrow()
                self.three.changeVer3Arrow()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.ver3ArrowChangeNormal()
                self.two.ver3ArrowChangeNormal()
                self.three.ver3ArrowChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .oneline:
            if change {
                self.change = false
                self.one.changeOnelineArrow()
                self.three.changeOnelineArrow()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.onelineArrowChangeNormal()
                self.three.onelineArrowChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .addcharacter:
            if change {
                self.change = false
                self.one.changeAddcArrow()
                self.three.changeAddcArrow()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.addcArrowChangeNormal()
                self.three.addcArrowChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        case .stairway:
            if change {
                self.change = false
                self.one.changeStairway()
                self.two.changeStairway()
                self.endAction(time: hanBtntop2LineDuration, isForward: true)
            }else{
                self.change = true
                self.one.stairwayChangeNormal()
                self.two.stairwayChangeNormal()
                self.endAction(time: hanBtntop2LineDuration, isForward: false)
            }
        }
    }
    
    func endAction(time: Double,isForward:Bool) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {
            if isForward {
                if self.forwardAnimationEndAction == nil { return }
                self.forwardAnimationEndAction()
            }else{
                if self.backwordAnimationEndAction == nil { return }
                self.backwordAnimationEndAction()
            }
        }
    }
}
