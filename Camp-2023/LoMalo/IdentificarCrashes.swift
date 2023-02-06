//
//  IdentificarCrashes.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct IdentificarCrashes: View {
    @State var showCrashView: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Crashes 😵‍💫")
                
                Text("Los crashes en SwiftUI pueden ser difíciles de interpretar debido a la naturaleza declarativa del framework. A diferencia de UIKit, que es imperativo, SwiftUI actualiza la UI en base al estado de la aplicación, lo que dificulta la localización de la fuente del crash. Además, SwiftUI genera nombres de identificadores anónimos para los elementos de la UI, lo que puede dificultar la identificación de las vistas o componentes específicos involucrados en un crash. Además, el debugger de Xcode puede no proporcionar suficiente contexto para comprender lo que causó el crash.")
                Button(action: {
                    showCrashView.toggle()
                }, label: {
                    Text("Ver ejemplo")
                        .foregroundColor(.red)
                        .padding()
                })
            }.padding()
                
            

        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .fullScreenCover(isPresented: $showCrashView) {
            CrashView()
        }
        .multilineTextAlignment(.leading)
    }
}

struct LoPeor_Previews: PreviewProvider {
    static var previews: some View {
        IdentificarCrashes()
    }
}
