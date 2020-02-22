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
            //文字数に応じて文字の大きさを調節
            checkItem.adjustsFontSizeToFitWidth = true
            // label（checkItem）の文字変更
            checkItem.text = decideList[pushButton]
        }else{
            self.present(last, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //もしリストがnullならば
        if decideList.isEmpty{
            //文字数に応じて文字の大きさを調節
            checkItem.adjustsFontSizeToFitWidth = true
            checkItem.text = "設定画面で確認項目を設定してください"
        }else{
            //chekLabelの初期値を設定
            checkItem.text = decideList[0]
        }
    }
}
