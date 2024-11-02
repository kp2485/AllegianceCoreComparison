//
//  StationTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct StationTypeListView: View {
    let stations: [StationType]

    var body: some View {
        List(stations) { station in
            VStack(alignment: .leading) {
                Text(station.name).font(.headline)
                Text("Defense Rating: \(station.defenseRating)")
                Text("Capacity: \(station.capacity)")
                Text("Description: \(station.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Stations")
    }
}
