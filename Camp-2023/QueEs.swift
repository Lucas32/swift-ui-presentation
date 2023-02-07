//
//  QueEs.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct QueEs: View {
    @Binding var timeRemaining: Int
    var body: some View {
        TextSlide(
            title: "¿Qué es?",
            timeRemaining: $timeRemaining,
            content: {
                VStack(alignment: .leading) {
                    Text("SwiftUI es un framework de Apple para la creación de Vistas que viene a sustituir a 'UIKit'. Está diseñado para aprovechar todo el potencial de 'Swift', ya que ha sido creado desde cero teniendo en cuenta todo lo que este lenguaje nos proporciona.")
                         
//                    Text("Usa una sintaxis declarativa (en lugar de imperativa como 'UIKit'). Esto quiere decir que nuestra aplicación responderá a estados y dependiendo del estado en cuestión sabrá qué tarea debe realizar o qué vista se debería mostrar.")
                    Image("swiftUI")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                        .padding(.top, 8)
                }.multilineTextAlignment(.leading)
            }
        )
    }
}

struct QueEs_Previews: PreviewProvider {
    static var previews: some View {
        QueEs(timeRemaining: Binding.constant(10))
    }
}
