//
//  ViewController.swift
//  naber
//
//  Created by 王淳彦 on 2018/7/18.
//  Copyright © 2018年 Melon Ltd. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        ApiManager<AnyObject>.testCallApi(){ response in
            debugPrint(response)
        }


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

