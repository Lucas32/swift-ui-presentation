//
//  LenguajeJoven.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 02/02/2023.
//

import SwiftUI

struct LenguajeJoven: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Lenguaje Joven 👦")
                
                Text("Como es un lenguaje joven, la comunidad es relativamente chica")
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct LenguajeJoven_Previews: PreviewProvider {
    static var previews: some View {
        LenguajeJoven()
    }
}
