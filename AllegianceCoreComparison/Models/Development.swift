//
//  Development.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Development: Identifiable, CSVParsable {
    let id: Int
    let completionSFXID: Int
    let price: Int
    let timeToBuild: Int
    let modelName: String
    let iconName: String
    let name: String
    let description: String
    let group: Int
    let techRequired: String
    let techEffect: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 11,
              let id = Int(csvRow[0]),
              let completionSFXID = Int(csvRow[1]),
              let price = Int(csvRow[2]),
              let timeToBuild = Int(csvRow[3]),
              let group = Int(csvRow[8])
        else {
            print("Invalid data types in CSV row: \(csvRow)")
            return nil
        }

        self.id = id
        self.completionSFXID = completionSFXID
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[4].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[4]
        self.iconName = csvRow[5].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[5]
        self.name = csvRow[6].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unnamed" : csvRow[6]
        self.description = csvRow[7].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "No Description" : csvRow[7]
        self.group = group
        self.techRequired = csvRow[9].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "None" : csvRow[9]
        self.techEffect = csvRow[10].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "None" : csvRow[10]
    }
}
