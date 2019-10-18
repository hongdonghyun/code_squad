//
//  ViewController.swift
//  TableView
//
//  Created by Hongdonghyun on 17/10/2019.
//  Copyright © 2019 hongdonghyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let nameArray = [ [ "ㄱ" : ["김다인","김수완","김준영","김하은","김형종"] ],
                      [ "ㅂ" : ["박예준","박진수"] ],
                      [ "ㅅ" : ["서동욱","송통일"] ],
                      [ "ㅇ" : ["양재형","오세훈","이단비","이미정","이정웅","이준범"] ],
                      [ "ㅈ" : ["전한나"] ],
                      [ "ㅊ" : ["최송이","최혜선"] ],
                      [ "ㅎ" : ["한민호","한지웅","홍성호","홍창남","황예린"] ] ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource=self
    }
    
    // MARK: - TableView
    
}

