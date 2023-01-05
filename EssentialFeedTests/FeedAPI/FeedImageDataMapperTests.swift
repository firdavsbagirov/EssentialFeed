//
//  FeedImageDataMapperTests.swift
//  EssentialFeedTests
//
//  Created by Firdavs Bagirov on 01/09/22.
//

import XCTest
import EssentialFeed

class FeedImageDataMapperTests: XCTestCase {
    func test_map_throwsInvalidDataErrorOnNon200HTTPResponse() throws{
        
        let samples = [199, 201, 300, 400, 500]
        let invalidJSON = Data("invalid json".utf8)
        
        try samples.forEach { code in
            XCTAssertThrowsError(
                try FeedImageDataMapper.map(invalidJSON, from: HTTPURLResponse(statusCode: code))
            )
        }
    }
    
    func test_map_throwsInvalidDataErrorOn200HTTPResponseWithEmptyData() {
        let emptyData = Data()
        
        XCTAssertThrowsError(
            try FeedImageDataMapper.map(emptyData, from: HTTPURLResponse(statusCode: 200))
        )
    }
    
    func test_loadImageDataFromURL_deliversReceivedNonEmptyDataOn200HTTPResponse() throws {
        let nonEmptyData = Data("non-empty data".utf8)
        
        let result = try FeedImageDataMapper.map(nonEmptyData, from: HTTPURLResponse(statusCode: 200))
        
        XCTAssertEqual(nonEmptyData, result)
    }
    
}
