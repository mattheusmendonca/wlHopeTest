//
//  ProfileTypesViewModel.swift
//  wlHope
//
//  Created by Fuze on 12/05/22.
//

import Foundation
import UIKit

struct Option: Equatable {
    var imageSelected: UIImage?
    var imageNotSelected: UIImage?
    var title: String
    var description: String
    var isSelected: Bool
}

protocol ProfileTypesViewModelInput {
    func getNumberOfSections() -> Int
    func selectedAt(index: Int)
    func goBack()
    func nextQuestion()
}

protocol ProfileTypesViewModelOutput {
    
}

protocol ProfileTypesViewModel: ProfileTypesViewModelInput & ProfileTypesViewModelOutput {}
