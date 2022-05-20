//
//  SignUpCoordinator.swift
//  wlHope
//
//  Created by Fuze on 13/05/22.
//

import Foundation
import UIKit

class SignUpCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var viewModel: SignUpViewModel?
    
    init() {
        self.rootViewController = UINavigationController()
        self.viewModel = DefaultSignUpViewModel(coordinator: self)
    }
    
    func start() {
        let signUpViewController = SignUpViewController()
        signUpViewController.bind(to: self.viewModel!)
        self.rootViewController.isNavigationBarHidden = true
        self.rootViewController.viewControllers = [signUpViewController]
        self.rootViewController.modalPresentationStyle = .fullScreen
    }
    
    func dismiss() {
        self.rootViewController.dismiss(animated: true) {
            self.isCompleted?()
        }
    }
}
