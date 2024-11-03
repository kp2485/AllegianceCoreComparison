//
//  Development.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Development: Identifiable, CSVParsable {
    let id: Int
    let completionSfxId: Int
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
        // Ensure the CSV row has at least 11 columns
        guard csvRow.count >= 11 else {
            print("Invalid CSV row: Not enough columns.")
            return nil
        }
        
        // Parse and validate integer fields
        guard let id = Int(csvRow[0]),
              let completionSfxId = Int(csvRow[1]),
              let price = Int(csvRow[2]),
              let timeToBuild = Int(csvRow[3]),
              let group = Int(csvRow[8]) else {
            print("Invalid data types in CSV row: \(csvRow)")
            return nil
        }
        
        // Assign string fields
        self.id = id
        self.completionSfxId = completionSfxId
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[4]
        self.iconName = csvRow[5]
        self.name = csvRow[6]
        self.description = csvRow[7]
        self.group = group
        self.techRequired = csvRow[9]
        self.techEffect = csvRow[10]
    }
}

