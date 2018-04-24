//
//  HanBtnLayerThree.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import Foundation
import UIKit

/// 圆形
class HanBtnCircleLayer: CAShapeLayer {
    override init() {
        super.init()
        self.strokeColor = UIColor.white.cgColor
        self.lineWidth = 1
        self.fillColor = UIColor.clear.cgColor
        self.path = circlePath.cgPath
        self.strokeEnd = 0
        self.strokeStart = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var circlePath: UIBezierPath {
        let cirpath = UIBezierPath()
        cirpath.addArc(withCenter: CGPoint(x: 30, y: 30), radius: 20, startAngle: CGFloat(Double.pi)/2, endAngle: CGFloat(Double.pi) * 2.5
            , clockwise: true)
        return cirpath
    }
    
    func changeCircle() {
        let arc2 = CABasicAnimation(keyPath: "strokeEnd")
        arc2.fromValue = 0
        arc2.toValue = 1
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = 0.5
        
        let group = CAAnimationGroup()
        group.animations = [arc2]
        group.duration = arc2.duration
        group.fillMode = kCAFillModeForwards
        group.isRemovedOnCompletion = false
        self.add(group, forKey: nil)
    }
}
