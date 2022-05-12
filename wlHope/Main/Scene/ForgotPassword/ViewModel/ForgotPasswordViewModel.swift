//
//  ForgotPasswordViewModel.swift
//  wlHope
//
//  Created by Fuze on 11/05/22.
//

import Foundation
import UIKit

protocol ForgotPasswordViewModelInput {
    func didTapBackButton()
    func didTapBack()
}

protocol ForgotPasswordViewModelOutput {

}

protocol ForgotPasswordViewModel: ForgotPasswordViewModelInput & ForgotPasswordViewModelOutput {}
