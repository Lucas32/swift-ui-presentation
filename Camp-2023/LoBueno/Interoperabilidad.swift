//
//  Interoperabilidad.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Interoperabilidad: View {
    @State var showUIKitView: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Interoperabilidad entre SwiftUI y UIKit ↔️")
                
                Text("Su uso puede ser progresivo, ya que interactuan perfectamente con UIKit y AppKit:")
                
                Text("Es posible agregar código SwiftUI a una app existente (UIHostingController)")
                
                HStack {
                    Text("O puedes agregar código UIKit a una nueva app con interface declarativa (UIViewRepresentable y UIViewControllerRepresentable)")
                    
                    Text("Ejemplo")
                        .padding(4)
                        .foregroundColor(.blue)
                        .onTapGesture {
                            showUIKitView.toggle()
                        }
                }
              
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .fullScreenCover(isPresented: $showUIKitView) {
            GeometryReader { proxy in
                ScrollView {
                    VStack(alignment: .leading) {
                        Button(action: {
                            showUIKitView.toggle()
                        }, label: {
                            Text("< Back").padding()
                        })
                        
                        Image("UIViewRepresentableExample")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width)
                        
                        MyUIKitView()
                    }
                }
            }
        }
        .multilineTextAlignment(.leading)
    }
}

// Ejemplo UIKit en SwiftUI
@available(iOS 13, *)
struct MyUIKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> UILabel {
        // Creating, configuring, and returning the UIKit view here
        let view = UILabel()
        view.textColor = .blue
        view.text = "Hello from UIKit!"
        return view
    }

    func updateUIView(_ uiView: UILabel, context: Context) {
        // Update the state of the view here.
    }
}


struct Interoperabilidad_Previews: PreviewProvider {
    static var previews: some View {
        Interoperabilidad()
    }
}
