//
//  Cover.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct Cover: View {
    @Binding var startedPresentation: Bool
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                VStack(spacing: 0) {
                    Spacer()
                    HStack(alignment: .center) {
                        Image("swiftui-96x96_2x")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 280)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("SwiftUI")
                                .font(.system(size: 150))
                            Text("Lo bueno y lo malo")
                                .font(.system(size: 60))
                        }
                    }
                    Spacer()
                }
                Spacer()
            }
            .contentShape(Rectangle())
            .onTapGesture {
                startedPresentation = true
            }
        }
        .foregroundColor(.white)
        .background(.black)
    }
}

struct Cover_Previews: PreviewProvider {
    static var previews: some View {
        Cover(startedPresentation: .constant(false))
    }
}
