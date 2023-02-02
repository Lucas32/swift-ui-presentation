//
//  FirstSlide.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Menu: View {
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    
    var body: some View {
        GeometryReader { proxy in
            NavigationView {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("SwiftUI")
                            .font(.system(size: idiom == .pad ? 100 : 50))
                        
                        VStack(alignment: .leading, spacing: 0) {
                            NavigationLink(destination: QueEs()) {
                                Item(text: "Qué es")
                            }
                            NavigationLink(destination: LoBueno()) {
                                Item(text: "Lo bueno")
                            }
                            NavigationLink(destination: LoMalo()) {
                                Item(text: "Lo malo")
                            }
                            NavigationLink(destination: LoPeor()) {
                                Item(text: "Lo peor")
                            }
                            NavigationLink(destination: Conclusiones()) {
                                Item(text: "Conclusiones")
                            }
                            NavigationLink(destination: Preguntas()) {
                                Item(text: "Preguntas")
                            }
                        }
                        .font(.system(size: 60))
                        .padding(.top, 20)
                        
                    }.padding(.leading, idiom == .pad ? 100 : 30)
                    Spacer()
                }
                .background {
                    ZStack {
                        Image("presentation")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                        
                        Image("swift_logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width / 4)
                            .padding(.leading, idiom == .pad ? 300 : 250)
                    }
                }
            }
            .navigationViewStyle(.stack)
            .foregroundColor(.white)
            .frame(width: proxy.size.width, height: proxy.size.height)
        }.edgesIgnoringSafeArea(.all)
    }
    
    struct Item: View {
        var text: String
        private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
        
        var body: some View {
            HStack(spacing: idiom == .pad ? 40 : 10) {
                Circle()
                    .frame(width: idiom == .pad ? 20 : 10)
                    
                Text(text)
                    .font(.system(size: idiom == .pad ? 40 : 30))
            }
        }
    }
}

struct FirstSlide_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
