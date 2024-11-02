//
//  CoreDetailView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct CoreDetailView: View {
    @ObservedObject var coreManager: CoreManager
    @State private var selectedDataType: CoreDataType = .civilizations

    var body: some View {
        VStack {
            // Picker to select the data type
            Picker("Select Data Type", selection: $selectedDataType) {
                ForEach(CoreDataType.allCases, id: \.self) { dataType in
                    Text(dataType.rawValue).tag(dataType)
                }
            }
            .pickerStyle(.automatic)
            .padding()

            // Display the selected data type's ListView
            if let core = coreManager.selectedCore {
                switch selectedDataType {
                case .civilizations:
                    CivilizationListView(civilizations: core.civilizations)
                case .afterburners:
                    AfterburnerListView(afterburners: core.afterburners)
                case .expendables:
                    ExpendableListView(expendables: core.expendables)
                case .hardpoints:
                    HardpointListView(hardpoints: core.hardpoints)
                case .weapons:
                    WeaponListView(weapons: core.weapons)
                case .shields:
                    ShieldListView(shields: core.shields)
                case .cloaks:
                    CloakListView(cloaks: core.cloaks)
                case .typesOfDrones:
                    DroneTypeListView(drones: core.typesOfDrones)
                case .typesOfStations:
                    StationTypeListView(stations: core.typesOfStations)
                case .typesOfTreasures:
                    TreasureTypeListView(treasures: core.typesOfTreasures)
                case .typesOfShips:
                    ShipTypeListView(ships: core.typesOfShips)
                case .typesOfProjectiles:
                    ProjectileTypeListView(projectiles: core.typesOfProjectiles)
                case .packs:
                    PackListView(packs: core.packs)
                case .expendableMines:
                    ExpendableMineListView(mines: core.expendableMines)
                case .expendableProbes:
                    ExpendableProbeListView(probes: core.expendableProbes)
                case .expendableChaffs:
                    ExpendableChaffListView(chaffs: core.expendableChaffs)
                case .expendableMissiles:
                    ExpendableMissileListView(missiles: core.expendableMissiles)
                case .shipsSFX:
                    ShipSFXListView(shipsSFX: core.shipsSFX)
                case .stationsSFX:
                    StationSFXListView(stationsSFX: core.stationsSFX)
                case .constants:
                    ConstantListView(constants: core.constants)
                case .globalAttributes:
                    GlobalAttributeListView(attributes: core.globalAttributes)
                case .developments:
                    DevelopmentListView(developments: core.developments)
                }
            } else {
                Text("No core selected")
            }
        }
        .navigationTitle("Core Details")
    }
}
