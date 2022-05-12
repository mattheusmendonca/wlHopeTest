//
//  Utilities.swift
//  Hope
//
//  Created by Daniel on 4/26/21.
//  Copyright © 2021 Catarina Serrano. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class Utilities {
    
    static func styleTextField(_ textfield: UITextField) {
        textfield.layer.borderColor = UIColor.black.cgColor
        textfield.layer.borderWidth = 2
        textfield.layer.cornerRadius = 5
        
    }
    
    static func styleFilledButton(_ button: UIButton) {
//      button.backgroundColor = UIColor.init(red: 69/255, green: 7/255, blue: 161/255, alpha: 1)
        button.layer.cornerRadius = 10.0
        button.tintColor = UIColor.white
    }
    
    static func styleBorderIcon(_ button: UIButton) {
        button.backgroundColor = .clear
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.init(red: 69/255, green: 7/255, blue: 161/255, alpha: 1).cgColor
    }
    
    static func styleHollowButton(_ button: UIButton) {
        button.layer.borderWidth = 2
//        if let url = Bundle.main.infoDictionary[(PRODUCT_MODULE_NAME).SceneDelegate]{
//
//        }
        //button.layer.borderColor = UIColor.init(red: 69/255, green: 7/255, blue: 161/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10
        //button.tintColor = UIColor.black
    }
    
    static func styleShadyButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.backgroundColor = UIColor.init(red: 237/255, green: 225/255, blue: 255/255, alpha: 1)
        button.layer.borderColor = UIColor.init(red: 237/255, green: 225/255, blue: 255/255, alpha: 1).cgColor
        button.layer.cornerRadius = 10.0
        button.tintColor = UIColor.black
    }
    
    static func addRightImageEmail(_ textfield: UITextField, andImage img: UIImage) {
        let rightImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width, height: img.size.height))
        rightImageView.image = img
        textfield.rightView = rightImageView
        textfield.rightViewMode = .always
    }
    
    static func styleCircleButton(_ button: UIButton) {
        button.backgroundColor = UIColor.init(red: 69/255, green: 7/255, blue: 161/255, alpha: 1)
        button.layer.cornerRadius = 10.0
        button.tintColor = UIColor.white
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        
        button.layer.shadowColor = UIColor(red: 69/255, green: 7/255, blue: 161/255, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 1.5, height: 2.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
        
    }
    
    static func styleTypeUser(_ view: UIView) {
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.init(red: 223/255, green: 226/255, blue: 232/255, alpha: 1).cgColor
        view.layer.cornerRadius = 13.0
    }
}
