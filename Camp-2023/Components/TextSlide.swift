//
//  TextSlide.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct TextSlide<Content: View>: View {
    var title: String
    var content: () -> Content
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                    content()
                        .padding(.trailing, proxy.size.width * Background.swiftLogoScreenPortion +
                            Background.paddingTrailing + 20
                        )
                        .padding(.top, 4)
                        .font(.system(size: 30))
                }
                Spacer()
            }
            .padding(.leading, 50)
            .background {
                Background(proxy: proxy)
            }
            .navigationBarTitleDisplayMode(.inline)
            .frame(width: proxy.size.width, height: proxy.size.height)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TextSlide_Previews: PreviewProvider {
    static var previews: some View {
        TextSlide(
            title: "Title",
            content: {
                Text("Ejemplo")
            }
        )
    }
}
