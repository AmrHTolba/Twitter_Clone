//
//  FeedView.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 02/09/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetsRowView()
                }
            }
        }
        
    }
}

#Preview {
    FeedView()
}
