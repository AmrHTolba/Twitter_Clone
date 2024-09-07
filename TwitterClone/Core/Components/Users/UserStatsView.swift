//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 08/09/2024.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack (spacing:30) {
            HStack {
                Text("26")
                    .foregroundStyle(Color.black)
                    .bold()
                
                Text("Following")
            }
            .foregroundStyle(Color.gray)
            .font(.caption)
            
            HStack {
                Text("7.8M")
                    .foregroundStyle(Color.black)
                    .bold()
                
                Text("Followers")
            }
            .foregroundStyle(Color.gray)
            .font(.caption)
        }
    }
}

#Preview {
    UserStatsView()
}
