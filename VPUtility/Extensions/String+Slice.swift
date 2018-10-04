//
//  String+Slice.swift
//  translator
//
//  Created by Vitaly Plivachuk on 10/3/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import Foundation

extension String {
    func slice(from: String, to: String) -> String? {
        
        return (range(of: from)?.upperBound).flatMap { substringFrom in
            (range(of: to, range: substringFrom..<endIndex)?.lowerBound).map { substringTo in
                String(self[substringFrom..<substringTo])
            }
        }
    }
}
