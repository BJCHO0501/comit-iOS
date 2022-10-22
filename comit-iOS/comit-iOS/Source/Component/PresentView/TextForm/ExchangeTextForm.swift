//
//  ExchangeTextForm.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/21.
//

import SwiftUI

struct ExchangeTextForm: View {
    @Binding var exchange: Double
    @Binding var catchCountry: Country
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 0)
            HStack(spacing: 5) {
                Text("수취금은")
                
                Text(exchange.numberFormat())
                    .fontWeight(.bold)
                
                Text("\(catchCountry.unit()) 입니다")
            }
        }
        .padding(.vertical, 1)
    }
}

struct ExchangeTextForm_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeTextForm(
            exchange: .constant(2412.5),
            catchCountry: .constant(.KR)
        )
    }
}
