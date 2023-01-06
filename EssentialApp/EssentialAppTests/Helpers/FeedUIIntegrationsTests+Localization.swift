//
//  FeedUIIntegrationsTests+Localization.swift
//  EssentialAppTests
//
//  Created by Firdavs Bagirov on 06/01/23.
//

import Foundation
import EssentialFeed

 extension FeedUIIntegrationTests {
     private class DummyView: ResourceView {
         func display(_ viewModel: Any) {}
     }

     var loadError: String {
         LoadResourcePresenter<Any, DummyView>.loadError
     }

     var feedTitle: String {
         FeedPresenter.title
     }
 }
