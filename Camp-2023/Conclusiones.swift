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
                    Text("No solo representa el futuro del desarrollo en Apple si no es el 'Ahora'")
                    Text("Es necesario para widgets")
                    Text("La compatibilidad no es un problema")
                    Text("Framework moderno")
                    Text("Desarrollo 100% SwiftUI es casi imposible")
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
