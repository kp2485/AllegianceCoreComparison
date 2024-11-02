//
//  GlobalAttribute.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct GlobalAttribute: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let effect: String
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 4,
              let id = Int(csvRow[0]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.effect = csvRow[2]
        self.description = csvRow[3]
    }
}
