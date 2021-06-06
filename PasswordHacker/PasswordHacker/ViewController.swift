//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 加藤　怜 on 2021/05/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!
    
    @IBOutlet var countLabel1: UILabel!
    
    var password:Int = 0522
    
    @IBAction func start() {
        for i in 0...9999 {
            
            countLabel1.text = String(i)
            
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.005))
            
            if i == password {
                
                var digits = [Int] ()
                
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])

                print("正解は\(i)です！")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reset(){
        
        password = 0522
        
        countLabel1.text = "「START」ボタンを押して解析開始 "
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
    }

}

