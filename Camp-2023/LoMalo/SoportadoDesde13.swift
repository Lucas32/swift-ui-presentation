//
//  SoportadoDesde13.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 02/02/2023.
//

import SwiftUI

struct SoportadoDesde13: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Soportado desde iOS 1️⃣3️⃣")
                
                Text("SwiftUI fue anunciado en WWDC 2019 junto con iOS 13 la cual no es recomendado")
                Text("Inclusive para iOS 14 🤔")
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct SoportadoDesde13_Previews: PreviewProvider {
    static var previews: some View {
        SoportadoDesde13()
    }
}
