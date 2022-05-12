//
//  QuestionOneViewModel.swift
//  HopeWL
//
//  Created by Fuze on 10/05/22.
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

protocol QuestionOneViewModelInput {
    func getNumberOfSections() -> Int
    func selectedAt(index: Int)
    func goBack()
    func nextQuestion()
}

protocol QuestionOneViewModelOutput {
    var options: Observable<[Option]> { get }
}

protocol QuestionOneViewModel: QuestionOneViewModelInput & QuestionOneViewModelOutput {}
