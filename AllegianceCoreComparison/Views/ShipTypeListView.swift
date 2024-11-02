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
            VStack(alignment: .leading) {
                Text(ship.name).font(.headline)
                Text("Speed: \(ship.speed)")
                Text("Armor: \(ship.armor)")
                Text("Crew Capacity: \(ship.crewCapacity)")
                Text("Description: \(ship.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Ships")
    }
}
