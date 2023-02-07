//
//  Background.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Background: View {
    @Binding var timeRemaining: Int
    let proxy: GeometryProxy
    static let paddingTrailing: CGFloat = 80
    static let swiftLogoScreenPortion: CGFloat = idiom == .pad ? 0.25 : 0.15
    
    static var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("presentation")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: proxy.size.width, height: proxy.size.height)
                HStack {
                    Image("swift_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        
                    
                    Text("SwiftUI: Lo bueno y lo malo")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                    TimerRendering(timeRemaining: $timeRemaining)
                    
                }
            .padding()
        }
    }
}

struct TimerRendering: View {
    @Binding var timeRemaining: Int
    @State private var isAnimated = false
    var body: some View {
        if timeRemaining < 11 {
            ZStack {
                Text(getTime(timeRemaining))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 5)
                            .background(timeRemaining > 0 ? .black.opacity(0.75) : .red)
                            .clipShape(Capsule())
            }
            .scaleEffect(isAnimated ? 1.2 : 1)
            .task {
                withAnimation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true)){
                            isAnimated.toggle()
                    }


            }
        } else {
            ZStack {
                Text(getTime(timeRemaining))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width:180)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 5)
                            .background(.black.opacity(0.75))
                            .clipShape(Capsule())
                            
            }
        }
     
    }
    
    func getTime(_ number: Int) -> String {
        let min = (number % 3600) / 60
        let sec = (number % 3600) % 60
    
        
        return "Time: \(min > 9 ? "":"0")\(min):\(sec > 9 ? "":"0")\(sec)"
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            Background(timeRemaining: Binding.constant(10), proxy: proxy)
        }.edgesIgnoringSafeArea(.all)
    }
}
