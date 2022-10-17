//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 15/10/22.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
