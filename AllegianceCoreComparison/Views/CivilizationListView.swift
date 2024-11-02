//
//  CivilizationListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct CivilizationListView: View {
    var civilizations: [Civilization]
    
    var body: some View {
        NavigationView {
            List(civilizations) { civilization in
                NavigationLink(destination: CivilizationDetailView(civilization: civilization)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(civilization.name)
                                .font(.headline)
                            Text("Income Modifier: \(civilization.incomeModifier)")
                                .font(.subheadline)
                            Text("Bonus Modifier: \(civilization.bonusModifier)")
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Civilizations")
        }
    }
}

struct CivilizationDetailView: View {
    let civilization: Civilization

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Name: \(civilization.name)").font(.title)
            Text("Income Modifier: \(civilization.incomeModifier)")
            Text("Bonus Modifier: \(civilization.bonusModifier)")
            Text("Pod Hull Type ID: \(civilization.podHullTypeID)")
            Text("Initial Station Type ID: \(civilization.initialStationTypeID)")
            Text("Starting Tech: \(civilization.startingTech)")
            Text("Starting Tech Nodev: \(civilization.startingTechNodev)")
        }
        .padding()
        .navigationTitle(civilization.name)
    }
}
