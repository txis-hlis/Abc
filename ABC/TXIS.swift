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
        FirebaseApp.configure()
    }
    
    public override init() {
        super.init()
        
    }

}
