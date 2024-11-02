//
//  DroneTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DroneTypeListView: View {
    let drones: [DroneType]

    var body: some View {
        List(drones) { drone in
            VStack(alignment: .leading) {
                Text(drone.name).font(.headline)
                Text("Speed: \(drone.speed)")
                Text("Durability: \(drone.durability)")
                Text("Description: \(drone.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Drones")
    }
}
