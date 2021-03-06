//
//  TextStyleSet.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import Marker

public extension TextStyle {
    static public let `default` = TextStyle(font: Font.systemFont(ofSize: 18))
}

public struct TextStyleSet {
    
    public var regular: TextStyle {
        return _regular
    }
    
    public var strong: TextStyle {
        return _strong ?? self.regular
    }
    
    public var emphasis: TextStyle {
        return _emphasis ?? self.regular
    }
    
    fileprivate var _regular: TextStyle
    
    fileprivate var _strong: TextStyle?
    
    fileprivate var _emphasis: TextStyle?
    
    public init(normal: TextStyle, strong: TextStyle? = nil, emphasis: TextStyle? = nil) {
        self._regular = normal
        self._strong = strong ?? normal
        self._emphasis = emphasis ?? normal
    }
    
    public static let `default` = TextStyleSet(normal: .default)
    
}

