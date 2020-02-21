//
//  SettingViewController.swift
//  OutDoor
//
//  Created by 山根大生 on 2020/02/20.
//  Copyright © 2020 taisei. All rights reserved.
//

import UIKit

//チェックリストを格納するための変数
var checkList = [String]()
//確定させた時のリストをぶちこむ変数
var decideList = [String]()

class SettingViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    // TextField
    @IBOutlet weak var CheckListTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    // 追加ボタン
    @IBAction func AddButton(_ sender: Any) {
        //checkListへぶちこむ
        checkList.append(CheckListTextField.text!)
        //追加ボタンを押すと空白になる
        CheckListTextField.text = ""
        //checkListを保管
        UserDefaults.standard.set(checkList, forKey: "CheckCell")
        //キーボードを閉じる
        view.endEditing(true)
        
        loadView()
        viewDidLoad()
    }
    
    //確定ボタン
    @IBAction func DecideButton(_ sender: Any) {
        // 表示させる確認項目を確定させる
        decideList = checkList
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //表示するcellの個数
        return checkList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 変数
        let checkCell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CheckList", for: indexPath)
        // 変数の中身
        checkCell.textLabel!.text  = checkList[indexPath.row]
        return checkCell
    }
    
    // セルの編集許可
    func tableView(_ tableView: UITableView, canEditRowAtindexPath: IndexPath) -> Bool{
            return true
    }
    // スワイプしたセルを削除
    func tableView(_ tableView:UITableView, commit editinrStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editinrStyle == UITableViewCell.EditingStyle.delete{
            checkList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
        //TODOTODOTODOTODOTODOTODOTODOTODO
        //checkListを保管
        UserDefaults.standard.set(checkList, forKey: "CheckCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //内容取得
        if UserDefaults.standard.object(forKey: "CheckCell") != nil {
            checkList = UserDefaults.standard.object(forKey: "CheckCell") as! [String]
        }
    }    
}
