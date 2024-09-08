//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 08/09/2024.
//

import SwiftUI

struct NewTweetView: View {
    // MARK: - Variables
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    
    // MARK: - Body
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundStyle(.primary)
                }
                
                Spacer()
                
                Button {
                    print("posted")
                } label: {
                    Text("Post")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundStyle(.white)
                        .clipShape(Capsule())
                }
                
            }
            .padding()
            
            HStack (alignment: .top) {
                Circle()
                    .frame(width: 48, height: 48)
                
                TextArea("What's happening?", text: $caption)
            }
            .padding(5)
        }
    }
}

#Preview {
    NewTweetView()
}
