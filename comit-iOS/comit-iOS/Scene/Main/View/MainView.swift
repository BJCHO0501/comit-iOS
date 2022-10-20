//
//  MainView.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import SwiftUI

struct MainView: View {
    @StateObject var exchangeVM = ExchangeViewModel()
    
    @State var passMoney: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            let _ = exchangeVM.printLog()
            VStack {
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("환율 계산")
                            .font(.system(size: 50))
                            .bold()
                            .padding(.top, proxy.size.height / 8)
                            .padding(.bottom, 58)
                        
                        OptionsText(
                            passCountry: $exchangeVM.passCountry,
                            catchCountry: $exchangeVM.catchCountry,
                            exchangRate: $exchangeVM.exchangeRate,
                            exChangeTime: $exchangeVM.exchangeTime,
                            pay: $passMoney
                        )
                        .padding(.horizontal, 16)
                        
                        Spacer()
                    }
                }
                EnterButton(
                    action: {},
                    title: "환률 계산"
                )
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
