//
//  SecondViewController.swift
//  nazotoki
//
//  Created by hidkei haruta on 2018/02/20.
//  Copyright © 2018年 hidkei haruta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,FirstviewDelegate {

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    func addview() {
        let Rect = CGRect(x: 0, y: 0, width: 200, height: 200)
        let imageview = UIImageView(frame: Rect)
        imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage(named: "Image")
        imageview.center = self.view.center
        self.view.addSubview(imageview)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

