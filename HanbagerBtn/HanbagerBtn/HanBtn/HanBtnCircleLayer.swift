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
    
    var durationX:Double = 0.3
    init(duration: Double) {
        super.init()
        self.durationX = duration
        self.strokeColor = hanBtnLinecolor
        self.lineWidth = 1
        self.fillColor = UIColor.clear.cgColor
        self.path = circlePath.cgPath
        self.strokeEnd = 0
        self.strokeStart = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// circle 's radius...
    var radius: CGFloat {
        let lineFloat = (hanBtnHeight - hanBtnpadding * 2)
        return  sqrt(lineFloat * lineFloat * 2) / 2 + 4
    }
    
    var circlePath: UIBezierPath {
        let cirpath = UIBezierPath()
        cirpath.addArc(withCenter: CGPoint(x: hanBtnHeight / 2, y: hanBtnHeight / 2), radius: radius, startAngle: CGFloat(Double.pi)/2, endAngle: CGFloat(Double.pi) * 2.5
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
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
    
    func changenormal() {
        let arc2 = CABasicAnimation(keyPath: "strokeEnd")
        arc2.fromValue = 1
        arc2.toValue = 0
        arc2.beginTime = 0
        arc2.fillMode = kCAFillModeForwards
        arc2.isRemovedOnCompletion = false
        arc2.duration = durationX
        self.add(arc2, forKey: nil)
    }
}
