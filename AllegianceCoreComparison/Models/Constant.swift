//
//  Constant.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Constant: Identifiable, CSVParsable {
    let id: Int
    let globalValue: Double
    let comment: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 3,
              let id = Int(csvRow[0]),
              let globalValue = Double(csvRow[1]) else {
            return nil
        }
        self.id = id
        self.globalValue = globalValue
        self.comment = csvRow[2]
    }
}

