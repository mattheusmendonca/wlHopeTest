//
//  RegisterCoordinator.swift
//  HopeWL
//
//  Created by Fuze on 09/05/22.
//

import Foundation
import UIKit

class RegisterCoordinator: NavigationCoordinator {
    var rootViewController: UINavigationController
    var childCoordinators = [Coordinator]()
    var isCompleted: (() -> Void)?
    
    var questionOneViewModel: QuestionOneViewModel?
    
    init(rootViewController: UINavigationController = UINavigationController()) {
        self.rootViewController = rootViewController
        //chamar a primeira questão
    }
    
    func start() {
        let questionOneViewController = QuestionOneViewController()
        questionOneViewController.bind(to: self.questionOneViewModel!)
        self.rootViewController.isNavigationBarHidden = true
        self.rootViewController.viewControllers = [questionOneViewController]
        self.rootViewController.modalPresentationStyle = .fullScreen
    }
    
    func dismiss() {
        self.rootViewController.dismiss(animated: true) {
            self.isCompleted?()
        }
    }
}
