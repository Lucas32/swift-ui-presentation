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
                
                Text("No hay mucha información en los reportes de crashes .")
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
