//
//  Pack.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Pack: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let capacity: Int
    let weight: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let capacity = Int(csvRow[2]),
              let weight = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.capacity = capacity
        self.weight = weight
        self.description = csvRow[4]
    }
}
