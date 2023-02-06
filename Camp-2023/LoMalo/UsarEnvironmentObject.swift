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
                SubTitle(title: "Usar @EnvironmentObject 🧑‍💻")
                
                Text("Es práctico pero puede introducir crashes difíciles de detectar durante el desarrollo.")
                Text("EnvironmentObject es otro Property Wrapper que usamos para proporcionar desde alguna vista padre una clase que podrá ser usada en toda su jerarquía de vistas. Es muy sencillo usarlo pero es muy dificil identificarlo cuando ocurre un crash")
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
