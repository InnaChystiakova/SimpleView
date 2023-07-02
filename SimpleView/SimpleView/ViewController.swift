//
//  ViewController.swift
//  SimpleView
//
//  Created by Инна Чистякова on 02.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let leadingValue: CGFloat = 100
    let simpleView = SimpleView()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        setupSubviews()
    }
    
    func setupSubviews() {
        view.addSubview(simpleView)
        
        NSLayoutConstraint.activate(
            [
                simpleView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: leadingValue),
                simpleView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ]
        )
    }
}
