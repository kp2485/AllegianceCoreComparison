//
//  DevelopmentRowView.swift
//  AllegianceCoreComparison
//
//  Created by Kyle Peterson on 11/2/24.
//

import SwiftUI

struct DevelopmentRowView: View {
    let development: Development
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            // Icon Image
            Image(development.iconName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(8)
                .padding(.vertical, 4)
                .padding(.trailing, 8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(development.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(development.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
                
                HStack {
                    Text("Price: \(development.price)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("Build Time: \(development.timeToBuild)s")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.vertical, 8)
    }
}
