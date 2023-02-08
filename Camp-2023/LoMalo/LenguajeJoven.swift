//
//  LenguajeJoven.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 02/02/2023.
//

import SwiftUI

struct LenguajeJoven: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Lenguaje Joven 👦")
                
                Text("Como es un lenguaje joven, la comunidad es relativamente chica.")
                Text("SwiftUI fue publicado junto con iOS 13.")
                Text("A partir de la versión 2.0 es considerado “listo para producción”.")
            }.padding()
            Image("navitagion-view")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(5)
            
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
