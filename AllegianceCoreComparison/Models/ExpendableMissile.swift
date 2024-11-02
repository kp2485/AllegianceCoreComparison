//
//  ExpendableMissile.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ExpendableMissile: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let damage: Double
    let speed: Double
    let range: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 6,
              let id = Int(csvRow[0]),
              let damage = Double(csvRow[2]),
              let speed = Double(csvRow[3]),
              let range = Double(csvRow[4]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.damage = damage
        self.speed = speed
        self.range = range
        self.description = csvRow[5]
    }
}
