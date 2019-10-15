//
//  ViewController.swift
//  HelloCafe
//
//  Created by Hongdonghyun on 15/10/2019.
//  Copyright © 2019 hongdonghyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func imageBtn(_ sender: Any) {
        menuImage.isHighlighted = !menuImage.isHighlighted
    }
}

