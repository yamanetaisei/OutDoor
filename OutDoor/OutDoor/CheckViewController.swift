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
    // ボタンを押した回数をカウントする変数
    var pushButton:Int = 0
    //完了ボタン
    @IBAction func doneButton(_ sender: Any) {
        
        let listLength:Int = decideList.count
        
        let storyboard:UIStoryboard = self.storyboard!
        
        let last = storyboard.instantiateViewController(withIdentifier: "last")
        //押した回数
        pushButton += 1
        
        if pushButton < listLength{
            // label（checkItem）の文字変更
            checkItem.text = decideList[pushButton]
        }else{
            self.present(last, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //chekLabelの初期値を設定
        checkItem.text = decideList[0]
    }
}
