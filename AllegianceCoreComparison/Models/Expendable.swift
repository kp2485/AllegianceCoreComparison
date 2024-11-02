//
//  Expendable.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Expendable: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let type: String
    let cost: Double
    let weight: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 6,
              let id = Int(csvRow[0]),
              let cost = Double(csvRow[2]),
              let weight = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.type = csvRow[2]
        self.cost = cost
        self.weight = weight
        self.description = csvRow[5]
    }
}
