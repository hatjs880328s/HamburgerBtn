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
        
        let vw = HanBtnVw(frame: CGRect(x: 50, y: 150, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .normal)
        self.view.addSubview(vw)
        
        let vwleft = HanBtnVw(frame: CGRect(x: 50, y: 250, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .leftArrow)
        self.view.addSubview(vwleft)
        
        let vwright = HanBtnVw(frame: CGRect(x: 50, y: 350, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .rightArrow)
        self.view.addSubview(vwright)
        
        let vwdown = HanBtnVw(frame: CGRect(x: 50, y: 450, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .downArrow)
        self.view.addSubview(vwdown)
        
        
        let vwver3 = HanBtnVw(frame: CGRect(x: 180, y: 150, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .ver3)
        self.view.addSubview(vwver3)
        
        let vwoneline = HanBtnVw(frame: CGRect(x: 180, y: 250, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .oneline)
        self.view.addSubview(vwoneline)
        
        let vwaddc = HanBtnVw(frame: CGRect(x: 180, y: 350, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .addcharacter)
        self.view.addSubview(vwaddc)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

