//
//  Array+RemoveElement.swift
//  translator
//
//  Created by Vitaly Plivachuk on 10/3/18.
//  Copyright © 2018 Vitaly Plivachuk. All rights reserved.
//

import Foundation

extension Array where Element: Equatable{
    @discardableResult mutating func removeFirst(element:Element)->Element?{
        guard let index = firstIndex(of: element) else {return nil}
        let deleted = self[index]
        self.remove(at: index)
        return deleted
    }
    
    @discardableResult mutating func removeAll(element:Element)->[Element]{
        let elements = enumerated().filter{$0.element == element}
        elements.forEach{self.remove(at: $0.offset)}
        return elements.map{$0.element}
    }
}
