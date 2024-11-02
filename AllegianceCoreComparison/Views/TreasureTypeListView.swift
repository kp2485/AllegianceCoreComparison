//
//  TreasureTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct TreasureTypeListView: View {
    let treasures: [TreasureType]

    var body: some View {
        List(treasures) { treasure in
            VStack(alignment: .leading) {
                Text(treasure.name).font(.headline)
                Text("Value: \(treasure.value)")
                Text("Rarity: \(treasure.rarity)")
                Text("Description: \(treasure.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Treasures")
    }
}
