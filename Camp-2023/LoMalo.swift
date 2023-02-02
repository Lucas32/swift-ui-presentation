//
//  LoMalo.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct LoMalo: View {
    var body: some View {
        TextSlide(
            title: "Lo malo ❌",
            content: {
                VStack {
                    Text("Como es un lenguaje joven, la comunidad es relativamente chica")
                }
            }
        )
    }
}

struct LoMalo_Previews: PreviewProvider {
    static var previews: some View {
        LoMalo()
    }
}
