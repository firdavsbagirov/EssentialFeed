//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 15/10/22.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
