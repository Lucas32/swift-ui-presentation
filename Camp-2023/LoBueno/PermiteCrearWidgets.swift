//
//  PermiteCrearWidgets.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct PermiteCrearWidgets: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                SubTitle(title: "Permite crear widgets 📲")
                
                Text("Con el nuevo framework WidgetKit (disponible desde iOS 14) se pueden crear widgets, y estos solo pueden ser desarrollados usando el nuevo framework SwiftUI.")
              
            }.padding()
        }
        .background {
            RoundedWhiteTransparentBackground()
        }
        .multilineTextAlignment(.leading)
    }
}

struct PermiteCrearWidgets_Previews: PreviewProvider {
    static var previews: some View {
        PermiteCrearWidgets()
    }
}
