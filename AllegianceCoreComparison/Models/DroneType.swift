//
//  DroneType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct DroneType: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let speed: Double
    let durability: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let speed = Double(csvRow[2]),
              let durability = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.speed = speed
        self.durability = durability
        self.description = csvRow[4]
    }
}
