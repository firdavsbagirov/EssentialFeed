//
//  FeedImageDataLoaderSpy.swift
//  EssentialAppTests
//
//  Created by Firdavs Bagirov on 15/10/22.
//

import Foundation
import EssentialFeed

class FeedImageDataLoaderSpy: FeedImageDataLoader {
    private var messages = [(url: URL, completion: (FeedImageDataLoader.Result) -> Void)]()
    var loadedURLs: [URL] {
        return messages.map { $0.url }
    }
    
    var cancelledURLs = [URL]()
    
    private struct Task: FeedImageDataLoaderTask {
        let callback: () -> Void
        func cancel() {
            callback()
        }
    }
    
    func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> EssentialFeed.FeedImageDataLoaderTask {
        messages.append((url, completion))
        return Task { [weak self] in
            self?.cancelledURLs.append(url)
        }
    }
    
    func complete(with error: Error, at index: Int = 0) {
        messages[index].completion(.failure(error))
    }
    
    func completeWith(data: Data, at index: Int = 0) {
        messages[index].completion(.success(data))
    }
}
