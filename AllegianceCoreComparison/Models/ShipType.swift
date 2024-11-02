//
//  ShipType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ShipType: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let speed: Double
    let armor: Double
    let crewCapacity: Int
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 6,
              let id = Int(csvRow[0]),
              let speed = Double(csvRow[2]),
              let armor = Double(csvRow[3]),
              let crewCapacity = Int(csvRow[4]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.speed = speed
        self.armor = armor
        self.crewCapacity = crewCapacity
        self.description = csvRow[5]
    }
}
