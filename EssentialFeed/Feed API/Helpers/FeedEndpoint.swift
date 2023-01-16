//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 16/01/23.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
