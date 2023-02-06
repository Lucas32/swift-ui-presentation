//
//  UsarEnvironmentObject.swift
//  Camp-2023
//
//  Created by Rodrigo Bechara on 06/02/2023.
//

import SwiftUI

struct UsarEnvironmentObject: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Usar @EnvironmentObject 🧑‍💻")
                
                Text("Es práctico pero puede introducir crashes difíciles de detectar durante el desarrollo.")
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct UsarEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        UsarEnvironmentObject()
    }
}
