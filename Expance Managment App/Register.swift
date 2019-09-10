//
//  Register.swift
//  Expance Managment App
//
//  Created by Nilrajsinh Vaghela on 09/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class Register: UIViewController {
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var ConfirmPass: UITextField!
    
    @IBOutlet weak var Pass: UITextField!
    
    @IBAction func Register(_ sender: Any) {
        
        if (ConfirmPass.text == "") {
            let alertView = UIAlertController(title: "InCorrect Detail", message: "Enter Correct Details", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
        }
        else if(Pass.text == ""){
            let alertView = UIAlertController(title: "InCorrect Detail", message: "Enter Correct Details", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
        }
        else if(Name.text == ""){
            let alertView = UIAlertController(title: "InCorrect Detail", message: "Enter Correct Details", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
        }
        else if(Email.text == ""){
            let alertView = UIAlertController(title: "InCorrect Detail", message: "Enter Correct Details", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
        }
        
            
        else if (Pass.text != ConfirmPass.text) {
            let alertView = UIAlertController(title: "Register fail", message: "Register faild", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            
                
            }))
            
            self.present(alertView, animated: true, completion: nil)

            
        }
        else   {
            let alertView = UIAlertController(title: " Registration Done", message: "You have Succesfully regiterd", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            }
        
    
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc  func dismissKeyboard() {
        view.endEditing(true)

       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
