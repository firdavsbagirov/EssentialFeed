//
//  UITableView+HeaderSizing.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 03/11/22.
//

import UIKit

extension UITableView {
     func sizeTableHeaderToFit() {
         guard let header = tableHeaderView else { return }

         let size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)

         let needsFrameUpdate = header.frame.height != size.height
         if needsFrameUpdate {
             header.frame.size.height = size.height
             tableHeaderView = header
         }
     }
 }

