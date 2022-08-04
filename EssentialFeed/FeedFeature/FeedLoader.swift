//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 14/04/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
