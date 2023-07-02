//
//  SimpleView.swift
//  SimpleView
//
//  Created by Инна Чистякова on 02.07.2023.
//

import Foundation
import UIKit

final class SimpleView: UIView {
    
    let defaultSize: CGFloat = 100
    let cornerRadius: CGFloat = 10
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    public func configureView() {
        configureForm()
        configureGradient()
        configureShadow()
        
        addConstraints()
    }
    
    private func configureForm() {
        layer.cornerRadius = cornerRadius
    }
    
    private func configureShadow() {
        layer.shadowColor = UIColor.brown.cgColor
        layer.shadowOffset = CGSize(width: 7, height: 7)
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 3
    }
    
    private func configureGradient() {
        let gradient = CAGradientLayer()
        
        gradient.frame = CGRectMake(0, 0, defaultSize, defaultSize)
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.1)
        gradient.colors = [UIColor.yellow.cgColor, UIColor.orange.cgColor, UIColor.red.cgColor]
        gradient.cornerRadius = cornerRadius
        gradient.masksToBounds = true
        
        layer.addSublayer(gradient)
    }
    
    func addConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addConstraints(
            [
                NSLayoutConstraint(item: self,
                                   attribute: .width,
                                   relatedBy: .equal,
                                   toItem: nil,
                                   attribute: .notAnAttribute,
                                   multiplier: 1,
                                   constant: defaultSize),
                NSLayoutConstraint(item: self,
                                   attribute: .height,
                                   relatedBy: .equal,
                                   toItem: self,
                                   attribute: .width,
                                   multiplier: 1.0 / 1.0,
                                   constant: 0)
            ]
        )
    }
}
