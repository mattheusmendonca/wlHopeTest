//
//  SignUpViewController.swift
//  wlHope
//
//  Created by Fuze on 13/05/22.
//

import UIKit

class SignUpViewController: UIViewController, ViewModelBindable {

    var viewModel: SignUpViewModel?
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
    }
    
    func bindViewModel() {
        
    }

    func setUpElements() {
        Utilities.styleFilledButton(signUpButton)
    }
    
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        viewModel?.didTapBack()
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        viewModel?.didTapBack()
    }
    
    

}
