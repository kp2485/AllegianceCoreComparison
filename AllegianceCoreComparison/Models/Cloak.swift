//
//  Cloak.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Cloak: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let energyConsumption: Double
    let effectiveness: Double
    let cooldown: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 6,
              let id = Int(csvRow[0]),
              let energyConsumption = Double(csvRow[2]),
              let effectiveness = Double(csvRow[3]),
              let cooldown = Double(csvRow[4]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.energyConsumption = energyConsumption
        self.effectiveness = effectiveness
        self.cooldown = cooldown
        self.description = csvRow[5]
    }
}
