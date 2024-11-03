//
//  ShieldListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ShieldListView: View {
    let shields: [Shield]

    var body: some View {
        List(shields) { shield in
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(shield.name)").font(.headline)
                Text("ID: \(shield.id)")
                Text("Regen Rate: \(shield.regenRate)")
                Text("Max Strength: \(shield.maxStrength)")
                Text("Defense Constant ID: \(shield.defenseConstantID)")
                Text("Activate SFX ID: \(shield.activateSFXID)")
                Text("Deactivate SFX ID: \(shield.deactivateSFXID)")
                Text("Mass: \(shield.mass)")
                Text("Signature: \(shield.signature)")
                Text("Successor Part ID: \(shield.successorPartID)")
                Text("Part Mask: \(shield.partMask)")
                Text("Inventory Model: \(shield.inventoryModel)")
                Text("Price: \(shield.price)")
                Text("Time to Build: \(shield.timeToBuild)")
                Text("Model Name: \(shield.modelName)")
                Text("Icon Name: \(shield.iconName)")
                Text("Description: \(shield.description)")
                Text("Group: \(shield.group)")
                Text("Tech Required: \(shield.techRequired)")
                Text("Tech Effect: \(shield.techEffect)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Shields")
    }
}
