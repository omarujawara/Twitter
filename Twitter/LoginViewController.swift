//
//  LoginViewController.swift
//  Twitter
//
//  Created by Omaru Jawara on 9/25/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let twitterURL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: twitterURL, success: {
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }, failure: { Error in
            print("Login failed!")
        })
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
