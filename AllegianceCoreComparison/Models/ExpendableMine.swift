//
//  ExpendableMine.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ExpendableMine: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let explosivePower: Double
    let triggerRadius: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let explosivePower = Double(csvRow[2]),
              let triggerRadius = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.explosivePower = explosivePower
        self.triggerRadius = triggerRadius
        self.description = csvRow[4]
    }
}
