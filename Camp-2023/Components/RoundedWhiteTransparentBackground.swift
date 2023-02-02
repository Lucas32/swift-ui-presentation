//
//  RoundedWhiteTransparentBackground.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct RoundedWhiteTransparentBackground: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(.white)
            .opacity(0.4)
    }
}

struct RoundedWhiteTransparentBackground_Previews: PreviewProvider {
    static var previews: some View {
        RoundedWhiteTransparentBackground()
    }
}
