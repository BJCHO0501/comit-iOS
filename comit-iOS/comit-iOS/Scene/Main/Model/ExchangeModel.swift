//
//  ExchangeModel.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import Foundation

struct ExchangeModel: Codable {
    let quotes: [String : Double]
}

/*
 {
   "quotes": {
     "USDAUD": 1.278342,
     "USDEUR": 1.278342,
     "USDGBP": 0.908019,
     "USDPLN": 3.731504
   },
   "source": "USD",
   "success": true,
   "timestamp": 1432400348
 }
 */
