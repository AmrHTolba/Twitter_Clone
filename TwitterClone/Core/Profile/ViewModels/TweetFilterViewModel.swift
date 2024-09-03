//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Amr El-Fiqi on 03/09/2024.
//

import Foundation


enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case.tweets: return "Tweets"
        case.replies: return "Retweets"
        case.likes: return "Likes"
        }
    }
}
