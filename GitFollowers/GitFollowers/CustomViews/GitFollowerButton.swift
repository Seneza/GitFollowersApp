//
//  GitFollowerButton.swift
//  GitFollowers
//
//  Created by Gaston on 9/5/24.
//

import UIKit

class GitFollowerButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        // Custom Code
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //custom init for UIButtons
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
