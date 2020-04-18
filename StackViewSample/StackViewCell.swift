//
//  StackViewCell.swift
//  StackViewSample
//
//  Created by Yoshiyuki Kato on 2020/04/18.
//  Copyright © 2020 Yoshiyuki Kato. All rights reserved.
//

import UIKit

class StackViewCell: UIView {
    
    let label = UILabel()
    
    init() {
        super.init(frame: CGRect())
        
        // DeleteButton
        let deleteButton = UIButton()
        deleteButton.setTitle("Delete", for: .normal)
        deleteButton.setTitleColor(UIColor.blue, for: .normal)
        deleteButton.sizeToFit()
        
        // Behaviour Of Tapped DeleteButton
        deleteButton.addTarget(self, action: #selector(tapDeleteButton(_:)), for: .touchUpInside)
        
        // addSubView Button
        addSubview(deleteButton)
        deleteButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        deleteButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        // addSubView Label
        addSubview(label)
        label.topAnchor.constraint(equalTo: topAnchor, constant: 10.0).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10.0).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Tapped Delete Button Method
    @objc func tapDeleteButton(_ sender: UIButton) {
        removeFromSuperview()
    }
}
