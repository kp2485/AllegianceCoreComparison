//
//  Weapon.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Weapon: Identifiable, CSVParsable {
    let id: Int
    let readyTime: Double
    let burstTime: Double
    let energyPerShot: Double
    let dispersion: Double
    let ammoPerShot: Int
    let projectileTypeID: Int
    let activateSfxID: Int
    let shotSfxID: Int
    let burstSfxID: Int
    let mass: Double
    let signature: Double
    let successorPartID: Int
    let partMask: Int
    let inventoryModel: String
    let price: Int
    let timeToBuild: Double
    let modelName: String
    let iconName: String
    let name: String
    let description: String
    let group: Int
    let techRequired: String
    let techEffect: String

    init?(csvRow: [String]) {
        guard csvRow.count >= 24,
              let id = Int(csvRow[0]),
              let readyTime = Double(csvRow[1]),
              let burstTime = Double(csvRow[2]),
              let energyPerShot = Double(csvRow[3]),
              let dispersion = Double(csvRow[4]),
              let ammoPerShot = Int(csvRow[5]),
              let projectileTypeID = Int(csvRow[6]),
              let activateSfxID = Int(csvRow[7]),
              let shotSfxID = Int(csvRow[8]),
              let burstSfxID = Int(csvRow[9]),
              let mass = Double(csvRow[10]),
              let signature = Double(csvRow[11]),
              let successorPartID = Int(csvRow[12]),
              let partMask = Int(csvRow[13]),
              let price = Int(csvRow[15]),
              let timeToBuild = Double(csvRow[16]) else {
            return nil
        }

        self.id = id
        self.readyTime = readyTime
        self.burstTime = burstTime
        self.energyPerShot = energyPerShot
        self.dispersion = dispersion
        self.ammoPerShot = ammoPerShot
        self.projectileTypeID = projectileTypeID
        self.activateSfxID = activateSfxID
        self.shotSfxID = shotSfxID
        self.burstSfxID = burstSfxID
        self.mass = mass
        self.signature = signature
        self.successorPartID = successorPartID
        self.partMask = partMask
        self.inventoryModel = csvRow[14]
        self.price = price
        self.timeToBuild = timeToBuild
        self.modelName = csvRow[17]
        self.iconName = csvRow[18]
        self.name = csvRow[19]
        self.description = csvRow[20]
        self.group = Int(csvRow[21]) ?? 0
        self.techRequired = csvRow[22]
        self.techEffect = csvRow[23]
    }
}

