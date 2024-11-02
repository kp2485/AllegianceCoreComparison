//
//  Civilization.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Civilization: Identifiable, CSVParsable {
    let id: Int
    let incomeModifier: Double
    let bonusModifier: Double
    let name: String
    let icon: String
    let hud: String
    let podHullTypeID: Int
    let initialStationTypeID: Int
    let startingTech: String
    let startingTechNodev: String

    init?(csvRow: [String]) {
        guard csvRow.count == 10,
              let id = Int(csvRow[0]),
              let incomeModifier = Double(csvRow[1]),
              let bonusModifier = Double(csvRow[2]),
              let podHullTypeID = Int(csvRow[6]),
              let initialStationTypeID = Int(csvRow[7]) else {
            return nil
        }

        self.id = id
        self.incomeModifier = incomeModifier
        self.bonusModifier = bonusModifier
        self.name = csvRow[3]
        self.icon = csvRow[4]
        self.hud = csvRow[5]
        self.podHullTypeID = podHullTypeID
        self.initialStationTypeID = initialStationTypeID
        self.startingTech = csvRow[8]
        self.startingTechNodev = csvRow[9]
    }
}
