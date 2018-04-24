//
//  ViewController.swift
//  HanbagerBtn
//
//  Created by Noah_Shan on 2018/4/24.
//  Copyright © 2018年 Inspur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vw = HanBtnVw(frame: CGRect(x: 50, y: 50, width: hanBtnHeight, height: hanBtnHeight))
        self.view.addSubview(vw)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

