//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 28/08/22.
//

import Foundation

public final class FeedPresenter {
    
    public static var title: String {
        return NSLocalizedString("FEED_VIEW_TITLE",
                                 tableName: "Feed",
                                 bundle: Bundle(for: FeedPresenter.self),
                                 comment: "Title for the feed view")
    }
    
    public static func map(_ feed: [FeedImage]) -> FeedViewModel {
        return FeedViewModel(feed: feed)
    }
}
