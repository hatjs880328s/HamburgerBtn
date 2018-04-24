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
        
        let vw = HanBtnVw(frame: CGRect(x: 50, y: 50, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .normal)
        self.view.addSubview(vw)
        
        let vwleft = HanBtnVw(frame: CGRect(x: 120, y: 50, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .leftArrow)
        self.view.addSubview(vwleft)
        
        let vwright = HanBtnVw(frame: CGRect(x: 190, y: 50, width: hanBtnHeight, height: hanBtnHeight),hanburgerType: .rightArrow)
        self.view.addSubview(vwright)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

