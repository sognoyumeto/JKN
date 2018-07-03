//
//  ViewController.swift
//  jkn
//
//  Created by Yumeto Sasamori on 2018/06/16.
//  Copyright © 2018年 Yumeto Sasamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    // じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        //0,1,2の数値をランダムに算出（乱数）
        
        // arc4random_uniform()の戻り値はUInt32だがSwiftの標準的な聖地型Intにキャストする（変換）する
        answerNumber = Int(arc4random_uniform(3))
        
    
        if answerNumber == 0 {
         // グー
            
        answerLabel.text = "GUGUGGUGU"
        answerImageView.image = UIImage(named:"gu")
   
        }else if answerNumber == 1 {
         // チョキ
            
        answerLabel.text = "ちょきんちょきん"
        answerImageView.image = UIImage(named:"choki")
            
            
        }else if answerNumber == 2 {
         // パー
            
        answerLabel.text = "ぱぱぱぱぱ"
        answerImageView.image = UIImage(named:"pa")
        }
        
      
}


}
