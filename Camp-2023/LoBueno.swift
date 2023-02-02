//
//  LoBueno.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct LoBueno: View {
    var body: some View {
        TextSlide(
            title: "Lo bueno ✅",
            content: {
                TabView() {
                    FacilDeAprender()
                    
                    CodigoConciso()
                    
                    PreviewsView()
                    
                    NoMasStoryboards()
                    
                    PermiteCrearWidgets()
                    
                    Interoperabilidad()
                }
                .tabViewStyle(.page)
                .foregroundColor(.black)
                .font(.system(size: 30))
            }
        )
    }
}

struct SubTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.system(size: 36))
            .padding(.vertical, 20)
    }
}

struct LoBueno_Previews: PreviewProvider {
    static var previews: some View {
        LoBueno()
    }
}
