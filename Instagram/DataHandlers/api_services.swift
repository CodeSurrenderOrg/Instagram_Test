//
//  api_services.swift
//  Instagram
//
//  Created by Collins on 1/21/19.
//  Copyright © 2019 Collins. All rights reserved.
//

import UIKit

class api_services: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func API_SERVICE_LOG_IN(username: String, password: String,  completion: @escaping (Any?) -> Void) {
        
        
        let postString = "username="+String(username)+"&password="+password
        
        var request = URLRequest(url: EndPoints.ACCESS_TOKEN_REQUEST)
        request.httpMethod = "POST"
        request.timeoutInterval = 100
        
        //request.httpBody = postString.data(using: .utf8)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            //print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
            
            DispatchQueue.main.async() {
                
                let errorCode = (error as? NSError)?.code
                
                //print("errorCode")
                //print(errorCode)
                
                //print("errorCode")
                //print(error)
                
                let url_returned = response.unsafelyUnwrapped
                let url_returned2 = response?.url
                let url_returned3 = response.customMirror
                let url_return4 = response?.url?.absoluteURL

                print("URL")
                print(url_returned)
                print(url_returned2)

                
                if errorCode == -1001 {
                    
                    completion(data)
                    
                } else {
                    
                    let b = completion(data)
                    let a  = String(data: data!, encoding: String.Encoding.utf8) as String!
                    print("Str_response")
                    print(a)
                }
                
            }
        }
        task.resume()
        
        
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
