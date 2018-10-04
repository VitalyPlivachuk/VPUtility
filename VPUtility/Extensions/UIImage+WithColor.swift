//
//  UIImage+WithColor.swift
//  translator
//
//  Created by Vitaly Plivachuk on 10/3/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import UIKit

extension UIImage{
    class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect: CGRect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}


