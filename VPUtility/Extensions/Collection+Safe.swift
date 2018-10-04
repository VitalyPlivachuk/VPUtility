//
//  Collection+Safe.swift
//  translator
//
//  Created by Vitaly Plivachuk on 26.09.2018.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import Foundation

extension Collection{
    subscript (safe index: Index) -> Element?{
        return indices.contains(index) ? self[index] : nil
    }
}
