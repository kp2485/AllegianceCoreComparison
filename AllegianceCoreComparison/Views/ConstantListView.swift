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
            VStack(alignment: .leading) {
                Text(constant.name).font(.headline)
                Text("Value: \(constant.value)")
                Text("Description: \(constant.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Constants")
    }
}
