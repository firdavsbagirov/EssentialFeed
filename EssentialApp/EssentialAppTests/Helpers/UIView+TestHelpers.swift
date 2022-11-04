//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Firdavs Bagirov on 04/11/22.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
