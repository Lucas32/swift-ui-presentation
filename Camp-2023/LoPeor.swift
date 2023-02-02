//
//  LoPeor.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct LoPeor: View {
    @State var showCrashView: Bool = false
    
    var body: some View {
        TextSlide(
            title: "Lo peor 💀",
            content: {
                VStack {
                    Text("No hay mucha información en los reportes de crashes")
                    
                    NavigationLink(destination: CrashView()) {
                        Text("Navigate to view with environment")
                            .foregroundColor(.green)
                            .padding()
                    }
                    
                    Button(action: {
                        showCrashView.toggle()
                    }, label: {
                        Text("Show full screen cover with environment")
                            .foregroundColor(.red)
                            .padding()
                    })
                }.fullScreenCover(isPresented: $showCrashView) {
                    CrashView()
                }
            }
        )
    }
}

struct LoPeor_Previews: PreviewProvider {
    static var previews: some View {
        LoPeor()
    }
}
