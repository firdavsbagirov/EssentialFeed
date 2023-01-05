//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 15/04/22.
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
