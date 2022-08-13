//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 14/04/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
