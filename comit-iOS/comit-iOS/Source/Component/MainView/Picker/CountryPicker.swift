//
//  CountryPicker.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import SwiftUI

struct CountryPicker: View {
    @Binding var selectCountry: Country
    @Binding var ignoreCountry: Country
    private var countryArr: [Country] = [.KR, .JP, .USA, .PL]
    
    init(
        selectCountry: Binding<Country>,
        ignoreCountry: Binding<Country>
    ) {
        self._selectCountry = selectCountry
        self._ignoreCountry = ignoreCountry
    }
    
    var body: some View {
        Picker("선택하세요", selection: $selectCountry) {
            ForEach(countryArr, id: \.self) {
                if $0 != ignoreCountry {
                    Text($0.KRName() + "(\($0.unit()))")
                }
            }
        }
        .pickerStyle(MenuPickerStyle())
    }
}

struct CountryPicker_Previews: PreviewProvider {
    static var previews: some View {
        CountryPicker(
            selectCountry: .constant(Country.USA),
            ignoreCountry: .constant(.KR)
        )
    }
}
