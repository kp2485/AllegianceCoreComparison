//
//  ProjectileType.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct ProjectileType: Identifiable, CSVParsable {
    let id: Int
    let power: Double
    let blastPower: Double
    let blastRadius: Double
    let speed: Double
    let lifeSpan: Double
    let damageType: String
    let absolute: Bool
    let directional: Bool
    let width: Double
    let ambientSfxID: Int
    let colorRGBA: String
    let radius: Double
    let rotation: Double
    let modelName: String
    let textureName: String
    let copyOfNames: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 16,
              let id = Int(csvRow[0]),
              let power = Double(csvRow[1]),
              let blastPower = Double(csvRow[2]),
              let blastRadius = Double(csvRow[3]),
              let speed = Double(csvRow[4]),
              let lifeSpan = Double(csvRow[5]),
              let absolute = Bool(csvRow[7]),
              let directional = Bool(csvRow[8]),
              let width = Double(csvRow[9]),
              let ambientSfxID = Int(csvRow[10]),
              let radius = Double(csvRow[12]),
              let rotation = Double(csvRow[13]) else {
            return nil
        }

        self.id = id
        self.power = power
        self.blastPower = blastPower
        self.blastRadius = blastRadius
        self.speed = speed
        self.lifeSpan = lifeSpan
        self.damageType = csvRow[6]
        self.absolute = absolute
        self.directional = directional
        self.width = width
        self.ambientSfxID = ambientSfxID
        self.colorRGBA = csvRow[11]
        self.radius = radius
        self.rotation = rotation
        self.modelName = csvRow[14]
        self.textureName = csvRow[15]
        self.copyOfNames = csvRow[16]
    }
}

