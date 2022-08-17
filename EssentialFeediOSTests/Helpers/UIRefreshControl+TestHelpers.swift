//
//  UIRefreshControl+TestHelper.swift
//  EssentialFeediOSTests
//
//  Created by Firdavs Bagirov on 17/08/22.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
