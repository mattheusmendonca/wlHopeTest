//
//  ForgotPasswordCoordinator.swift
//  wlHope
//
//  Created by Fuze on 11/05/22.
//

import Foundation
import UIKit

class ForgotPasswordCoordinator: NavigationCoordinator {
    var isCompleted: (() -> Void)?
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    var forgotPasswordViewModel: ForgotPasswordViewModel?

    init() {
        self.rootViewController = UINavigationController()
        self.forgotPasswordViewModel = DefaultForgotPasswordViewModel(coordinator: self)
    }
    
    func start() {
        let forgotPasswordViewController = ForgotPasswordViewController()
        forgotPasswordViewController.bind(to: forgotPasswordViewModel!)
        self.rootViewController.isNavigationBarHidden = true
        self.rootViewController.viewControllers = [forgotPasswordViewController]
        self.rootViewController.modalPresentationStyle = .fullScreen
    }
    
    func goBack() {
        self.rootViewController.popViewController(animated: true)
        self.rootViewController.isNavigationBarHidden = true
    }
    
    func dismiss() {
        self.rootViewController.dismiss(animated: true) {
            self.isCompleted?()
        }
    }
}
