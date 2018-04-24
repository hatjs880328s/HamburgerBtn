//
//  HanBtnLayerThree.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit

/// 需要变为圆形的线条
class HanBtnLayerThree: CAShapeLayer {
    
    var padding: CGFloat = hanBtnpadding
    
    var durationX: Double = 0.5
    
    init(duration: Double) {
        super.init()
        self.durationX = duration
        self.strokeColor = hanBtnLinecolor
        self.lineWidth = 2
        self.fillColor = UIColor.clear.cgColor
        self.path = startPath.cgPath
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var startPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight - padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// left arrow
    var arrowLeftPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight / 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// right arrow
    var arrowRightPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight / 2))
        pathNow.close()
        return pathNow
    }
    
    /// normal
    var endPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.close()
        return pathNow
    }
    
    /// down
    var arrowDownPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight / 2))
        pathNow.close()
        return pathNow
    }
    
    
    
}

/// normal
extension HanBtnLayerThree {
    func changeShort() {
        let arcAnimationPre: CABasicAnimation = CABasicAnimation(keyPath: "path")
        arcAnimationPre.fromValue = startPath.cgPath
        arcAnimationPre.toValue = endPath.cgPath
        arcAnimationPre.beginTime = 0.0
        arcAnimationPre.duration = durationX
        arcAnimationPre.isRemovedOnCompletion = false
        arcAnimationPre.fillMode = kCAFillModeForwards
        self.add(arcAnimationPre, forKey: nil)
    }
    
    func changeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = endPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// left arrow
extension HanBtnLayerThree {
    func changeLeftArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowLeftPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func leftArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowLeftPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// right arrow
extension HanBtnLayerThree {
    func changeRightArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowRightPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func rightArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowRightPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}

/// down arrow
extension HanBtnLayerThree {
    func changeDownArrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowDownPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func downArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowDownPath.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}
