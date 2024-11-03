//
//  DroneTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DroneTypeListView: View {
    let droneTypes: [DroneType]

    var body: some View {
        List(droneTypes) { drone in
            VStack(alignment: .leading, spacing: 5) {
                Text(drone.name)
                    .font(.headline)
                Text(drone.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                HStack {
                    Text("ID: \(drone.id)")
                    Spacer()
                    Text("Price: \(drone.price)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Drone Types")
    }
}
