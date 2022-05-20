//
//  DefaultProfileTypesViewModel.swift
//  wlHope
//
//  Created by Fuze on 12/05/22.
//

import Foundation
import UIKit

struct FormRequest {
    var questionOne: Int
    var questionTwo: Int
    var questionThree: [String: Any]
    var questionFour: Int
}

class DefaultProfileTypesViewModel: ProfileTypesViewModel {
    
    weak var coordinator: ProfileTypesCoordinator?
    var options: Observable<[Option]>

    init(coordinator: ProfileTypesCoordinator) {
        self.coordinator = coordinator
        self.options = .init(Self.setupOptions())
    }
    

    static func setupOptions() -> [Option] {
        #if HOPE
        let optionOne = Option(imageSelected: UIImage(named: "Option1.2"), imageNotSelected: UIImage(named: "Option1"), title: "Dependente", description: "Sofro com dependência química e busco ajuda", isSelected: false)
        let optionTwo = Option(imageSelected: UIImage(named: "Option2.2"), imageNotSelected: UIImage(named: "Option2"), title: "Codependente", description: "Quero ajudar um familiar ou amigo dependente", isSelected: false)
        let optionThree = Option(imageSelected: UIImage(named: "Option3.2"), imageNotSelected: UIImage(named: "Option3"), title:  "Exdependente", description: "Saí do mundo das drogas e desejo ajudar outras pessoas", isSelected: false)
        let optionFour = Option(imageSelected: UIImage(named: "Option4.2"), imageNotSelected: UIImage(named: "Option4"), title: "Especialista", description: "Sou especialista e desejo ajudar mais pessoas", isSelected: false)
        let optionFive = Option(imageSelected: UIImage(named: "Option5.2"), imageNotSelected: UIImage(named: "Option5"), title: "Comunicador", description: "Desejo criar conteúdo", isSelected: false)
        
        return [optionOne, optionTwo, optionThree, optionFour, optionFive]
        #endif
        
        let optionOneFilhas = Option(imageSelected: UIImage(named: "Option1"), imageNotSelected: UIImage(named: "Option1"), title: "Paciente", description: "Sofro com dependência química e busco ajuda", isSelected: false)
        let optionTwoFilhas = Option(imageSelected: UIImage(named: "Option2"), imageNotSelected: UIImage(named: "Option2"), title: "Cuidador", description: "Quero ajudar um familiar ou amigo dependente", isSelected: false)
        let optionThreeFilhas = Option(imageSelected: UIImage(named: "Option3"), imageNotSelected: UIImage(named: "Option3"), title:  "Grupo de apoio", description: "Saí do mundo das drogas e desejo ajudar outras pessoas", isSelected: false)
        
        return [optionOneFilhas, optionTwoFilhas, optionThreeFilhas]
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
        
    }
    
    func pushAnswer() -> Int {
        var index: Int = 0
        
        for option in options.value {
            if option.isSelected {
                return index + 1
            }
            index += 1
        }
        
        return -1
    }
}


