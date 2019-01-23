//
//  end_points.swift
//  Instagram
//
//  Created by Collins on 1/21/19.
//  Copyright © 2019 Collins. All rights reserved.
//

import Foundation

struct EndPoints {
    
    static let BASE_URL = URL(string: "https://www.instagram.com")!
    static let ACCESS_TOKEN_URL = "https://www.instagram.com"
    
    static var LOGIN: URL {
        get {
            return URL(string: BASE_URL.absoluteString + "/developer/endpoints/users/self")!
        }
    }
    
    static var MEDIA: URL {
        get {
            return URL(string: BASE_URL.absoluteString + " /developer/endpoints/users/self/media/recent")!
        }
    }
    
    static var ACCESS_TOKEN_REQUEST: URL {
        get {
            return URL(string: BASE_URL.absoluteString + "/oauth/authorize/?client_id=3f0ba83c06cc49c09533b611ff96b322&redirect_uri=http://www.Digiduka.com&response_type=token")!
        }
    }
    
}
