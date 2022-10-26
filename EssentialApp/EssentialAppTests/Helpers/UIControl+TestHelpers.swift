//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Firdavs Bagirov on 17/08/22.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
