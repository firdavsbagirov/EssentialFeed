//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Firdavs Bagirov on 30/06/22.
//

import Foundation
import EssentialFeed

func anyNSError() -> NSError {
    let anyError = NSError(domain: "any error", code: 2)
    return anyError
}

func anyURL() -> URL {
    let url = URL(string: "http://any-url.com")!
    return url
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func makeItemsJSON(_ items: [[String: Any]]) -> Data {
    let itemsJSON = ["items": items]
    return try! JSONSerialization.data(withJSONObject: itemsJSON)
    
}

extension HTTPURLResponse {
    convenience init(statusCode: Int) {
        self.init(url: anyURL(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
    }
}

extension Date {
    func adding(seconds: TimeInterval) -> Date {
        return self + seconds
    }
    
    func adding(minutes: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
    }
    
    func adding(days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
}
