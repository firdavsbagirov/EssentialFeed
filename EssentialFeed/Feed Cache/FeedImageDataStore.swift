//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 03/10/22.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
