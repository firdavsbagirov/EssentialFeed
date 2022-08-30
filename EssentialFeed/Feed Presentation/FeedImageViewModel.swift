//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 30/08/22.
//

import Foundation

public struct FeedImageViewModel<Image> {
    public let description: String?
    public var location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
