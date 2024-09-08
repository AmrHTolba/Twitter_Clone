//
//  FeedView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 02/09/2024.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack (alignment: .bottomTrailing){
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetsRowView()
                    }
                }
            }
            Button{
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundStyle(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView, content: {
                NewTweetView()
            })
        }
        
    }
}

#Preview {
    FeedView()
}
