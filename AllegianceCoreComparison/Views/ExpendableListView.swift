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
            VStack(alignment: .leading, spacing: 5) {
                // Name and ID
                Text("Name: \(expendable.name)")
                    .font(.headline)
                Text("EXPENDABLE ID: \(expendable.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                // Part Details
                Text("Part ID: \(expendable.partID)")
                Text("Amount: \(expendable.amount)")
                Text("Successor Part ID: \(expendable.successorPartID)")
                Text("Launch Count: \(expendable.launchCount)")
                Text("Inventory Model: \(expendable.inventoryModel)")
                Text("Price: \(expendable.price)")
                Text("Time to Build: \(expendable.timeToBuild)")
                Text("Model Name: \(expendable.modelName)")
                Text("Icon Name: \(expendable.iconName)")
                
                // Description
                Text("Description: \(expendable.description)")
                    .font(.body)
                    .foregroundColor(.primary)
                
                // Group and Tech Details
                HStack {
                    Text("Group: \(expendable.group)")
                    Spacer()
                    Text("Tech Required: \(expendable.techRequired)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                Text("Tech Effect: \(expendable.techEffect)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Expendables")
    }
}


