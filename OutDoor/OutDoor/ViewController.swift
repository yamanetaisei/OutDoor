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
        let storyboard: UIStoryboard = self.storyboard!
        let checking = storyboard.instantiateViewController(withIdentifier: "checking")
        self.present(checking, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

