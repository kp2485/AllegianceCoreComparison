//
//  WeaponListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct WeaponListView: View {
    let weapons: [Weapon]

    var body: some View {
        List(weapons) { weapon in
            VStack(alignment: .leading) {
                Text(weapon.name).font(.headline)
                Text("Damage: \(weapon.damage)")
                Text("Range: \(weapon.range)")
                Text("Fire Rate: \(weapon.fireRate)")
                Text("Description: \(weapon.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Weapons")
    }
}
