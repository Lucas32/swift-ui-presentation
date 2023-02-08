//
//  PreviewsView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct PreviewsView: View {
    @State var showImages = false
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Previews 🖥")
                if showImages {
                    HStack {
                        Image("preview_waiting")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image("preview_error")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                } else  {
                    Text("Gracias a los previews es posible visualizar la renderización de una vista en SwiftUI directamente. Con cualquier cambio en el código, la vista es recargada, y se puede interactuar con ella.  Aún mejor, puedes renderizar en varias configuraciones de pantallas.")
                }
                
            }.padding()
            .onTapGesture {
                    showImages.toggle()
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
