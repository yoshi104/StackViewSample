//
//  ViewController.swift
//  StackViewSample
//
//  Created by Yoshiyuki Kato on 2020/04/17.
//  Copyright © 2020 Yoshiyuki Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    
    // View Counter
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Tapped add view
    @IBAction func tapAddViewButton(_ sender: Any) {
        
        let newView = StackViewCell()
        
        newView.backgroundColor = UIColor.green
        newView.layer.borderColor = UIColor.black.cgColor
        newView.layer.borderWidth = 1.0
        
        newView.label.text = "\(count)"
        newView.label.sizeToFit()
        newView.label.textColor = UIColor.black
        
        count += 1
        
        newView.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
        newView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(newView)
    }
}

