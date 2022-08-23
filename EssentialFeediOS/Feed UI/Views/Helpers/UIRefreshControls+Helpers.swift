//
//  UIRefreshControls+Helpers.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 23/08/22.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
