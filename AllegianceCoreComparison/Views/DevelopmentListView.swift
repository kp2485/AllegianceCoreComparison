//
//  DevelopmentListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DevelopmentListView: View {
    let developments: [Development]

    var body: some View {
        List(developments) { development in
            VStack(alignment: .leading, spacing: 8) {
                Text("Name: \(development.name)")
                    .font(.headline)
                Text("ID: \(development.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Completion SFX ID: \(development.completionSFXID)")
                    Spacer()
                    Text("Price: \(development.price)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Time to Build: \(development.timeToBuild)")
                    Spacer()
                    Text("Group: \(development.group)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Model Name: \(development.modelName)")
                    Spacer()
                    Text("Icon Name: \(development.iconName)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                Text("Description: \(development.description)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Tech Required: \(development.techRequired)")
                    Spacer()
                    Text("Tech Effect: \(development.techEffect)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Developments")
    }
}
