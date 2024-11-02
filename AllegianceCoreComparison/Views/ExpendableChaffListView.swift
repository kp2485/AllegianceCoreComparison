//
//  ExpendableChaffListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ExpendableChaffListView: View {
    let chaffs: [ExpendableChaff]

    var body: some View {
        List(chaffs) { chaff in
            VStack(alignment: .leading) {
                Text(chaff.name).font(.headline)
                Text("Effectiveness: \(chaff.effectiveness)")
                Text("Duration: \(chaff.duration)")
                Text("Description: \(chaff.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Chaffs")
    }
}
