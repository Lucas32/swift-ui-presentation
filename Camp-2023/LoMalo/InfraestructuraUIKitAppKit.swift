//
//  InfraestructuraUIKitAppKit.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 02/02/2023.
//

import SwiftUI

struct InfraestructuraUIKitAppKit: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Infraestructura basada en UIKit y AppKit 🚧🏗️👷")
                
                Text("Debajo de la API de SwiftUI hay componentes implementados con UIKit/AppKit.")
                Text("Se podría imaginar en un futuro a SwiftUI completamente desconectado de sus predecesores,  pero hoy en día depende completamente de ellos.")
            }.padding()
            Image("uikit-swiftui")
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: 250)
                .padding(5)
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct InfraestructuraUIKitAppKit_Previews: PreviewProvider {
    static var previews: some View {
        InfraestructuraUIKitAppKit()
    }
}
