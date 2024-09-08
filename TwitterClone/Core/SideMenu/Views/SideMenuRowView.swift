//
//  SideMenuRowView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 08/09/2024.
//

import SwiftUI

struct SideMenuRowView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
            
            Text(viewModel.description)
                .font(.subheadline)
                .bold()
            
            Spacer()
        }
        .frame(height: 40)
    }
}

#Preview {
    SideMenuRowView(viewModel: .profile)
}
