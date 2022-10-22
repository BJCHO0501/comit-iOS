//
//  InputTextField.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/22.
//

import SwiftUI

struct InputTextField: View {
    
    
    let placehorder: String
    @Binding var text: String
    @Binding var error: Bool
    @Binding var errorMessage: String
    @Binding var unit: Country
    
    init(
        placehorder: String,
        text: Binding<String>,
        error: Binding<Bool> = .constant(false),
        errorMessage: Binding<String> = .constant(""),
        unit: Binding<Country>
    ) {
        self.placehorder = placehorder
        self._text = text
        self._error = error
        self._errorMessage = errorMessage
        self._unit = unit
    }
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                TextField(placehorder, text: $text)
                    .keyboardType(.decimalPad)
                    .font(.system(size: 20))
                
                Text(unit.unit())
                    .font(.system(size: 20))
                    .fontWeight(.ultraLight)
                    
            }
            Rectangle()
                .foregroundColor(error ? .red : .black)
                .frame(height: 2)
                .cornerRadius(10)
            
            if(error) {
                HStack {
                    Text(errorMessage)
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .padding(.leading, 8)
                    Spacer()
                }
            }
        }
    }
}

struct InputTextField_Previews: PreviewProvider {
    static var previews: some View {
        InputTextField(
            placehorder: "환율",
            text: .constant(""),
            error: .constant(true),
            errorMessage: .constant("오류가 발생하였습니다!"),
            unit: .constant(.KR)
        )
    }
}
