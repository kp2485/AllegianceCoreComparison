//
//  ExpendableChaff.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ExpendableChaff: Identifiable, CSVParsable {
    let id: Int
    let strength: Double
    let loadTime: Int
    let lifeSpan: Int
    let signature: Int
    let hitPoints: Int
    let defenseConstantID: String
    let abilities: String
    let iconName: String
    let colorRGBA: String
    let radius: Int
    let rotation: Int
    let modelName: String
    let textureName: String
    let launcherSignature: Double
    let mass: Double
    let partMask: Int
    let expendableSize: Int
    let copyOfName: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 19,
              let id = Int(csvRow[0]),
              let strength = Double(csvRow[1]),
              let loadTime = Int(csvRow[2]),
              let lifeSpan = Int(csvRow[3]),
              let signature = Int(csvRow[4]),
              let hitPoints = Int(csvRow[5]),
              let defenseConstantID = csvRow[6].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "N/A" : csvRow[6],
              let abilities = csvRow[7].trimmingCharacters(in: .whitespacesAndNewlines),
              let iconName = csvRow[8].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[8],
              let colorRGBA = csvRow[9].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "0 0 0 0" : csvRow[9],
              let radius = Int(csvRow[10]),
              let rotation = Int(csvRow[11]),
              let modelName = csvRow[12].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[12],
              let textureName = csvRow[13].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "Unknown" : csvRow[13],
              let launcherSignature = Double(csvRow[14]),
              let mass = Double(csvRow[15]),
              let partMask = Int(csvRow[16]),
              let expendableSize = Int(csvRow[17]),
              let copyOfName = csvRow[18].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? "N/A" : csvRow[18]
        else {
            return nil
        }

        self.id = id
        self.strength = strength
        self.loadTime = loadTime
        self.lifeSpan = lifeSpan
        self.signature = signature
        self.hitPoints = hitPoints
        self.defenseConstantID = defenseConstantID
        self.abilities = abilities
        self.iconName = iconName
        self.colorRGBA = colorRGBA
        self.radius = radius
        self.rotation = rotation
        self.modelName = modelName
        self.textureName = textureName
        self.launcherSignature = launcherSignature
        self.mass = mass
        self.partMask = partMask
        self.expendableSize = expendableSize
        self.copyOfName = copyOfName
    }
}
