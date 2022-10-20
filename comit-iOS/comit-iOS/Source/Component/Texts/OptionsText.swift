//
//  OptionsText.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import SwiftUI

struct OptionsText: View {
    let passCountry: Country
    let catchCountry: Country
    @Binding var exchangRate: String
    @Binding var exChangeTime: String
    @Binding var pay: String
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("송금국가")
                    .font(.system(size: 18))
                
                Spacer()
                Text(passCountry.KRName() + "(\(passCountry.unit()))")
                    .font(.system(size: 18))
            }
            HStack {
                Text("수취국가")
                    .font(.system(size: 18))
                
                Spacer()
                Text(catchCountry.KRName() + "(\(catchCountry.unit()))")
                    .font(.system(size: 18))
            }
            HStack {
                Text("환율")
                    .font(.system(size: 18))
                
                Spacer()
                Text(exchangRate)
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
                Text("송금액")
                    .font(.system(size: 18))
                Spacer()
                TextField("", text: $pay)
                    .frame(width: 150)
                    .overlay(
                        Rectangle()
                            .stroke(style: .init(lineWidth: 1))
                    )
                Text("USD")
                    .font(.system(size: 18))
            }
        }
    }
}

struct OptionsText_Previews: PreviewProvider {
    static var previews: some View {
        OptionsText(
            passCountry: Country.KR,
            catchCountry: Country.JP,
            exchangRate: .constant("12314"),
            exChangeTime: .constant("2020/1/54 : 234"),
            pay: .constant("")
        )
    }
}
