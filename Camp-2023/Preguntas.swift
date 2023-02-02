//
//  Preguntas.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Preguntas: View {
    @State var offsetX: CGFloat = 0
    @State var offsetY: CGFloat = 0
    @State var move: Bool = false
    
    var body: some View {
        TextSlide(
            title: "Preguntas",
            content: {
                GeometryReader { proxy in
                    ZStack {
                        Text("❓")
                            .font(.system(size: 240))
                            .scaleEffect(move ? 3 : 1)
                            .animation(.easeInOut(duration: 0.5), value: move)
                        
                        Text("❓")
                            .font(.system(size: 240))
                            .offset(x: offsetX, y: offsetY)
                            .animation(.easeInOut(duration: 0.3), value: move)
                        
                        Text("❓")
                            .font(.system(size: 240))
                            .offset(x: -offsetX, y: -offsetY)
                            .animation(.easeInOut(duration: 0.3), value: move)
                        
                        Text("❓")
                            .font(.system(size: 240))
                            .offset(x: offsetY, y: offsetX)
                            .animation(.easeInOut(duration: 0.3), value: move)
                        
                        Text("❓")
                            .font(.system(size: 240))
                            .offset(x: -offsetY, y: -offsetX)
                            .animation(.easeInOut(duration: 0.3), value: move)
                    }
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .onAppear {
                        DispatchQueue.main.async {
                            withAnimation {
                                move = true
                            }
                        }
                    }
                    .onChange(of: move) { move in
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                            self.move.toggle()
                        }
                        DispatchQueue.main.async {
                            var x = CGFloat.random(in: -proxy.size.width/2..<proxy.size.width/2)
                            var y = CGFloat.random(in: -proxy.size.height/2..<proxy.size.height/2)
                            if x < -proxy.size.width/4 {
                                x = -proxy.size.width/4
                            }
                            if x > proxy.size.width/4 {
                                x = proxy.size.width/4
                            }
                            if y < -proxy.size.height/4 {
                                y = -proxy.size.height/4
                            }
                            if y > proxy.size.height/4 {
                                y = proxy.size.height/4
                            }
                            withAnimation {
                                offsetX = x
                                offsetY = y
                            }
                        }
                    }
                }
                
            }
        )
    }
}

struct Preguntas_Previews: PreviewProvider {
    static var previews: some View {
        Preguntas()
    }
}
