//
//  SharedTestHelpers.swift
//  EssentialAppTests
//
//  Created by Firdavs Bagirov on 14/10/22.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://a-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
