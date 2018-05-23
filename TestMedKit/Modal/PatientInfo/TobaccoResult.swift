//
//  TabaccoInfo.swift
//  TestMedKit
//
//  Created by Student on 2018-04-03.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation
import ResearchKit

class TobaccoResult: SurveyResult, Codable {
    var useTobacco: Bool = false
    var everUseTobacco: Bool = false
    var selectedTobaccoProducts: [String]? = nil
    var startDates: [String]? = nil
    var amounts: [Int]? = nil
    
    var selectedTobaccoProductsForEverSmoke: [String]? = nil
    var startDatesForEverSmoke: [String]? = nil
    var amountsForEverSmoke: [Int]? = nil
    
//    enum TobaccoResultKeys: String, CodingKey {
//        case useTobacco
//        case everUseTobacco
//        case selectedTobaccoProducts
//        case startDates
//        case amounts
//        case selectedTobaccoProductsForEverSmoke
//        case startDatesForEverSmoke
//        case amountsForEverSmoke
//    }
    
//    override func encode(to encoder: Encoder) throws {
//        //try super.encode(to: encoder)
//        var container = encoder.container(keyedBy: TobaccoResultKeys.self)
//        try container.encode(useTobacco, forKey: TobaccoResultKeys.useTobacco)
//        try container.encode(everUseTobacco, forKey: TobaccoResultKeys.everUseTobacco)
//        try container.encode(selectedTobaccoProducts, forKey: TobaccoResultKeys.selectedTobaccoProducts)
//        try container.encode(startDates, forKey: TobaccoResultKeys.startDates)
//        try container.encode(amounts, forKey: TobaccoResultKeys.amounts)
//        try container.encode(selectedTobaccoProductsForEverSmoke, forKey: TobaccoResultKeys.selectedTobaccoProductsForEverSmoke)
//        try container.encode(startDatesForEverSmoke, forKey: TobaccoResultKeys.startDatesForEverSmoke)
//        try container.encode(amountsForEverSmoke, forKey: TobaccoResultKeys.amountsForEverSmoke)
//    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: TobaccoResultKeys.self)
//        useTobacco = try container.decode(Bool.self, forKey: .useTobacco)
//        everUseTobacco = try container.decode(Bool.self, forKey: .everUseTobacco)
//        selectedTobaccoProducts = try container.decodeIfPresent([String].self, forKey: .selectedTobaccoProducts)
//        startDates = try container.decodeIfPresent([String].self, forKey: .startDates)
//        amounts = try container.decodeIfPresent([Int].self, forKey: .amounts)
//        selectedTobaccoProductsForEverSmoke = try container.decodeIfPresent([String].self, forKey: .selectedTobaccoProductsForEverSmoke)
//        startDatesForEverSmoke = try container.decodeIfPresent([String].self, forKey: .startDatesForEverSmoke)
//        amountsForEverSmoke = try container.decodeIfPresent([Int].self, forKey: .amountsForEverSmoke)
//
//        super.init()
//    }
//
//    override init() {
//        super.init()
//    }
}
