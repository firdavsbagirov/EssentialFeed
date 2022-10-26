//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Firdavs Bagirov on 17/08/22.
//

import UIKit

extension UIButton {
     func simulateTap() {
         simulate(event: .touchUpInside)
     }
 }
