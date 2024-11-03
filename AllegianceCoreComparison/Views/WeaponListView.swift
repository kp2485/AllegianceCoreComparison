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
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(weapon.name)").font(.headline)
                Text("ID: \(weapon.id)")
                Text("Ready Time: \(weapon.readyTime)")
                Text("Burst Time: \(weapon.burstTime)")
                Text("Energy per Shot: \(weapon.energyPerShot)")
                Text("Dispersion: \(weapon.dispersion)")
                Text("Ammo per Shot: \(weapon.ammoPerShot)")
                Text("Projectile Type ID: \(weapon.projectileTypeID)")
                Text("Activate SFX ID: \(weapon.activateSfxID)")
                Text("Shot SFX ID: \(weapon.shotSfxID)")
                Text("Burst SFX ID: \(weapon.burstSfxID)")
                Text("Mass: \(weapon.mass)")
                Text("Signature: \(weapon.signature)")
                Text("Successor Part ID: \(weapon.successorPartID)")
                Text("Part Mask: \(weapon.partMask)")
                Text("Inventory Model: \(weapon.inventoryModel)")
                Text("Price: \(weapon.price)")
                Text("Time to Build: \(weapon.timeToBuild)")
                Text("Model Name: \(weapon.modelName)")
                Text("Icon Name: \(weapon.iconName)")
                Text("Description: \(weapon.description)")
                Text("Group: \(weapon.group)")
                Text("Tech Required: \(weapon.techRequired)")
                Text("Tech Effect: \(weapon.techEffect)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Weapons")
    }
}
