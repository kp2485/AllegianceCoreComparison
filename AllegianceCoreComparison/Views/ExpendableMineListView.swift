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
            VStack(alignment: .leading, spacing: 8) {
                Text("Name: \(mine.copyOfName)")
                    .font(.headline)
                Text("ID: \(mine.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Mine Radius: \(mine.mineRadius)")
                    Spacer()
                    Text("Power: \(mine.power)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Endurance: \(mine.endurance)")
                    Spacer()
                    Text("Signature: \(mine.signature)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Hit Points: \(mine.hitPoints)")
                    Spacer()
                    Text("Defense Const ID: \(mine.defenseConstantID)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                if !mine.abilities.isEmpty {
                    Text("Abilities: \(mine.abilities)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Text("Icon Name: \(mine.iconName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text("Color (RGBA): \(mine.colorRGBA)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Radius: \(mine.radius)m")
                    Spacer()
                    Text("Rotation: \(mine.rotation)°")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                Text("Model Name: \(mine.modelName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text("Texture Name: \(mine.textureName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Launcher Signature: \(mine.launcherSignature)")
                    Spacer()
                    Text("Mass: \(mine.mass) kg")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Part Mask: \(mine.partMask)")
                    Spacer()
                    Text("Expendable Size: \(mine.expendableSize)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Expendable Mines")
    }
}
