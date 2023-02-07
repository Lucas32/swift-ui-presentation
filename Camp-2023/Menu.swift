//
//  FirstSlide.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Menu: View {
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    @Binding var timeRemaining: Int
    var body: some View {
        NavigationView {
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                   
                    Text("SwiftUI")
                        .font(.system(size: idiom == .pad ? 100 : 50))
                    
                    VStack(alignment: .leading, spacing: 15) {
                        NavigationLink(destination: QueEs(timeRemaining: $timeRemaining)) {
                            Item(text: "Qué es")
                        }
                        NavigationLink(destination: LoBueno(timeRemaining: $timeRemaining)) {
                            Item(text: "Lo bueno")
                        }
                        NavigationLink(destination: LoMalo(timeRemaining: $timeRemaining)) {
                            Item(text: "Lo malo")
                        }
                        NavigationLink(destination: Conclusiones(timeRemaining: $timeRemaining)) {
                            Item(text: "Conclusiones")
                        }
                        NavigationLink(destination: Preguntas(timeRemaining: $timeRemaining)) {
                            Item(text: "Preguntas")
                        }
                    }
                    .font(.system(size: 60))
                    .padding(.top, 20)
                    
                }
                .padding(.leading, idiom == .pad ? 100 : 30)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
            .background {
                ZStack {
                    Image("presentation")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                        .ignoresSafeArea(.all)
                    
                    VStack {
                        HStack {
                            Spacer()
                            TimerRendering(timeRemaining: $timeRemaining)
                        }
                        Spacer()
                    }.padding()
                    
                    Image("swift_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.size.width / 4)
                        .padding(.leading, idiom == .pad ? 300 : 250)
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .navigationViewStyle(.stack)
        .foregroundColor(.white)

    }
    
    func secondsToHoursMinutesSeconds(_ seconds: Int) -> (Int, Int, Int) {
        return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
    struct Item: View {
        var text: String
        private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
        
        var body: some View {
            HStack(spacing: idiom == .pad ? 20 : 10) {
                Circle()
                    .frame(width: idiom == .pad ? 20 : 10)
                
                Text(text)
                    .font(.system(size: idiom == .pad ? 50 : 30))
            }.fixedSize()
        }
    }
}


struct FirstSlide_Previews: PreviewProvider {
    static var previews: some View {
        Menu(timeRemaining: Binding.constant(10))
    }
}
