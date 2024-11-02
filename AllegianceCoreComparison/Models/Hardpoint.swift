//
//  Hardpoint.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Hardpoint: Identifiable, CSVParsable {
    let id: Int
    let type: String
    let capacity: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 4,
              let id = Int(csvRow[0]),
              let capacity = Double(csvRow[2]) else {
            return nil
        }
        self.id = id
        self.type = csvRow[1]
        self.capacity = capacity
        self.description = csvRow[3]
    }
}
