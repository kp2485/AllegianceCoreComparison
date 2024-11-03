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
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(projectile.copyOfNames)").font(.headline)
                Text("ID: \(projectile.id)")
                Text("Power: \(projectile.power)")
                Text("Blast Power: \(projectile.blastPower)")
                Text("Blast Radius: \(projectile.blastRadius)")
                Text("Speed: \(projectile.speed)")
                Text("Life Span: \(projectile.lifeSpan)")
                Text("Damage Type: \(projectile.damageType)")
                Text("Absolute: \(projectile.absolute ? "Yes" : "No")")
                Text("Directional: \(projectile.directional ? "Yes" : "No")")
                Text("Width: \(projectile.width)")
                Text("Ambient SFX ID: \(projectile.ambientSfxID)")
                Text("Color RGBA: \(projectile.colorRGBA)")
                Text("Radius: \(projectile.radius)")
                Text("Rotation: \(projectile.rotation)")
                Text("Model Name: \(projectile.modelName)")
                Text("Texture Name: \(projectile.textureName)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Projectiles")
    }
}

