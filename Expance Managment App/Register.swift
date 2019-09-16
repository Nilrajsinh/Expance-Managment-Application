//
//  Register.swift
//  Expance Managment App
//
//  Created by Nilrajsinh Vaghela on 09/09/19.
//  Copyright © 2019 Cyphers. All rights reserved.
//

import UIKit

class Register: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == Country {
            return CountryList.count
        } else if pickerView == Gender {
            return GenderList.count
        }
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == Country {
            return CountryList[row]
        } else if pickerView == Gender {
            return GenderList[row]
        }
        return ""
    }
    
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var ConfirmPass: UITextField!
    
    @IBOutlet weak var Pass: UITextField!
    
   // @IBOutlet weak var Gender: UISegmentedControl!
    
    @IBOutlet weak var Country: UIPickerView!
    
    @IBOutlet weak var Gender: UIPickerView!
    
    
    
    var CountryList = ["India","Canada","U.S.A.","Other"]
    var GenderList = ["Male","Female","Other"]
    
    
    @IBAction func ShowPass(_ sender: Any) {
     
            Pass.isSecureTextEntry = !(Pass.isSecureTextEntry)
        
        ConfirmPass.isSecureTextEntry = !(ConfirmPass.isSecureTextEntry)
        
    }
    
    
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
        
            
       else if Pass.text! == ConfirmPass.text! {
            let alertView = UIAlertController(title: "Registration Done", message: "You have Succesfully regiterd", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            
                
            }))
            
            self.present(alertView, animated: true, completion: nil)

            
        }
        else   {
            let alertView = UIAlertController(title: " Registration faild", message: "Password did not match", preferredStyle: .alert)
            
            alertView.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                
            }))
            
            self.present(alertView, animated: true, completion: nil)
            }
        
        
        print(self.ConfirmPass.text)
        print(self.Email.text)
        print(self.Name.text)
        print(self.Pass.text)
        
       // print(self.Gender.selectedRow(inComponent: 0).description)
    
      

    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        Country.delegate = self
        Gender.delegate = self
        
    }
    
    @objc  func dismissKeyboard() {
        view.endEditing(true)

       
    }
    
    
    //add image to register form
    
    @IBOutlet weak var UserImageView: UIImageView!
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        let Image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        UserImageView.image = Image
        self.dismiss(animated: true, completion: nil)
        
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    
    }
    
    
    var ImagePickerController:UIImagePickerController!
    
    
    @IBAction func pickImage(_ sender: UIButton) {
        
        
        ImagePickerController = UIImagePickerController()
        ImagePickerController.delegate = self
        ImagePickerController.sourceType = .photoLibrary
        
      //  self.navigationController.pushViewController(ImagePickerController, animated: true)
        self.present(ImagePickerController, animated: true, completion: nil)
        
        
        
    }
    
}
