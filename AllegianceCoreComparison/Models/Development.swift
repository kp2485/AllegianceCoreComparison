//
//  Development.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Development: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let cost: Double
    let duration: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let cost = Double(csvRow[2]),
              let duration = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.cost = cost
        self.duration = duration
        self.description = csvRow[4]
    }
}
