//
//  ExpendableProbeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ExpendableProbeListView: View {
    let probes: [ExpendableProbe]

    var body: some View {
        List(probes) { probe in
            VStack(alignment: .leading) {
                Text(probe.name).font(.headline)
                Text("Range: \(probe.range)")
                Text("Duration: \(probe.duration)")
                Text("Description: \(probe.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Probes")
    }
}
