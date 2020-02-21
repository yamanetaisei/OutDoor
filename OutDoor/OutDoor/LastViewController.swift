//
//  LastViewController.swift
//  OutDoor
//
//  Created by 山根大生 on 2020/02/21.
//  Copyright © 2020 taisei. All rights reserved.
//

import UIKit

class LastViewController: UIViewController{
    @IBOutlet weak var lastLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lastLabel.text = "いってらっしゃーい！"
    }
}
