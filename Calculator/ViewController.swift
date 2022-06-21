//
//  ViewController.swift
//  Calculator
//
//  Created by Sami Giray Doğrultucu on 6/21/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var savedResult: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let savedNumber = UserDefaults.standard.object(forKey: "Saved")
        if let newNumber = savedNumber as? String{
            savedResult.text = newNumber
        }
        
        
        
        
    }


    @IBAction func savedButton(_ sender: Any) {
        
        
        UserDefaults.standard.set(savedResult.text!, forKey: "Saved")
        savedResult.text = resultLabel.text
          
    
        
        
    }
    
  
    
    
    
    @IBAction func plus(_ sender: Any) {
        
        
        if let myTextfield = Int(num1.text!){
            if let myTextfield2 = Int(num2.text!){
                let result = myTextfield+myTextfield2
                resultLabel.text = String(result)
            
            }else{
                resultLabel.text = "Hatalı değer girdiniz!"
            }
            
        }
        
        
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        if let myTextfield = Int(num1.text!){
            if let myTextfield2 = Int(num2.text!){
                let result = myTextfield-myTextfield2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı değer girdiniz!"
            }
        }
        
        
    }
    
    @IBAction func divison(_ sender: Any) {
        
        if let myTextfield = Int(num1.text!){
            if let myTextfield2 = Int(num2.text!){
                let result = myTextfield/myTextfield2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı değer girdiniz!"
            }
        }
        
    }
    
    @IBAction func multiplication(_ sender: Any) {
        
        if let myTextfield = Int(num1.text!){
            if let myTextfield2 = Int(num2.text!){
                let result = myTextfield*myTextfield2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "Hatalı değer girdiniz!"
            }
        }
        
    }
    
}

