//
//  CloakListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct CloakListView: View {
    let cloaks: [Cloak]

    var body: some View {
        List(cloaks) { cloak in
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(cloak.name)").font(.headline)
                Text("ID: \(cloak.id)")
                Text("Energy Consumption: \(cloak.energyConsumption)")
                Text("Max Cloaking: \(cloak.maxCloaking)")
                Text("Power On Rate: \(cloak.powerOnRate)")
                Text("Power Off Rate: \(cloak.powerOffRate)")
                Text("Engage SFX ID: \(cloak.engageSfxID)")
                Text("Disengage SFX ID: \(cloak.disengageSfxID)")
                Text("Mass: \(cloak.mass)")
                Text("Signature: \(cloak.signature)")
                Text("Successor Part ID: \(cloak.successorPartID)")
                Text("Part Mask: \(cloak.partMask)")
                Text("Inventory Model: \(cloak.inventoryModel)")
                Text("Price: \(cloak.price)")
                Text("Time to Build: \(cloak.timeToBuild)")
                Text("Model Name: \(cloak.modelName)")
                Text("Icon Name: \(cloak.iconName)")
                Text("Description: \(cloak.description)")
                Text("Group: \(cloak.group)")
                Text("Tech Required: \(cloak.techRequired)")
                Text("Tech Effect: \(cloak.techEffect)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Cloaks")
    }
}

