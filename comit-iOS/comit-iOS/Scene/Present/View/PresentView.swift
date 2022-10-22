//
//  PresentView.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/21.
//

import SwiftUI

struct PresentView: View {
    @Binding var exchangeRate: Double
    @Binding var catchCountry: Country
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .center){
                Text("수취금액")
                    .font(.system(size: 50))
                    .bold()
                    .padding(.top, proxy.size.height / 8)
                    .padding(.bottom, 58)
                
                ExchangeTextForm(
                    exchange: $exchangeRate,
                    catchCountry: $catchCountry
                )
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButton()
            }
        }
    }
}

struct PresentView_Previews: PreviewProvider {
    static var previews: some View {
        PresentView(
            exchangeRate: .constant(10341.4),
            catchCountry: .constant(.KR)
        )
    }
}
