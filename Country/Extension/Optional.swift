//
//  Optional.swift
//  Country
//
//  Created by vijeesh on 17/08/2018.
//  Copyright © 2018 vijeesh. All rights reserved.
//

import UIKit

// MARK: - Unwrapped value of `String` object. Returns empty string if nil.
extension Optional where Wrapped == String {
  func unwrapped() -> String {
    switch self {
    case .some(let value):
      return String(describing: value)
    case .none:
      print("String has nil value")
      return ""
    }
  }
}

// MARK: - Unwrapped value of `Int` variable. Returns 0 if nil.
extension Optional where Wrapped == Int {
  func unwrapped() -> Int {
    switch self {
    case .some(let value):
      return value
    case .none:
      print("Int has no value")
      return 0
    }
  }
}
