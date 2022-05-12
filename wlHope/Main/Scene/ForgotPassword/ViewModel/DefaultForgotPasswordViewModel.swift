//
//  DefaultForgotPasswordViewModel.swift
//  wlHope
//
//  Created by Fuze on 11/05/22.
//

import Foundation
import UIKit

class DefaultForgotPasswordViewModel: ForgotPasswordViewModel {
    
    weak var coordinator: ForgotPasswordCoordinator?
    
    init(coordinator: ForgotPasswordCoordinator){
        self.coordinator = coordinator
    }
    
    func didTapBackButton() {
        coordinator?.goBack()
    }

    func didTapBack() {
        self.coordinator?.dismiss()
    }
}
