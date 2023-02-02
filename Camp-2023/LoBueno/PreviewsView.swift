//
//  PreviewsView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct PreviewsView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Previews 🖥")
                
                Text("Su gran integración con Xcode lo convierte en un gran asset. Gracias a los Previews es posible visualizar la renderización de una vista en SwiftUI directamente. Con cualquier cambio en el código, la vista es recargada, con la cual se puede interactuar.  Aún mejor, puedes renderizar en varias configuraciones de pantallas.")
                Text("También puedes arrastrar componentes (text, button) como en los Storyboards. Pero la diferencia es que modifica directamente el código, no tenes los archivos xml ilegibles.")
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct PreviewsView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewsView()
    }
}
