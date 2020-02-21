//
//  CheckViewController.swift
//  OutDoor
//
//  Created by 山根大生 on 2020/02/21.
//  Copyright © 2020 taisei. All rights reserved.
//

import UIKit


class CheckViewController: UIViewController {
    
    @IBOutlet weak var checkItem: UILabel!
    
    var pushButton:Int = 0
    @IBAction func doneButton(_ sender: Any) {
        pushButton += 1
        checkItem.text = decideList[pushButton]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //chekLabelの初期値を設定
        checkItem.text = decideList[0]
    }
}
