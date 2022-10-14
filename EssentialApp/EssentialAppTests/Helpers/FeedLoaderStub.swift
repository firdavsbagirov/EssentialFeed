//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Firdavs Bagirov on 14/10/22.
//

import Foundation
import EssentialFeed

 class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
