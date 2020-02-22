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
    
    let message = ["いってらっしゃーい!", "気をつけてね!","いってこい！","いってら〜(^o^)ﾉｼ"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lastLabel.text = message[Int.random(in: 0..<4)]
    }
    @IBAction func endButton(_ sender: Any) {
        // 二つ前の画面に戻る
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
