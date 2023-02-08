//
//  UsarEnvironmentObject.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 06/02/2023.
//

import SwiftUI

struct UsarEnvironmentObject: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "*Usar @EnvironmentObject 🧑‍💻")
                
                Text("EnvironmentObject es otro Property Wrapper que usamos para proporcionar desde alguna vista padre una instancia de clase que podrá ser usada en toda su jerarquía de vistas. Es práctico para compartir estados entre distintas vistas pero puede ocasionar crashes difíciles de detectar.")
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct UsarEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        UsarEnvironmentObject()
    }
}
