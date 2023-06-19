//
//  ViewController.swift
//  IOS ДЗ 3
//
//  Created by Bekpayev Dias on 16.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let correctPIN = "4321"
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button9: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button0: UIButton!
    @IBOutlet weak var ButtonB: UIButton!
    
    @IBOutlet weak var Circle1: UIImageView!
    @IBOutlet weak var Circle2: UIImageView!
    @IBOutlet weak var Circle3: UIImageView!
    @IBOutlet weak var Circle4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var enteredPIN = ""
    
    @IBAction func buttonTapped(_ sender: Any) {
        if let button = sender as? UIButton {
            let tag = button.tag
            if tag == -1 {
                if !enteredPIN.isEmpty {
                    enteredPIN.removeLast()
                    updateCircleImages()
                }
            } else {
                    if enteredPIN.count < 4 {
                        enteredPIN.append(String(tag))
                        updateCircleImages()
                    }
                    if enteredPIN.count == 4 {
                        if enteredPIN == correctPIN {
                            showAlert(message: "Correct PIN")
                            resetPIN()
                        } else {
                            showAlert(message: "Incorrect PIN")
                            resetPIN()
                        }
                    }
                }
            }
        }
        func updateCircleImages() {
            let filledCircleImage = UIImage(systemName: "circle.fill")
            let emptyCircleImage = UIImage(systemName: "circle")
            let circleImages = [Circle1, Circle2, Circle3, Circle4]
            for (index, circleImage) in circleImages.enumerated() {
                if index < enteredPIN.count {
                    circleImage?.image = filledCircleImage
                } else {
                    circleImage?.image = emptyCircleImage
                }
            }
        }
        
        func resetPIN() {
            enteredPIN = ""
            updateCircleImages()
        }
        
        func showAlert(message: String) {
            let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
}

