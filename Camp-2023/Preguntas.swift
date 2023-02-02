//
//  Preguntas.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Preguntas: View {
    var body: some View {
        TextSlide(
            title: "Preguntas",
            content: {
                VStack {
                    Text("Facil de aprender")
                }
            }
        )
    }
}

struct Preguntas_Previews: PreviewProvider {
    static var previews: some View {
        Preguntas()
    }
}
