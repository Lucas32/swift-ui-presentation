//
//  LoMalo.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct LoMalo: View {
    var body: some View {        
        TextSlide(
            title: "Lo malo ❌",
            content: {
                TabView() {
                    LenguajeJoven()
                        .padding(.horizontal, 4)
//                    SoportadoDesde13()
//                        .padding(.horizontal, 4)
                    InfraestructuraUIKitAppKit()
                        .padding(.horizontal, 4)
                    UsarEnvironmentObject()
                        .padding(.horizontal, 4)
                    IdentificarCrashes()
                }
                .tabViewStyle(.page)
                .foregroundColor(.black)
            }
        )
    }
}

struct LoMalo_Previews: PreviewProvider {
    static var previews: some View {
        LoMalo()
    }
}
