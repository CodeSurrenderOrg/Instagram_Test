//
//  ViewController.swift
//  Instagram
//
//  Created by Collins on 1/20/19.
//  Copyright © 2019 Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Visual Objects
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginbutton: UIButton!
    
    //Login function
    @IBAction func login_api_call(_ sender: UIButton) {
        
        let result = api_services().API_SERVICE_LOG_IN(username: username.text!, password: password.text!) { (result) in

            
            print(result!)
            
            
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

