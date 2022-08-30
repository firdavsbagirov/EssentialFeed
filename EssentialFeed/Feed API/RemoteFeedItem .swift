//
//  RemoteFeedItem .swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 17/05/22.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
