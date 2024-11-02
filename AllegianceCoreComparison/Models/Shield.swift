//
//  Shield.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Shield: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let capacity: Double
    let rechargeRate: Double
    let efficiency: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 6,
              let id = Int(csvRow[0]),
              let capacity = Double(csvRow[2]),
              let rechargeRate = Double(csvRow[3]),
              let efficiency = Double(csvRow[4]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.capacity = capacity
        self.rechargeRate = rechargeRate
        self.efficiency = efficiency
        self.description = csvRow[5]
    }
}
