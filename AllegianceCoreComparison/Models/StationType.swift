//
//  StationType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct StationType: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let defenseRating: Double
    let capacity: Int
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let defenseRating = Double(csvRow[2]),
              let capacity = Int(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.defenseRating = defenseRating
        self.capacity = capacity
        self.description = csvRow[4]
    }
}
