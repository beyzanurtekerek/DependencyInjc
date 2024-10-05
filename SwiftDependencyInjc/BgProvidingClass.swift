//
//  BgProvidingClass.swift
//  SwiftDependencyInjc
//
//  Created by Beyza Nur Tekerek on 5.10.2024.
//

import Foundation
import UIKit

class BgProvidingClass : BgColorProviderProtocol {
    var backgroundColor: UIColor {
        let backgroundColors : [UIColor] = [.red, .blue, .green, .black, .yellow, .purple, .orange, .cyan, .magenta, .brown]
        return backgroundColors.randomElement()!
    }
    
    
}
