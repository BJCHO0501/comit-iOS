//
//  MainView.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import SwiftUI

struct MainView: View {
    @StateObject var exchangeVM = ExchangeViewModel()
    
    @State private var passMoney: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            NavigationLink(
                destination: PresentView(
                    exchangeRate: $exchangeVM.exchangeCalculatValue,
                    catchCountry: $exchangeVM.catchCountry
                ),
                isActive: $exchangeVM.isSucced
            ) {
                EmptyView()
            }
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
                            pay: $passMoney,
                            error: $exchangeVM.isError,
                            errorMessage: $exchangeVM.errorMessage
                        )
                        .padding(.horizontal, 16)
                        
                        Spacer()
                    }
                }
                
                EnterButton(
                    action: {
                        exchangeVM.money = passMoney
                        exchangeVM.exchangeMoney()
                    },
                    title: "환률 계산"
                )
            }
        }
        .onChange(of: exchangeVM.passCountry) { _ in
            exchangeVM.getExchange()
        }
        .onChange(of: exchangeVM.catchCountry) { _ in
            exchangeVM.getExchange()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
