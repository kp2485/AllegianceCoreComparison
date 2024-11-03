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
            NavigationView {
                List(developments) { development in
                    NavigationLink(destination: DevelopmentDetailView(development: development)) {
                        DevelopmentRowView(development: development)
                    }
                }
                .navigationTitle("Developments")
            }
        }
}
