//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 23/08/22.
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
