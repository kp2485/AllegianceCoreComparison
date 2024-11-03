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
            VStack(alignment: .leading, spacing: 8) {
                Text("Name: \(chaff.copyOfName)")
                    .font(.headline)
                Text("ID: \(chaff.id)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Strength: \(chaff.strength)")
                    Spacer()
                    Text("Load Time: \(chaff.loadTime)s")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Life Span: \(chaff.lifeSpan)s")
                    Spacer()
                    Text("Signature: \(chaff.signature)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Hit Points: \(chaff.hitPoints)")
                    Spacer()
                    Text("Defense Const ID: \(chaff.defenseConstantID)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                if !chaff.abilities.isEmpty {
                    Text("Abilities: \(chaff.abilities)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Text("Icon Name: \(chaff.iconName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text("Color (RGBA): \(chaff.colorRGBA)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Radius: \(chaff.radius)m")
                    Spacer()
                    Text("Rotation: \(chaff.rotation)°")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                Text("Model Name: \(chaff.modelName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text("Texture Name: \(chaff.textureName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                HStack {
                    Text("Launcher Signature: \(chaff.launcherSignature)")
                    Spacer()
                    Text("Mass: \(chaff.mass) kg")
                }
                .font(.caption)
                .foregroundColor(.secondary)
                
                HStack {
                    Text("Part Mask: \(chaff.partMask)")
                    Spacer()
                    Text("Expendable Size: \(chaff.expendableSize)")
                }
                .font(.caption)
                .foregroundColor(.secondary)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Expendable Chaffs")
    }
}

