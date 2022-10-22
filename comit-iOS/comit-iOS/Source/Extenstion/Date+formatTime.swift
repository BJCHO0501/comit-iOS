//
//  Date+formatTime.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/21.
//

import Foundation

extension Date {
    func formatTime() -> String {
        let formatter = DateFormatter()
        //한국 시간으로 표시
        formatter.locale = Locale(identifier: "ko_kr")
        formatter.timeZone = TimeZone(abbreviation: "KST")
        //형태 변환
        formatter.dateFormat = "yyyy-MM-dd / HH:mm:ss"
        
        return formatter.string(from: self)
    }
}
