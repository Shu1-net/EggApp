//
//  ViewController.swift
//  EggApp
//
//  Created by 天野修一 on 2020/09/05.
//  Copyright © 2020 shuichiama.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = String(count)
        
        
    }

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var count:Int = 100
    
    
    //イメージと紐付け
    @IBOutlet var ImageView: UIImageView!
    
    
    var dispImageNum = 0
    
    func dispImage() {
        let imageArray = ["egg01","egg02","egg03"]
        
        let name = imageArray[dispImageNum]
//        dispImageNum = 0なので、egg01を呼ぶ
        
        let image =  UIImage(named: name)
        
        ImageView.image = image
    }
    
    
    
    
    
    
    @IBAction func button(_ sender: Any) {
        
//        変数countの数字を1ずつ引く
        count -= 1
        countLabel.text = String(count)
//        count:IntをStringに変換
        
// 変数countが指定した数字になったときに、メッセージを表示
        if (count == 75){
            textLabel.text = "まだまだぁ！"
        } else if (count == 50){
            textLabel.text = "もっとだぁ！"
        } else if (count == 25){
            textLabel.text = "あともう少し！"
            dispImageNum += 1
            
        } else if (count == 0){
            textLabel.text = "お疲れしたぁ！"
            dispImageNum += 1
        }
        
        dispImage()
    }
    
}

