//
//  BasicInfoFactory.swift
//  TestMedKit
//
//  Created by Student on 2018-05-30.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation
import ResearchKit

class BasicInfoFactory: SurveyFactory {
    
    static func createSteps() -> [ORKStep] {
        let formStep = ORKFormStep(identifier: "SignUpStep", title: "New Patient, please enter your basic information", text: nil)
        
        var formItems: [ORKFormItem] = []
        formItems.append(createFirstNameItem())
        formItems.append(createLastNameItem())
        formItems.append(createGenderItem())
        formItems.append(createDataOfBirthItem())
        formItems.append(createPhoneItem())
        formItems.append(createEmailItem())
        
        formStep.formItems = formItems
        formStep.isOptional = false
        
        return [formStep]
    }
    
    static func createNavigationRule(for orkTask: ORKNavigableOrderedTask) {
        return
    }
    
    static func createResultProcessor() -> SurveyResultProcessor {
        return BasicResultProcessor()
    }
    
    static func getEndpoint() -> String {
        return Server.Endpoints.RegisterNewUser.rawValue
    }
    
    static func createFirstNameItem() -> ORKFormItem {
        let answerFormat = ORKTextAnswerFormat()
        answerFormat.keyboardType = .alphabet
        answerFormat.autocorrectionType = .no
        
        return ORKFormItem(identifier: "FirstNameItem", text: "First Name", answerFormat: answerFormat, optional: false)
    }
    
    static func createLastNameItem() -> ORKFormItem {
        let answerFormat = ORKTextAnswerFormat()
        answerFormat.keyboardType = .alphabet
        answerFormat.autocorrectionType = .no
        
        return ORKFormItem(identifier: "LastNameItem", text: "Last Name", answerFormat: answerFormat, optional: false)
    }
    
    static func createGenderItem() -> ORKFormItem {
        let genders = ["Male", "Female", "Unspecified"]
        
        var choices: [ORKTextChoice] = []
        genders.forEach() { gender in
            choices.append(ORKTextChoice(text: gender, value: gender as NSString))
        }
        
        let answerFormat = ORKValuePickerAnswerFormat(textChoices: choices)
        
        let item = ORKFormItem(identifier: "GenderItem", text: "Gender", answerFormat: answerFormat, optional: false)
        item.placeholder = "click here to pick your gender"
        
        return item
    }
    
    static func createDataOfBirthItem() -> ORKFormItem {
        let answerFormat = ORKDateAnswerFormat(style: .date)

        let item = ORKFormItem(identifier: "DateOfBirthItem", text: "Date of Birth", answerFormat: answerFormat, optional: false)
        item.placeholder = "click here to pick your DOB"
        
        return item
    }
    
    static func createPhoneItem() -> ORKFormItem {
        let answerFormat = ORKTextAnswerFormat()
        answerFormat.keyboardType = .numberPad
        answerFormat.autocorrectionType = .no
        
        return ORKFormItem(identifier: "PhoneItem", text: "Phone Number", answerFormat: answerFormat, optional: true)
    }
    
    static func createEmailItem() -> ORKFormItem {
        let answerFormat = ORKTextAnswerFormat()
        answerFormat.keyboardType = .emailAddress
        answerFormat.autocorrectionType = .no
        
        return ORKFormItem(identifier: "EmailItem", text: "Email Number", answerFormat: answerFormat, optional: true)
    }
}
