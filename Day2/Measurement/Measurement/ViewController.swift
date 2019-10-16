//
//  ViewController.swift
//  Measurement
//
//  Created by Hongdonghyun on 15/10/2019.
//  Copyright © 2019 hongdonghyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lengthTextField: UITextField!
    
    @IBOutlet weak var resultYardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertBtn(_ sender: Any) {
        let length = Double(lengthTextField.text ?? "0") ?? 0.0
        var meter = Measurement.init(value:length,unit:UnitLength.meters)
        meter.convert(to:UnitLength.yards)
        resultYardLabel.text = "\(meter.value)"
    }
}

