//
//  BackgroundProvidingClass.swift
//  DependencyInjectionUsage-Swinject
//
//  Created by Yusuf Can Bircan on 31.01.2023.
//

import Foundation
import UIKit

class BackgroundProvidingClass: BackgroundProviderProtocol {
    var backgroundColor: UIColor {
        let color: [UIColor] = [.lightGray,.systemRed, .systemCyan, .systemBlue]
        return color.randomElement()!
    }
    
    
    
}
