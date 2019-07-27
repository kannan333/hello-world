//
//  TextDetails.swift
//  GetStartedSwift
//
//  Created by kannan on 5/6/19.
//  Copyright © 2019 MyScript. All rights reserved.
//

import UIKit

@objc class TextDetails: NSObject {
        var nsTextVar: NSString = ""     // obj-c type, ok
        var nsNumberOpt: NSNumber?         // optional obj-c type, ok
        var doubleVar: Double = 0          // bridged Swift-native type, ok
        var doubleOpt: Double?             // not bridged, inaccessible
}
