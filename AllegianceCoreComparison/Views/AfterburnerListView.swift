//
//  AfterburnerListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct AfterburnerListView: View {
    let afterburners: [Afterburner]

    var body: some View {
        List(afterburners) { afterburner in
            VStack(alignment: .leading) {
                Text("ID: \(afterburner.id)")
                Text("Fuel Consumption: \(afterburner.fuelConsumption)")
                Text("Max Thrust: \(afterburner.maxThrust)")
            }
        }
    }
}
