//
//  BackButton.swift
//  comit-iOS
//
//  Created by 조병진 on 2022/10/21.
//

import SwiftUI

struct BackButton: View {
    @Environment (\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image(systemName: "chevron.left")
                .font(.system(size: 18))
                .foregroundColor(.gray)
        }
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
