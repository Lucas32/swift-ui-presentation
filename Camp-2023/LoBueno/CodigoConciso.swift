//
//  CodigoConciso.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct CodigoConciso: View {
    @State var showUIKitcode: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                SubTitle(title: "Código más conciso y más velocidad de desarrollo 📈")
                    .padding()
                                
                HStack {
                    Spacer()
                    Image("codigo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 350)
                    Spacer()
                }
                
                Button(action: {
                    showUIKitcode.toggle()
                }, label: {
                    Text("Ver lo mismo con UIKit >")
                        .foregroundColor(.red)
                        .padding()
                })
            }
        }
        .fullScreenCover(isPresented: $showUIKitcode) {
            ScrollView {
                VStack(alignment: .leading) {
                    Button(action: {
                        showUIKitcode.toggle()
                    }, label: {
                        Text("< Back").padding()
                    })
                    
                    Image("UIKitCode")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
    }
}

struct CodigoConciso_Previews: PreviewProvider {
    static var previews: some View {
        CodigoConciso()
    }
}
