//
//  LoginViewController.swift
//  HopeWL
//
//  Created by Fuze on 09/05/22.
//

import UIKit
import AVFoundation

class LoginViewController: UIViewController, ViewModelBindable {
    
    var viewModel: LoginViewModel?
    @IBOutlet weak var createAccount: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    func bindViewModel() {
        
    }
    
    func setUpElements() {
        Utilities.styleFilledButton(logInButton)
    }

    @IBAction func createAccountTapped(_ sender: Any) {
        viewModel?.createAccount()
    }

    @IBAction func forgotPasswordTapped(_ sender: Any) {
        viewModel?.forgotPassword()
    }
}
