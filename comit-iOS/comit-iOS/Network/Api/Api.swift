//
//  Api.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import Foundation

enum API {
    case getExchange
    
    func path() -> String {
        switch self {
        case .getExchange:
            return "/currency_data/live"
        }
    }
}
