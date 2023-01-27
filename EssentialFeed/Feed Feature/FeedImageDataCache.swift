//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 15/10/22.
//

import Foundation

public protocol FeedImageDataCache {    
    func save(_ data: Data, for url: URL) throws
}
