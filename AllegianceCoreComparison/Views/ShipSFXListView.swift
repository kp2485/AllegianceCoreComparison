//
//  ShipSFXListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ShipSFXListView: View {
    let shipsSFX: [ShipSFX]

    var body: some View {
        List(shipsSFX) { sfx in
            VStack(alignment: .leading) {
                Text(sfx.name).font(.headline)
                Text("Sound Effect ID: \(sfx.soundEffectID)")
                Text("Volume: \(sfx.volume)")
                Text("Description: \(sfx.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Ship SFX")
    }
}
