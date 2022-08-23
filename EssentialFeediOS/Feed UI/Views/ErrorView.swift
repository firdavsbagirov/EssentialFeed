//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Firdavs Bagirov on 23/08/22.
//

import UIKit


public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { return label.text }
        set { label.text = newValue }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        label.text = nil
    }
}
