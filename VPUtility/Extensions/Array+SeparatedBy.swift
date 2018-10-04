//
//  Array+SeparatedBy.swift
//  translator
//
//  Created by Vitaly Plivachuk on 26.09.2018.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import Foundation

extension Array {
    func separatedByElement(setUp: () -> Element) -> Array<Element>{
        var separatedArray: [Element] = []
        self.enumerated().forEach{index, element in
            if index > 0 {separatedArray.append(setUp())}
            separatedArray.append(element)
        }
        return separatedArray
    }
}
