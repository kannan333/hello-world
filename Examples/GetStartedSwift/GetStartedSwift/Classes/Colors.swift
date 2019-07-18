//
//  Colors.swift
//  MediTimePatient
//
//  Created by BLT0010-MACMINI on 01/12/16.
//  Copyright © 2016 BlisslogixTechnologySolutions. All rights reserved.

import UIKit

class Colors: NSObject {
//    public static let appGreen: UIColor! = UIColor(hexString: "206500")
//    public static let appDarkGray: UIColor! = UIColor(hexString: "4D4D4D")
//    public static let appLightGray: UIColor! = UIColor(hexString: "7D7D7D")
//    public static let appGrayButton: UIColor! = UIColor(hexString: "B9B9B9")
   }

extension String {
    
    func hexStringToUIColor () -> UIColor {
        var cString:String = self.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    func capitalizeFirst() -> String {
        let firstIndex = self.index(startIndex, offsetBy: 1)
        return self.substring(to: firstIndex).capitalized + self.substring(from: firstIndex).lowercased()
    }
    
    func toUppercaseAtSentenceBoundary() -> String {
        
        var result = ""
        self.uppercased().enumerateSubstrings(in: self.startIndex..<self.endIndex, options: .bySentences) { (sub, _, _, _)  in
            result += String(sub!.characters.prefix(1))
            result += String(sub!.characters.dropFirst(1)).lowercased()
        }
        return result as String
    }
    
    
//    extension UIColor {
//        public convenience init?(hexString: String) {
//            let r, g, b, a: CGFloat
//            
//            if hexString.hasPrefix("#") {
//                let start = hexString.index(hexString.startIndex, offsetBy: 1)
//                let hexColor = hexString.substring(from: start)
//                
//                if hexColor.characters.count == 8 {
//                    let scanner = Scanner(string: hexColor)
//                    var hexNumber: UInt64 = 0
//                    
//                    if scanner.scanHexInt64(&hexNumber) {
//                        r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
//                        g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
//                        b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
//                        a = CGFloat(hexNumber & 0x000000ff) / 255
//                        
//                        self.init(red: r, green: g, blue: b, alpha: a)
//                        return
//                    }
//                }
//            }
//            
//            return nil
//        }
    }
