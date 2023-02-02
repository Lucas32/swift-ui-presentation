//
//  FirstSlide.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        GeometryReader { proxy in
            NavigationView {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("SwiftUI")
                            .font(.system(size: 100))
                        
                        VStack(alignment: .leading, spacing: 0) {
                            NavigationLink(destination: QueEs()) {
                                Item(text: "Qué es")
                            }
                            Item(text: "Lo bueno")
                            Item(text: "Lo malo")
                            Item(text: "Lo peor")
                            Item(text: "Conclusiones")
                            Item(text: "Preguntas")
                        }
                        .font(.system(size: 60))
                        .padding(.top, 20)
                        
                    }.padding(.leading, 100)
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
                            .padding(.leading, 300)
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
        
        var body: some View {
            HStack(spacing: 40) {
                Circle()
                    .frame(width: 20, height: 40)
                    
                Text(text)
            }
        }
    }
}

struct FirstSlide_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
