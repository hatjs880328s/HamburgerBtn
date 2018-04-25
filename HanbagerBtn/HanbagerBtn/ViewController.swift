//
//  ViewController.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24..
//  Copyright © 2018年 Inspur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /// - create views
        let vw = HanBtnVw(frame: CGRect(x: 10, y: 150, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .normal)
        self.view.addSubview(vw)
        vw.forwardAnimationEndAction = { () in
            print("--forword animation over.--")
        }
        
        let vwleft = HanBtnVw(frame: CGRect(x: 10, y: 250, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .leftArrow)
        self.view.addSubview(vwleft)
        
        let vwright = HanBtnVw(frame: CGRect(x: 10, y: 350, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .rightArrow)
        self.view.addSubview(vwright)
        
        let vwdown = HanBtnVw(frame: CGRect(x: 10, y: 450, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .downArrow)
        self.view.addSubview(vwdown)
        
        
        let vwver3 = HanBtnVw(frame: CGRect(x: 140, y: 150, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .ver3)
        self.view.addSubview(vwver3)
        
        let vwoneline = HanBtnVw(frame: CGRect(x: 140, y: 250, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .oneline)
        self.view.addSubview(vwoneline)
        
        let vwaddc = HanBtnVw(frame: CGRect(x: 140, y: 350, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .addcharacter)
        self.view.addSubview(vwaddc)
        
        let vwnormalNocircle = HanBtnVw(frame: CGRect(x: 140, y: 450, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .normalNoCircle)
        self.view.addSubview(vwnormalNocircle)
        
        
        let vwstairWay = HanBtnVw(frame: CGRect(x: 270, y: 150, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .stairway)
        self.view.addSubview(vwstairWay)
    }


}

