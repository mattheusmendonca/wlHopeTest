//
//  ForgotPasswordViewController.swift
//  wlHope
//
//  Created by Fuze on 11/05/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController, ViewModelBindable {

    var viewModel: ForgotPasswordViewModel?
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupElements()
    }
    
    func bindViewModel() {
        
    }
    
    func setupElements() {
        Utilities.styleFilledButton(sendButton)
    }

    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        viewModel?.didTapBack()
    }
    
    @IBAction func backButton(_ sender: Any) {
        viewModel?.didTapBack()
    }
}
