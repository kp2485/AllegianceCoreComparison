//
//  ShieldListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ShieldListView: View {
    let shields: [Shield]

    var body: some View {
        List(shields) { shield in
            VStack(alignment: .leading) {
                Text(shield.name).font(.headline)
                Text("Capacity: \(shield.capacity)")
                Text("Recharge Rate: \(shield.rechargeRate)")
                Text("Efficiency: \(shield.efficiency)")
                Text("Description: \(shield.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Shields")
    }
}
