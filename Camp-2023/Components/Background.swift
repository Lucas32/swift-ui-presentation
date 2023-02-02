//
//  Background.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Background: View {
    let proxy: GeometryProxy
    static let paddingTrailing: CGFloat = 80
    static let swiftLogoScreenPortion: CGFloat = 0.25
    
    var body: some View {
        ZStack(alignment: .trailing) {
            Image("presentation")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: proxy.size.width, height: proxy.size.height)
            
            Image("swift_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: proxy.size.width * Background.swiftLogoScreenPortion)
                .padding(.trailing, Background.paddingTrailing)
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            Background(proxy: proxy)
        }.edgesIgnoringSafeArea(.all)
    }
}
