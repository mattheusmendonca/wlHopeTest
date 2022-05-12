//
//  DefaultQuestionOneViewModel.swift
//  HopeWL
//
//  Created by Fuze on 10/05/22.
//

import Foundation
import UIKit

struct FormRequest {
    var questionOne: Int
    var questionTwo: Int
    var questionThree: [String: Any]
    var questionFour: Int
}

class DefaultQuestionOneViewModel: QuestionOneViewModel {
    
    weak var coordinator: RegisterCoordinator?
    let options: Observable<[Option]>
    
    init(coordinator: RegisterCoordinator) {
        self.coordinator = coordinator
        self.options = .init(Self.setupOptions())
    }
    
    // MARK: Refatorar
    
    static func setupOptions() -> [Option] {
        let optionOne = Option(imageSelected: UIImage(named: "illustration_addicted_selected"), imageNotSelected: UIImage(named: "illustration_addicted"), title: "Dependente", description: "Sofro com dependência química e busco ajuda", isSelected: false)
        let optionTwo = Option(imageSelected: UIImage(named: "illustration_family_selected"), imageNotSelected: UIImage(named: "illustration_family"), title: "Codependente", description: "Quero ajudar um familiar ou amigo dependente", isSelected: false)
        let optionThree = Option(imageSelected: UIImage(named: "illustration_former_selected"), imageNotSelected: UIImage(named: "illustration_former"), title:  "Exdependente", description: "Saí do mundo das drogas e desejo ajudar outras pessoas", isSelected: false)
        let optionFour = Option(imageSelected: UIImage(named: "illustration_specialist_selected"), imageNotSelected: UIImage(named: "illustration_specialist"), title: "Especialista", description: "Sou especialista e desejo ajudar mais pessoas", isSelected: false)
        let optionFive = Option(imageSelected: UIImage(named: "illustration_communicator_selected"), imageNotSelected: UIImage(named: "illustration_communicator"), title: "Comunicador", description: "Desejo criar conteúdo", isSelected: false)
        
        return [optionOne, optionTwo, optionThree, optionFour, optionFive]
    }
    
    func getNumberOfSections() -> Int {
        return self.options.value.count
    }
    
    func selectedAt(index: Int) {
        if options.value[index].isSelected {
            return
        }
        
        var newOptions = options.value
        newOptions.enumerated().forEach { index,option in
            newOptions[index].isSelected = false
        }
        
        newOptions[index].isSelected = true
        options.value = newOptions
    }
    
    func goBack() {
        coordinator?.dismiss()
    }
    
    func nextQuestion() {
        //implementar proximas questoes e configura-las no coordinator do register
    }

}
