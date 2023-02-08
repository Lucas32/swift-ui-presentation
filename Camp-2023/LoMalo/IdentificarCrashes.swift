//
//  IdentificarCrashes.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct IdentificarCrashes: View {
    
    @State var showCrashView: Bool = false
    @State var showSecondPage: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Crashes 😵‍💫")
                
                Text(showSecondPage ? "A diferencia de UIKit, que es imperativo, SwiftUI actualiza la UI en base al estado de la aplicación, lo que dificulta la localización de la fuente del crash." : "Los crashes en SwiftUI pueden ser difíciles de interpretar debido a la naturaleza declarativa del framework.")
                    .onTapGesture {
                        showSecondPage.toggle()
                    }
                
                if showSecondPage {
                    Button(action: {
                        showCrashView.toggle()
                    }, label: {
                        Text("Ver ejemplo")
                            .foregroundColor(.red)
                            .padding()
                    })
                }
                
            }.padding()
            Image(showSecondPage ? "error" : "declarative" )
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: 250)
                .padding(5)
            

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
