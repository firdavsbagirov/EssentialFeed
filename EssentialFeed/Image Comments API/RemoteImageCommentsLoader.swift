//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 04/01/23.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}

