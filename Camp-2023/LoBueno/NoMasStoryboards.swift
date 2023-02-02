//
//  NoMasStoryboards.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct NoMasStoryboards: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "No más storyboards 🎆")
                
                Text("Si bien los storyboards ayudan al desarrollo de pantallas, cuando esta se vuelve compleja existen problemas con las restricciones y demás componentes. También se suelen generar conflictos difíciles de resolver cuando más de una persona realiza cambios en el mismo storyboard.")
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct NoMasStoryboards_Previews: PreviewProvider {
    static var previews: some View {
        NoMasStoryboards()
    }
}
