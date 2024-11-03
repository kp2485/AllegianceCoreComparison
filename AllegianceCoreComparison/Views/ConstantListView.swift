//
//  ConstantListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ConstantListView: View {
    let constants: [Constant]

    var body: some View {
        List(constants) { constant in
            VStack(alignment: .leading, spacing: 5) {
                Text("Comment: \(constant.comment)").font(.headline)
                Text("Global Value: \(constant.globalValue)")
                Text("ID: \(constant.id)")
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Constants")
    }
}

