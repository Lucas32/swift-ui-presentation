//
//  FacilDeAprender.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct FacilDeAprender: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Fácil de aprender 🥔")
                
                Text("La API de SwiftUI es muy simple, debido a su naturaleza declarativa (Texto, Imagen, VStack, ...).")
                Text("La abstracción es suficiente para que Apple nos ofrezca compatibilidad con todas las plataformas. Una interface para todas, donde habría sido necesario adaptar la UI entre UIKit y AppKit.")
                Text("Su simplicidad y proximidad con otros frameworks como React, Flutter, Jetpack Compose son una puerta para otros desarrolladores de otras plataformas para que prueben el desarrollo en plataformas Apple.")
            }.padding()
        }
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .opacity(0.4)
        }
        .multilineTextAlignment(.leading)
    }
}

struct FacilDeAprender_Previews: PreviewProvider {
    static var previews: some View {
        FacilDeAprender()
            .background(.blue)
    }
}
