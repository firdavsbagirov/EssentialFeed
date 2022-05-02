//
//  XCTestCase + MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by Firdavs Bagirov on 30/04/22.
//

import Foundation
import XCTest

extension XCTestCase {
    func trackForMemoryLeak(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
        }
    }
}
