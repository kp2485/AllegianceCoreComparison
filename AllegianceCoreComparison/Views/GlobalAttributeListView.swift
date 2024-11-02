//
//  GlobalAttributeListView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct GlobalAttributeListView: View {
    let attributes: [GlobalAttribute]

    var body: some View {
        List(attributes) { attribute in
            VStack(alignment: .leading) {
                Text(attribute.name).font(.headline)
                Text("Effect: \(attribute.effect)")
                Text("Description: \(attribute.description)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical, 5)
        }
        .navigationTitle("Global Attributes")
    }
}
