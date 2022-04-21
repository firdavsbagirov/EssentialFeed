//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 14/04/22.
//

import Foundation


public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
