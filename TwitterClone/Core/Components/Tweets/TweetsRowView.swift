//
//  TweetsRowView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 02/09/2024.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment:.leading) {
            // Profile Image & User Info + Tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundStyle(Color(.systemBlue))
                
                // User Info & Tweets Caption
                VStack(alignment: .leading, spacing: 10) {
                    
                    // User Info
                    HStack {
                        Text("Amr Hesham")
                            .font(.subheadline).bold()
                        
                        Text("@amrhdev")
                            .foregroundStyle(Color.gray)
                            .font(.caption)
                        
                        Text("2W")
                            .foregroundStyle(Color.gray)
                            .font(.caption)
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "ellipsis")
                                .font(.subheadline)
                                .foregroundStyle(Color.gray)
                        })
                    }
                    .padding(.trailing, 20)
                    
                    
                    // Tweet Caption
                    Text("I Believe I can fly")
                        .font(.subheadline)
                        
                        .multilineTextAlignment(.leading)
                }
            }
            .padding(.leading)
            
            // Action Buttons
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                    
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                    
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                    
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                    
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.subheadline)
                    
                })
            }
            .foregroundStyle(Color.gray)
            .padding()
            .padding(.leading,60)
            .padding(.trailing,5)
        }
        Divider()
    }
}

#Preview {
    TweetsRowView()
}
