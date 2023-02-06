//
//  Conclusiones.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Conclusiones: View {
    var body: some View {
        TextSlide(
            title: "Conclusiones 👨‍💻",
            content: {
                VStack (alignment: .leading){
                    Text("Con el paso del tiempo SwiftUI será el estandarte en el desarrollo para iOS y Mac.")
                    Text("A pesar de tener ciertas limitaciones, estas disminuiran a medida que la tecnología evolucione y mejore con el tiempo.")
                }
            }
        )
    }
}

struct Conclusiones_Previews: PreviewProvider {
    static var previews: some View {
        Conclusiones()
    }
}
