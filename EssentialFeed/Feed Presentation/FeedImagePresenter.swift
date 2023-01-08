//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 30/08/22.
//

import Foundation

public class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
