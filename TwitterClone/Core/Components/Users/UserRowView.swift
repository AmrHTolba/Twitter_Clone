//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 07/09/2024.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Amr")
                    .font(.subheadline)
                    .bold()
                    .foregroundStyle(.black)
                
                Text("amrhdev")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    UserRowView()
}
