//
//  AllegianceCoreComparisonApp.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

@main
struct AllegianceCoreComparisonApp: App {
    @StateObject private var coreManager = CoreManager()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    // Core selection view to choose and load a core
                    CoreSelectionView(coreManager: coreManager)
                    // Core detail view to display data once a core is selected
                    CoreDetailView(coreManager: coreManager)
                    Spacer()
                }
            }
            .navigationViewStyle(StackNavigationViewStyle()) // For improved iPad and iPhone UI handling
        }
    }
}

