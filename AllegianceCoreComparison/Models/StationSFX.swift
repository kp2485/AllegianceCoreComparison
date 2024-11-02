//
//  StationSFX.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct StationSFX: Identifiable, CSVParsable {
    let id: Int
    let name: String
    let soundEffectID: Int
    let volume: Double
    let description: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 5,
              let id = Int(csvRow[0]),
              let soundEffectID = Int(csvRow[2]),
              let volume = Double(csvRow[3]) else {
            return nil
        }
        self.id = id
        self.name = csvRow[1]
        self.soundEffectID = soundEffectID
        self.volume = volume
        self.description = csvRow[4]
    }
}
