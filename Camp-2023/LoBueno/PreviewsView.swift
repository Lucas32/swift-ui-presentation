//
//  PreviewsView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct PreviewsView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Previews 🖥")
                
                Text("Su gran integración con Xcode lo convierte en un gran asset. Gracias a los Previews es posible visualizar la renderización de una vista en SwiftUI directamente. Con cualquier cambio en el código, la vista es recargada, con la cual se puede interactuar.  Aún mejor, puedes renderizar en varias configuraciones de pantallas.")
            }.padding()
            VStack {
                Image("preview_waiting")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("preview_error")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
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
