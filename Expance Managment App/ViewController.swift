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
        
        // here is the code to visit another activity programitacally
        
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let register = storyBoard.instantiateViewController(withIdentifier: "Register") as! Register
        self.navigationController?.pushViewController(register, animated: true)
        
    }
    
    
    @IBAction func TxtLogin(_ sender: Any) {
        
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

