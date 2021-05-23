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
                    password = / 
                }
                
                
                
                
                print("正解は\(i)です！")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reset(){
        
    }

}

