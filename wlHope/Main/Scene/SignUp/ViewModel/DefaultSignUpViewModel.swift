//
//  DefaultSignUpViewModel.swift
//  wlHope
//
//  Created by Fuze on 13/05/22.
//

import Foundation

class DefaultSignUpViewModel: SignUpViewModel {
    
    private weak var coordinator: SignUpCoordinator?
    
    init(coordinator: SignUpCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapBack() {
        coordinator?.dismiss()
    }
    
}
