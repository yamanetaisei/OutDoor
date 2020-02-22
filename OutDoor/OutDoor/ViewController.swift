//
//  ViewController.swift
//  OutDoor
//
//  Created by 山根大生 on 2020/02/17.
//  Copyright © 2020 taisei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func startButton(_ sender: Any) {
        //同じストーリーボード上にあることを定義
        let storyboard: UIStoryboard = self.storyboard!
        //遷移先選択
        let checking = storyboard.instantiateViewController(withIdentifier: "checking")
        // 実際に移動
        self.present(checking, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

