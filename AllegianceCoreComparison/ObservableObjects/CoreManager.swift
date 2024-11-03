//
//  CoreManager.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

class CoreManager: ObservableObject {
    @Published var selectedCore: Core?
    let availableCores: [String] = ["ac_16"] // Add more core names as needed

    func loadCore(named coreName: String) {
        var core = Core(name: coreName)

        core.civilizations = loadData(fileName: "Civilizations", coreName: coreName, type: Civilization.self)
        core.afterburners = loadData(fileName: "Afterburners", coreName: coreName, type: Afterburner.self)
        core.expendables = loadData(fileName: "Expendables", coreName: coreName, type: Expendable.self)
        core.hardpoints = loadData(fileName: "Hardpoints", coreName: coreName, type: Hardpoint.self)
        core.weapons = loadData(fileName: "Weapons", coreName: coreName, type: Weapon.self)
        core.shields = loadData(fileName: "Shields", coreName: coreName, type: Shield.self)
        core.cloaks = loadData(fileName: "Cloaks", coreName: coreName, type: Cloak.self)
        core.typesOfDrones = loadData(fileName: "TypesOfDrones", coreName: coreName, type: DroneType.self)
        core.typesOfStations = loadData(fileName: "TypesOfStations", coreName: coreName, type: StationType.self)
        core.typesOfTreasures = loadData(fileName: "TypesOfTreasures", coreName: coreName, type: TreasureType.self)
        core.typesOfShips = loadData(fileName: "TypesOfShips", coreName: coreName, type: ShipType.self)
        core.typesOfProjectiles = loadData(fileName: "TypesOfProjectiles", coreName: coreName, type: ProjectileType.self)
        core.packs = loadData(fileName: "Packs", coreName: coreName, type: Pack.self)
        core.expendableMines = loadData(fileName: "ExpendableMines", coreName: coreName, type: ExpendableMine.self)
        core.expendableProbes = loadData(fileName: "ExpendableProbes", coreName: coreName, type: ExpendableProbe.self)
        core.expendableChaffs = loadData(fileName: "ExpendableChaff", coreName: coreName, type: ExpendableChaff.self)
        core.expendableMissiles = loadData(fileName: "ExpendableMissiles", coreName: coreName, type: ExpendableMissile.self)
        core.shipsSFX = loadData(fileName: "ShipsSFX", coreName: coreName, type: ShipSFX.self)
        core.stationsSFX = loadData(fileName: "StationsSFX", coreName: coreName, type: StationSFX.self)
        core.constants = loadData(fileName: "Constants", coreName: coreName, type: Constant.self)
        core.globalAttributes = loadData(fileName: "GlobalAttributes", coreName: coreName, type: GlobalAttribute.self)
        core.developments = loadData(fileName: "Developments", coreName: coreName, type: Development.self)

        // Set the loaded core as the selected core
        selectedCore = core
    }

    private func loadData<T: CSVParsable>(fileName: String, coreName: String, type: T.Type) -> [T] {
            let filePath = "Cores/\(coreName)/\(fileName)"
        
            guard let path = Bundle.main.path(forResource: filePath, ofType: "csv") else {
                print("File not found at path: \(filePath).csv")
                return []
            }
        
            do {
                print("Loading file at path: \(path)")
                let data = try String(contentsOfFile: path, encoding: .utf8)
                let allRows = data.components(separatedBy: "\n")
                
                // Ensure there are rows to process
                guard allRows.count > 1 else {
                    print("No data found in file: \(filePath).csv")
                    return []
                }
                
                // Skip the header row
                let dataRows = allRows.dropFirst()
                
                var parsedData: [T] = []
                
                for (index, row) in dataRows.enumerated() {
                    let trimmedRow = row.trimmingCharacters(in: .whitespacesAndNewlines)
                    
                    // Skip empty rows
                    if trimmedRow.isEmpty {
                        print("Skipped empty row at line \(index + 2) in file: \(filePath).csv")
                        continue
                    }
                    
                    // Split by tab delimiter
                    let columns = trimmedRow.components(separatedBy: "\t")
                    
                    // Attempt to parse the row into the model
                    if let item = T(csvRow: columns) {
                        parsedData.append(item)
                    } else {
                        print("Failed to parse CSV row at line \(index + 2) in file: \(filePath).csv: \(columns)")
                    }
                }
                
                return parsedData
            } catch {
                print("Error reading file at path \(path):", error)
                return []
            }
        }
}
