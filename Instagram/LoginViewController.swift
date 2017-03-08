//
//  LoginViewController.swift
//  Instagram
//
//  Created by Rajit Dang on 3/7/17.
//  Copyright © 2017 Rajit Dang. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func OnLoginButtonPressed(_ sender: Any) {
    
    }
    
    
    @IBAction func onSignUpButtonPressed(_ sender: Any) {
        let newUser = PFUser()
        
        newUser.username = usernameField.text
        newUser.password = passwordField.text
        
        newUser.signUpInBackground(block:
            {(success: Bool, error: Error?) -> Void in
                if success {
                    print("A user signed up")
                } else {
                    print(error?.localizedDescription)
                }
        })
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
