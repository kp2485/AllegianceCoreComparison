//
//  ProjectileTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ProjectileTypeListView: View {
    let projectiles: [ProjectileType]

    var body: some View {
        List(projectiles) { projectile in
            VStack(alignment: .leading) {
                Text(projectile.name).font(.headline)
                Text("Damage: \(projectile.damage)")
                Text("Speed: \(projectile.speed)")
                Text("Range: \(projectile.range)")
                Text("Description: \(projectile.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Projectiles")
    }
}
