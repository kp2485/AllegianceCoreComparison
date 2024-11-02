//
//  ExpendableProbe.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ExpendableProbe: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let range: Double
    let duration: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let range = Double(csvRow[2]),
              let duration = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.range = range
        self.duration = duration
        self.description = csvRow[4]
    }
}
