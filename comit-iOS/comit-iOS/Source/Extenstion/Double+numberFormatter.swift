//
//  Double+numberFormatter.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/21.
//

import Foundation

extension Double {
    func numberFormat() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        let value = formatter.string(from: self as NSNumber)
        
        return value ?? "Error"
    }
}
