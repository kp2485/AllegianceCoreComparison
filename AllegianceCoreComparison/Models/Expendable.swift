//
//  Expendable.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Expendable: Identifiable, CSVParsable {
    let id: Int
    let partID: Int
    let amount: Int
    let successorPartID: Int
    let launchCount: Int
    let inventoryModel: String
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
        guard csvRow.count >= 15,
              let id = Int(csvRow[0]),
              let partID = Int(csvRow[1]),
              let amount = Int(csvRow[2]),
              let successorPartID = Int(csvRow[3]),
              let launchCount = Int(csvRow[4]),
              let price = Int(csvRow[6]),
              let timeToBuild = Int(csvRow[7]),
              let group = Int(csvRow[12])
        else {
            print("Invalid data types in CSV row: \(csvRow)")
            return nil
        }

        self.id = id
        self.partID = partID
        self.amount = amount
        self.successorPartID = successorPartID
        self.launchCount = launchCount
        self.inventoryModel = csvRow[5].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[5]
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[8].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[8]
        self.iconName = csvRow[9].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[9]
        self.name = csvRow[10].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unnamed" : csvRow[10]
        self.description = csvRow[11].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "No Description" : csvRow[11]
        self.group = group
        self.techRequired = csvRow[13].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "None" : csvRow[13]
        self.techEffect = csvRow[14].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "None" : csvRow[14]
    }
}
