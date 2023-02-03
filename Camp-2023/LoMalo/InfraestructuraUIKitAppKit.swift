//
//  InfraestructuraUIKitAppKit.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 02/02/2023.
//

import SwiftUI

struct InfraestructuraUIKitAppKit: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Infraestructura basada en UIKit y AppKit 🚧🏗️👷")
                
                Text("Debajo de la API de SwiftUI hay componentes implementados con UIKit/AppKit.")
            }.padding()
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
