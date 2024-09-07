//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 08/09/2024.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 26) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading) {
                    Text("Amr Hesham")
                        .font(.headline)
                    
                    Text("@amrhdev")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                UserStatsView()
                    .padding(.vertical, 2)
            }
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack(spacing: 16) {
                    Image(systemName: option.imageName)
                        .font(.headline)
                        .foregroundStyle(.gray)
                    
                    Text(option.description)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    SideMenuView()
}
