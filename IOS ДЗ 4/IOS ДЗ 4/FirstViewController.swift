//
//  ViewController.swift
//  IOS ДЗ 4
//
//  Created by Bekpayev Dias on 19.06.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func detailed(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(identifier: "secondVC") as! SecondViewController
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

