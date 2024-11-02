//
//  ExpendableListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct ExpendableListView: View {
    let expendables: [Expendable]

    var body: some View {
        List(expendables) { expendable in
            VStack(alignment: .leading) {
                Text(expendable.name).font(.headline)
                Text("Type: \(expendable.type)")
                Text("Cost: \(expendable.cost)")
                Text("Weight: \(expendable.weight)")
                Text("Description: \(expendable.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Expendables")
    }
}
