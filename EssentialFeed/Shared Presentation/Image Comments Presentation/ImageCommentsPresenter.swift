//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 08/01/23.
//

import Foundation

public struct ImageCommentsViewModel {
   public let comments: [ImageCommentViewModel]
}

public struct ImageCommentViewModel: Equatable {
    
    public let message: String
    public let date: String
    public let username: String
    
    public init(message: String, date: String, username: String) {
        self.message = message
        self.date = date
        self.username = username
    }
}

public final class ImageCommentsPresenter {
    
    public static var title: String {
        return NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                                 tableName: "ImageComments",
                                 bundle: Bundle(for: Self.self),
                                 comment: "Title for the image comments view")
    }
    
    public static func map(_ comments: [ImageComment]) -> ImageCommentsViewModel {
        let formatter = RelativeDateTimeFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        
        return ImageCommentsViewModel(comments: comments.map { comment in
            ImageCommentViewModel(
                message: comment.message,
                date: formatter.localizedString(for: comment.createdAt, relativeTo: Date()),
                username: comment.username)
        })
    }
}
