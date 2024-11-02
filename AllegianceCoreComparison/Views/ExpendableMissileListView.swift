//
//  ExpendableMissileListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ExpendableMissileListView: View {
    let missiles: [ExpendableMissile]

    var body: some View {
        List(missiles) { missile in
            VStack(alignment: .leading) {
                Text(missile.name).font(.headline)
                Text("Damage: \(missile.damage)")
                Text("Speed: \(missile.speed)")
                Text("Range: \(missile.range)")
                Text("Description: \(missile.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Missiles")
    }
}
