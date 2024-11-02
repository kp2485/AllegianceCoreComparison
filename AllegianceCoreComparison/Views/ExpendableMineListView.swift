//
//  ExpendableMineListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ExpendableMineListView: View {
    let mines: [ExpendableMine]

    var body: some View {
        List(mines) { mine in
            VStack(alignment: .leading) {
                Text(mine.name).font(.headline)
                Text("Explosive Power: \(mine.explosivePower)")
                Text("Trigger Radius: \(mine.triggerRadius)")
                Text("Description: \(mine.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Mines")
    }
}
