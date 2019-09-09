//
//  ViewController.swift
//  Expance Managment App
//
//  Created by Nilrajsinh Vaghela on 06/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtpass: UITextField!
    
    @IBAction func newuser(_ sender: Any) {
        
        
    }
    
    
    @IBAction func TxtLogin(_ sender: Any) {
        if (txtEmail.text == "abc@gmail.com"),
            (txtpass.text == "nil") {
            let alertView = UIAlertController(title: "Login Succesful", message: "login Succesful", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
            
        }
        else {
            let alertView = UIAlertController(title: "Enter Correct Detail", message: "login Faild", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // program to dismiss keyboard
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    //here  keyboard dismis program end


}

