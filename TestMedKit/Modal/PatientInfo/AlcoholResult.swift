//
//  AlcoholInfo.swift
//  TestMedKit
//
//  Created by Student on 2018-04-09.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation
import ResearchKit

class AlcoholResult: SurveyResult, Codable {
    var drinkAlcohol: Bool = false
    var amountOfCups: Int? = nil
    var everDrinkAlcohol: Bool = false
    var hasQuitDrinking: Bool? = nil
    var amountOfCupsForEverDrinking: Int? = nil
    var exposedToHazardousInstances: Bool = false
    var hazardousInstances: [String]? = nil
    var usedProducts: Bool = false
    var products: [String]? = nil
}
