//
//  TreasureType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct TreasureType: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let value: Double
    let rarity: String
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let value = Double(csvRow[2]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.value = value
        self.rarity = csvRow[3]
        self.description = csvRow[4]
    }
}
