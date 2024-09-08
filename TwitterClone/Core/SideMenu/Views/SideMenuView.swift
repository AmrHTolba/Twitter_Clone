//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 08/09/2024.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
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
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuRowView(viewModel: viewModel)
                    }
                    .blackNavLink()
                } else if viewModel == .bookmarks {
                    SideMenuRowView(viewModel: viewModel)
                } else if viewModel == .lists {
                    SideMenuRowView(viewModel: viewModel)
                } else if viewModel == .logout{
                    Button {
                        print("Handle Logout here")
                    } label: {
                        SideMenuRowView(viewModel: viewModel)
                    }
                } else {
                    
                }
            }
            .foregroundStyle(.primary)
            Spacer()
        }
        .padding(.horizontal)
    }
}

// MARK: - Preview

#Preview {
    SideMenuView()
}

