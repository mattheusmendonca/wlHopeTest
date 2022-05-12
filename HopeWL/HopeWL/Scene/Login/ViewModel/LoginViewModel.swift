//
//  LoginViewModel.swift
//  HopeWL
//
//  Created by Fuze on 09/05/22.
//

import Foundation

protocol LoginViewModelInput {
    func createAccount()
    func forgotPassword()
}

protocol LoginViewModelOutput {
    
}

protocol LoginViewModel: LoginViewModelInput & LoginViewModelOutput { }

