//
//  DevelopmentDetailView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DevelopmentDetailView: View {
    let development: Development
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Icon Image
                Image(development.iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(12)
                    .padding(.bottom, 16)
                
                // Name
                Text(development.name)
                    .font(.largeTitle)
                    .bold()
                
                // Description
                Text(development.description)
                    .font(.body)
                    .padding(.top, 8)
                
                // Details
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("Price:")
                            .bold()
                        Text("\(development.price)")
                    }
                    
                    HStack {
                        Text("Build Time:")
                            .bold()
                        Text("\(development.timeToBuild) seconds")
                    }
                    
                    HStack {
                        Text("Group:")
                            .bold()
                        Text("\(development.group)")
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Tech Required:")
                            .bold()
                        Text(development.techRequired)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Tech Effect:")
                            .bold()
                        Text(development.techEffect)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                .font(.subheadline)
                .padding(.top, 16)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(development.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
