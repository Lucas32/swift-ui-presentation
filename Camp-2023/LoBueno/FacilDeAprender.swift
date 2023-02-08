//
//  FacilDeAprender.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct FacilDeAprender: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Fácil de aprender 🥔")
                
                Text("La API de SwiftUI es muy simple, debido a su naturaleza declarativa (Texto, Imagen, VStack, ...).")
                Text("Su simplicidad y proximidad con otros frameworks como React, Flutter, Jetpack Compose son una puerta para otros desarrolladores de otras plataformas para que prueben el desarrollo en plataformas Apple.")
            }.padding()
            Image("uikit-swiftui-3")
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

struct FacilDeAprender_Previews: PreviewProvider {
    static var previews: some View {
        FacilDeAprender()
            .background(.blue)
    }
}
