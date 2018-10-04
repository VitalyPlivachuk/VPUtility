//
//  View+AnchorsOffset.swift
//  translator
//
//  Created by Vitaly Plivachuk on 27.09.2018.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func setAnchorsOffset(in newSuperview: UIView? = nil, top:CGFloat = 0, bottom:CGFloat = 0, left:CGFloat = 0, right:CGFloat = 0){
        if let superview = superview{
            if superview === newSuperview{
                self.constraints.forEach{$0.isActive = false}
            }
        } else {
            self.removeFromSuperview()
            newSuperview?.addSubview(self)
        }
        translatesAutoresizingMaskIntoConstraints = false
        
        guard let superview = superview else {fatalError("Need To Set Superview")}
        NSLayoutConstraint.activate([topAnchor.constraint(equalTo: superview.topAnchor, constant: top),
                                     bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -bottom),
                                     leftAnchor.constraint(equalTo: superview.leftAnchor, constant: left),
                                     rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -right)])
    }
    
}
