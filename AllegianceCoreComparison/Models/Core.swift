//
//  Core.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import Foundation

struct Core {
    let name: String
    var civilizations: [Civilization] = []
    var afterburners: [Afterburner] = []
    var expendables: [Expendable] = []
    var hardpoints: [Hardpoint] = []
    var weapons: [Weapon] = []
    var shields: [Shield] = []
    var cloaks: [Cloak] = []
    var typesOfDrones: [DroneType] = []
    var typesOfStations: [StationType] = []
    var typesOfTreasures: [TreasureType] = []
    var typesOfShips: [ShipType] = []
    var typesOfProjectiles: [ProjectileType] = []
    var packs: [Pack] = []
    var expendableMines: [ExpendableMine] = []
    var expendableProbes: [ExpendableProbe] = []
    var expendableChaffs: [ExpendableChaff] = []
    var expendableMissiles: [ExpendableMissile] = []
    var shipsSFX: [ShipSFX] = []
    var stationsSFX: [StationSFX] = []
    var constants: [Constant] = []
    var globalAttributes: [GlobalAttribute] = []
    var developments: [Development] = []
}

