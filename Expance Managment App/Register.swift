//
//  Register.swift
//  Expance Managment App
//
//  Created by Nilrajsinh Vaghela on 09/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class Register: UIViewController {
    @IBOutlet weak var ConfirmPass: UITextField!
    
    @IBOutlet weak var Pass: UITextField!
    
    @IBAction func Register(_ sender: Any) {
        
        if (ConfirmPass.text == ""), (Pass.text == "") {
            let alertView = UIAlertController(title: "Correct Detail", message: "Enter Correct Password", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            
        }
        else if (Pass.text == ConfirmPass.text){
            let alertView = UIAlertController(title: "Register Succesful", message: "Register Succesful", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            
                
            }))
            
            self.present(alertView, animated: true, completion: nil)

            
        }
        else if (Pass.text != ConfirmPass.text) {
            let alertView = UIAlertController(title: "Incorrect Password", message: "Register fail", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            }
        
    
        
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
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
