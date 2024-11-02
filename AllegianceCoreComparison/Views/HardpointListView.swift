//
//  HardpointListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct HardpointListView: View {
    let hardpoints: [Hardpoint]

    var body: some View {
        List(hardpoints) { hardpoint in
            VStack(alignment: .leading) {
                Text("Type: \(hardpoint.type)").font(.headline)
                Text("Capacity: \(hardpoint.capacity)")
                Text("Description: \(hardpoint.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Hardpoints")
    }
}
