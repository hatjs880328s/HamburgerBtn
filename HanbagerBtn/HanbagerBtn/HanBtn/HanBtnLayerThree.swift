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
        self.lineWidth = 1
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
    
    var endPath: UIBezierPath {
        let pathNow = UIBezierPath()
        pathNow.move(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding * 2))
        pathNow.addLine(to: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight - padding * 2))
        pathNow.close()
        return pathNow
    }
    
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
