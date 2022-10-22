//
//  Header.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import Foundation
import Alamofire

enum Header {
    case apikey
    
    func Header() -> HTTPHeaders {
        switch self {
        case .apikey:
            return ["Content-Type" : "application/json", "apikey" : "d"]
        }
    }
}
