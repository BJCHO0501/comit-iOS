//
//  EnterButton.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/20.
//

import SwiftUI

struct EnterButton: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 0) {
                Rectangle()
                    .frame(height: 0)
                
                Text(title)
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                    .bold()
                    
            }
            .padding(.vertical, 14)
            .background(Color.mainColor)
        }
    }
}

struct EnterButton_Previews: PreviewProvider {
    static var previews: some View {
        EnterButton(
            action: {},
            title: "환율 계산"
        )
    }
}
