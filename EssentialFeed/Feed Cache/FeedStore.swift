//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 16/05/22.
//

import Foundation
 
public typealias CachedFeed = (feed: [LocalFeedImage], timestamp: Date)

public protocol FeedStore {
    func deleteCachedFeed() throws
    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws
    func retrieve() throws -> CachedFeed?
}
