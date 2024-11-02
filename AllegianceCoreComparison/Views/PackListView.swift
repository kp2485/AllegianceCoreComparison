//
//  PackListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct PackListView: View {
    let packs: [Pack]

    var body: some View {
        List(packs) { pack in
            VStack(alignment: .leading) {
                Text(pack.name).font(.headline)
                Text("Capacity: \(pack.capacity)")
                Text("Weight: \(pack.weight)")
                Text("Description: \(pack.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Packs")
    }
}
