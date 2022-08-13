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
