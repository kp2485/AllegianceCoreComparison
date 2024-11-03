//
//  DroneTypeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DroneTypeListView: View {
    let droneTypes: [DroneType]

    var body: some View {
        List(droneTypes) { drone in
            VStack(alignment: .leading, spacing: 5) {
                Text("Name: \(drone.name)").font(.headline)
                Text("ID: \(drone.id)")
                Text("Shoot Skill: \(drone.shootSkill)")
                Text("Move Skill: \(drone.moveSkill)")
                Text("Bravery: \(drone.bravery)")
                Text("Pilot Type: \(drone.pilotType)")
                Text("Hull Type ID: \(drone.hullTypeId)")
                Text("Expendable Type ID: \(drone.expendableTypeId)")
                Text("Price: \(drone.price)")
                Text("Time to Build: \(drone.timeToBuild)")
                Text("Model Name: \(drone.modelName)")
                Text("Icon Name: \(drone.iconName)")
                Text("Description: \(drone.description)")
                Text("Group: \(drone.group)")
                Text("Tech Required: \(drone.techRequired)")
                Text("Tech Effect: \(drone.techEffect)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Drone Types")
    }
}
