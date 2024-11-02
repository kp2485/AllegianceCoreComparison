//
//  DevelopmentListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DevelopmentListView: View {
    let developments: [Development]

    var body: some View {
        List(developments) { development in
            VStack(alignment: .leading) {
                Text(development.name).font(.headline)
                Text("Cost: \(development.cost)")
                Text("Duration: \(development.duration)")
                Text("Description: \(development.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Developments")
    }
}
