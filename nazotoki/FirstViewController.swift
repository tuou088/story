//
//  FirstViewController.swift
//  nazotoki
//
//  Created by hidkei haruta on 2018/02/20.
//  Copyright © 2018年 hidkei haruta. All rights reserved.
//

import UIKit



//プロトコルの作成
protocol FirstviewDelegate {
    //委託したいのはviewを追加すること
    func addview()
}


class FirstViewController: UIViewController {
    var delegate:FirstviewDelegate? = nil
    let buttun = UIButton()
    let secondviewinstance = SecondViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    // ボタンの設定
        buttun.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        buttun.backgroundColor = UIColor.blue
        buttun.setTitle("ボタン", for: .normal)
        buttun.addTarget(self, action: #selector(FirstViewController.tapbottun(sender:)), for: .touchUpInside)
        self.view.addSubview(buttun)
    }
    
    @objc func tapbottun(sender: Any) { // buttonの色を変化させるメソッド
        if let dg = self.delegate {
            dg.addview()
            self.delegate = secondviewinstance
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

