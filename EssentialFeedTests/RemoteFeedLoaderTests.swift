//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Firdavs Bagirov on 15/04/22.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTest: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        
        
        XCTAssertNil(client.requestedURL)
    }
    
    
}
