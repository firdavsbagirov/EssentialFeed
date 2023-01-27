//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 17/08/22.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
