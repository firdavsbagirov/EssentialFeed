//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 24/04/22.
//

import Foundation

internal final class FeedItemsMapper {
    
    private struct Root: Decodable {
        let items: [Item]
        
        var feed: [FeedItem] {
            return items.map { $0.item}
        }
    }

    /// internal representation FeedItem for API moodule (remote loader)
    private struct Item: Decodable {
        public let id: UUID
        public let description: String?
        public let location: String?
        public let image: URL
        
        var item: FeedItem {
            return FeedItem(id: id,
                            description: description,
                            location: location,
                            imageURL: image
            )
        }
    }
    
    private static var OK_200: Int {
        return 200
    }
        
    internal static func map(_ data: Data, from response: HTTPURLResponse) -> RemoteFeedLoader.Result {
        guard response.statusCode == OK_200, let root = try? JSONDecoder().decode(Root.self, from: data) else {
            return .failure(RemoteFeedLoader.Error.invalidData)
        }
        
        let items = root.items.map { $0.item }
        return .success(items)
    }
}
