//
//  DefaultLoginViewModel.swift
//  HopeWL
//
//  Created by Fuze on 09/05/22.
//

import Foundation

class DefaultLoginViewModel: LoginViewModel {
    
    private weak var coordinator: MainCoordinator?
    
    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
    }
    
    func createAccount() {
        coordinator?.createAccount()
    }
    
    func forgotPassword() {
        coordinator?.forgotPassword()
    }
}
