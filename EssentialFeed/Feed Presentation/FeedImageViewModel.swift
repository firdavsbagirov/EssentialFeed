//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 30/08/22.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public var location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
