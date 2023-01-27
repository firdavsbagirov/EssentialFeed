//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 03/10/22.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
