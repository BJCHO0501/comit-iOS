//
//  OptionsText.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import SwiftUI

struct OptionsText: View {
    @Binding var passCountry: Country
    @Binding var catchCountry: Country
    @Binding var exchangRate: Double
    @Binding var exChangeTime: String
    @Binding var pay: String
    
    @Binding var error: Bool
    @Binding var errorMessage: String
    
    let numberFormetter = NumberFormatter()
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("송금국가")
                    .font(.system(size: 18))
                
                Spacer()
                CountryPicker(
                    selectCountry: $passCountry,
                    ignoreCountry: $catchCountry
                )
            }
            HStack {
                Text("수취국가")
                    .font(.system(size: 18))
                
                Spacer()
                CountryPicker(
                    selectCountry: $catchCountry,
                    ignoreCountry: $passCountry
                )
            }
            HStack {
                Text("환율")
                    .font(.system(size: 18))
                
                Spacer()
                Text(exchangRate.numberFormat() + " \(catchCountry.unit()) / \(passCountry.unit())")
                    .font(.system(size: 18))
            }
            HStack {
                Text("조회시간")
                    .font(.system(size: 18))
                
                Spacer()
                Text(exChangeTime)
                    .font(.system(size: 18))
            }
            HStack {
                InputTextField(
                    placehorder: "송금액",
                    text: $pay,
                    error: $error,
                    errorMessage: $errorMessage,
                    unit: $passCountry
                )
            }
        }
    }
}

struct OptionsText_Previews: PreviewProvider {
    static var previews: some View {
        OptionsText(
            passCountry: .constant(Country.KR),
            catchCountry: .constant(Country.JP),
            exchangRate: .constant(124.341),
            exChangeTime: .constant("2020/1/54 : 234"),
            pay: .constant(""),
            error: .constant(false),
            errorMessage: .constant("에러입니다")
        )
    }
}
