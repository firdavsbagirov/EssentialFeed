//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 19/08/22.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
