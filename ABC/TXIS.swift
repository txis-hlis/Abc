//
//  TXIS.swift
//  TXIS-SDK
//
//  Created by hyperlink on 27/01/20.
//  Copyright © 2020 TXIS. All rights reserved.
//

@_exported import UIKit

import FirebaseCore
import FirebaseAuth
import FirebaseMessaging



public class TXIS: NSObject {
    
    public static let shared: TXIS = TXIS()
    
    public var applicationID: String! = "" {
        didSet {
            print("Your application ID is:", applicationID as Any)
        }
    }
    
    public func initialize() {
        let TxisBundle = Bundle.init(for: TXIS.self)
        if let filepath = TxisBundle.path(forResource: "GoogleService-Info", ofType: "plist"), let options = FirebaseOptions(contentsOfFile: filepath) {
            FirebaseApp.configure(options: options)
            //            Messaging.messaging().delegate = self
        }
    }
    
    public override init() {
        super.init()
        
    }

    public func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
           if let er = error {
            print("Error in Login", er.localizedDescription)
               
               return
           }
            
            print("Successful Login")
        }
    }
}
