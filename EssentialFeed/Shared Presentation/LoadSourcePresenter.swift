//
//  LoadSourcePresenter.swift
//  EssentialFeed
//
//  Created by Firdavs Bagirov on 06/01/23.
//

import Foundation

public protocol ResourceView {
    func display(_ viewModel: String)
}

public final class LoadSourcePresenter {
    public typealias Mapper =  (String) -> String
    private let errorView: FeedErrorView
    private let loadingView: FeedLoadingView
    private let resourceView: ResourceView
    private let mapper: Mapper
    
    private var feedLoadError: String {
        return NSLocalizedString("FEED_VIEW_CONNECTION_ERROR",
                                 tableName: "Feed",
                                 bundle: Bundle(for: FeedPresenter.self),
                                 comment: "Error message displayed when we can't load the image feed from the server")
    }
    
    public init(resourceView: ResourceView, loadingView: FeedLoadingView, errorView: FeedErrorView, mapper: @escaping Mapper) {
        self.errorView = errorView
        self.loadingView = loadingView
        self.resourceView = resourceView
        self.mapper = mapper
    }
    
    public func didStartLoading() {
        loadingView.display(FeedLoadingViewModel(isLoading: true))
        errorView.display(.noError)
    }
    
    public func didFinishLoading(with resource: String) {
        resourceView.display(mapper(resource))
        loadingView.display(FeedLoadingViewModel(isLoading: false))
    }
    
    public func didFinishLoadingFeed(with error: Error) {
        errorView.display(.error(message: feedLoadError))
        loadingView.display(FeedLoadingViewModel(isLoading: false))
    }
}

