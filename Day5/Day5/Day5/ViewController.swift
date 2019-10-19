//
//  ViewController.swift
//  Day5
//
//  Created by Hongdonghyun on 18/10/2019.
//  Copyright © 2019 hongdonghyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let networkService = NetService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,selector:#selector(ViewController.notifyHandler),name:NSNotification.Name("UpdatedMainMenu"), object : networkService)
    }

    
    @IBAction func getButtonTouched(_ sender: Any) {
        networkService.getMainMenu()
    }
    
}

