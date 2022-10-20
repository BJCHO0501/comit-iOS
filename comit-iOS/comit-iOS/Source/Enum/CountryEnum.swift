//
//  CountryEnum.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import Foundation

enum Country {
    case KR, USA, JP, PL
    
    func KRName() -> String {
        switch self {
        case .KR: return "한국"
        case .USA: return "미국"
        case .JP: return "일본"
        case .PL: return "필리핀"
        }
    }
    
    func unit() -> String {
        switch self {
        case .KR: return "KRW"
        case .USA: return "USD"
        case .JP: return "JPY"
        case .PL: return "PHP"
        }
    }
}
