//
//  SignUpViewModel.swift
//  wlHope
//
//  Created by Fuze on 13/05/22.
//

import Foundation

protocol SignUpViewModelInput {
    func didTapBack()
}

protocol SignUpViewModelOutput {
    
}

protocol SignUpViewModel: SignUpViewModelInput & SignUpViewModelOutput { }
