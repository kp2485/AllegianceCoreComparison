//
//  ShipTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ShipTypeListView: View {
    let ships: [ShipType]

    var body: some View {
        List(ships) { ship in
            VStack(alignment: .leading, spacing: 8) {
                Text("Name: \(ship.name)")
                    .font(.headline)
                Text("ID: \(ship.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Mass: \(ship.mass)")
                    Spacer()
                    Text("Signature: \(ship.signature)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Speed: \(ship.speed)")
                    Spacer()
                    Text("Thrust: \(ship.thrust)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                Text("Description: \(ship.description)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Tech Required: \(ship.techRequired)")
                    Spacer()
                    Text("Group: \(ship.group)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Types of Ships")
    }
}

