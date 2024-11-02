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
            VStack(alignment: .leading) {
                Text(cloak.name).font(.headline)
                Text("Energy Consumption: \(cloak.energyConsumption)")
                Text("Effectiveness: \(cloak.effectiveness)")
                Text("Cooldown: \(cloak.cooldown)")
                Text("Description: \(cloak.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Cloaks")
    }
}
