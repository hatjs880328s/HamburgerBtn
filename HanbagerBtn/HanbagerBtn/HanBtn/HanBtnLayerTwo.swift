//
//  HanBtnLayerTwo.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit


class HanBtnLayerTwo: CAShapeLayer {
    
    var padding: CGFloat = hanBtnpadding
    
    var durationX: Double = 0.5
    
    init(duration: Double) {
        super.init()
        self.durationX = duration
        self.strokeColor = hanBtnLinecolor
        self.lineWidth = 2
        self.fillColor = UIColor.clear.cgColor
        self.path = self.startPath.cgPath
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var startPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight / 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: hanBtnHeight / 2))
        pathNow.close()
        return pathNow
    }
    
    /// normal
    var endPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: padding, y: hanBtnHeight - padding))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight - padding, y: padding))
        pathNow.close()
        return pathNow
    }
    
    /// down arrow
    var arrowDownPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight / 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight / 2))
        pathNow.close()
        return pathNow
    }
    
    /// ver 3
    var arrowVer3Path: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: padding * 1.25))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding * 1.25))
        pathNow.close()
        return pathNow
    }
    
}

/// normal
extension HanBtnLayerTwo {
    func animationX() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = endPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
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

/// down arrow
extension HanBtnLayerTwo {
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

/// ver 3
extension HanBtnLayerTwo {
    func changeVer3Arrow() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = startPath.cgPath
        arc2.toValue = arrowVer3Path.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func ver3ArrowChangeNormal() {
        let arc2 = CABasicAnimation(keyPath: "path")
        arc2.fromValue = arrowVer3Path.cgPath
        arc2.toValue = startPath.cgPath
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}
