//
//  ExpendableListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ExpendableListView: View {
    let expendables: [Expendable]

    var body: some View {
        List(expendables) { expendable in
            VStack(alignment: .leading, spacing: 8) {
                Text("Name: \(expendable.name)")
                    .font(.headline)
                Text("ID: \(expendable.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Part ID: \(expendable.partID)")
                    Spacer()
                    Text("Amount: \(expendable.amount)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Successor Part ID: \(expendable.successorPartID)")
                    Spacer()
                    Text("Launch Count: \(expendable.launchCount)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Inventory Model: \(expendable.inventoryModel)")
                    Spacer()
                    Text("Price: \(expendable.price)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Time to Build: \(expendable.timeToBuild)")
                    Spacer()
                    Text("Model Name: \(expendable.modelName)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Icon Name: \(expendable.iconName)")
                    Spacer()
                    Text("Group: \(expendable.group)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                Text("Description: \(expendable.description)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Tech Required: \(expendable.techRequired)")
                    Spacer()
                    Text("Tech Effect: \(expendable.techEffect)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Expendables")
    }
}
