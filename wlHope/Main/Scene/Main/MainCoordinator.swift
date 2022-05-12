//
//  ViewController.swift
//  HopeWL
//
//  Created by Fuze on 09/05/22.
//

import Foundation
import UIKit

class MainCoordinator: NavigationCoordinator {
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UINavigationController()
    }
    
    func start() {
        let loginViewController = LoginViewController()
        let loginViewModel = DefaultLoginViewModel(coordinator: self)
        loginViewController.bind(to: loginViewModel)
        self.rootViewController.isNavigationBarHidden = true
        self.rootViewController.viewControllers = [loginViewController]
    }
    
    func createAccount() {
        let profileTypesCoordinator = ProfileTypesCoordinator()
        self.start(coordinator: profileTypesCoordinator)
        self.rootViewController.present(profileTypesCoordinator.rootViewController, animated: true, completion: nil)
    }
    
    func forgotPassword() {
        let forgotPasswordCoordinator = ForgotPasswordCoordinator()
        self.start(coordinator: forgotPasswordCoordinator)
        self.rootViewController.present(forgotPasswordCoordinator.rootViewController, animated: true, completion: nil)
    }
    
    //implementação do coordinator dos tipos de registro que equivale
    //ao register do hope
    //criar duas viewModel e duas ViewController
}

