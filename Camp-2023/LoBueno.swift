//
//  LoBueno.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct LoBueno: View {
    @Binding var timeRemaining: Int
    var body: some View {
        TextSlide(
            title: "Lo bueno ✅",
            timeRemaining: $timeRemaining,
            content: {
                TabView() {
                    FacilDeAprender()
                        .padding(.horizontal, 4)
                    
                    CodigoConciso()
                        .padding(.horizontal, 4)
                    
                    PreviewsView()
                        .padding(.horizontal, 4)
                    
                    NoMasStoryboards()
                        .padding(.horizontal, 4)
                    
                    PermiteCrearWidgets()
                        .padding(.horizontal, 4)
                    
                    Interoperabilidad()
                        .padding(.horizontal, 4)
                }
                .tabViewStyle(.page)
                .foregroundColor(.black)
            }
        )
    }
}

struct SubTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.system(size: 55))
            .padding(.vertical, 12)
    }
}

struct LoBueno_Previews: PreviewProvider {
    static var previews: some View {
        LoBueno(timeRemaining: Binding.constant(10))
    }
}
