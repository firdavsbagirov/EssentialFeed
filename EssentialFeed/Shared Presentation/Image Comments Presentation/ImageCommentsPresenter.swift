//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 08/01/23.
//

import Foundation

public final class ImageCommentsPresenter {
    
    public static var title: String {
        return NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                                 tableName: "ImageComments",
                                 bundle: Bundle(for: Self.self),
                                 comment: "Title for the image comments view")
    }
}
