//
//  CoreSelectionView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct CoreSelectionView: View {
    @ObservedObject var coreManager: CoreManager
    @State private var selectedCoreName: String = ""
    
    var body: some View {
        Picker("Select Core", selection: $selectedCoreName) {
            ForEach(coreManager.availableCores, id: \.self) { coreName in
                Text(coreName).tag(coreName)
            }
        }
        .pickerStyle(MenuPickerStyle())
        .onChange(of: selectedCoreName, perform: { newValue in
            coreManager.loadCore(named: newValue)
        })
    }
}
