//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 14/04/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}


public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
