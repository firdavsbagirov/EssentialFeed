//
//  ImageCommentCell.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 10/01/23.
//

import UIKit


public final class ImageCommentCell: UITableViewCell {
    @IBOutlet private(set) public var messageLabel: UILabel!
    @IBOutlet private(set) public var usernameLabel: UILabel!
    @IBOutlet private(set) public var dateLabel: UILabel!
    
    var onRetry: (() -> Void)?
    
    @IBAction private func retryButtonTapped() {
        onRetry?()
    }
}
