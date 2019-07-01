//
//  CreateAccountVC.swift
//  Arcab
//
//  Created by Khalid Ahli on 11/25/17.
//  Copyright © 2017 Khalid Ahli. All rights reserved.
//

import UIKit
import FirebaseAuth

private let WELCOME_SEGUE1 = "welcomeSegue"
class CreateAccountVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        if emailTextField.text != nil && passwordTextField.text !=  nil{
            AuthProvider.Instance.signUp(withEmail: emailTextField.text!, password: passwordTextField.text!, loginHandler: {
                (message) in
                if message != nil {
                    //print("WE have an Error \(error)")
                    self.alertTheUser(title: "Problem with creating A New User", message: message!)
                    
                }else {
                    //perform Segue
                    
                    self.performSegue(withIdentifier: WELCOME_SEGUE1, sender: nil)
                }
            } )
            
        }
        else{
            self.alertTheUser(title: "Email and Password is required", message: "Please Enter the Email and Password in the textfield below")
            
        }    }
    
    private func alertTheUser(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(ok)
        self.present(alert, animated: false, completion: nil)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}


