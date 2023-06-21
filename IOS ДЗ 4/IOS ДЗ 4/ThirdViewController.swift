//
//  ThirdViewController.swift
//  IOS ДЗ 4
//
//  Created by Bekpayev Dias on 21.06.2023.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func detailed2(_ sender: Any) {
        let fourthVC = storyboard?.instantiateViewController(identifier: "fourthVC") as! FourthViewController
        navigationController?.pushViewController(fourthVC, animated: true)
    }
    
}
