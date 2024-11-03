//
//  AfterburnerListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct AfterburnerListView: View {
    let afterburners: [Afterburner]

    var body: some View {
        List(afterburners) { afterburner in
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(afterburner.name)").font(.headline)
                Text("ID: \(afterburner.id)")
                Text("Fuel Consumption: \(afterburner.fuelConsumption)")
                Text("Max Thrust: \(afterburner.maxThrust)")
                Text("Power On Rate: \(afterburner.powerOnRate)")
                Text("Power Off Rate: \(afterburner.powerOffRate)")
                Text("Interior SFX ID: \(afterburner.interiorSFXID)")
                Text("Exterior SFX ID: \(afterburner.exteriorSFXID)")
                Text("Mass: \(afterburner.mass)")
                Text("Signature: \(afterburner.signature)")
                Text("Successor Part ID: \(afterburner.successorPartID)")
                Text("Inventory Model: \(afterburner.inventoryModel)")
                Text("Price: \(afterburner.price)")
                Text("Time to Build: \(afterburner.timeToBuild)")
                Text("Model Name: \(afterburner.modelName)")
                Text("Icon Name: \(afterburner.iconName)")
                Text("Description: \(afterburner.description)")
                Text("Group: \(afterburner.group)")
                Text("Tech Required: \(afterburner.techRequired)")
                Text("Tech Effect: \(afterburner.techEffect)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Afterburners")
    }
}

