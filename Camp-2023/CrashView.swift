//
//  CrashView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct CrashView: View {
    @EnvironmentObject var vm: SomeViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            TextSlide(
                title: "View with EnvironmentObject",
                content: {
                    VStack {
                        Text(vm.text)
                        
                        NavigationLink(destination: LoPeor()) {
                            Text("Lo Peor")
                        }
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("< Go back")
                                .foregroundColor(.white)
                                .padding(.vertical)
                        })
                    }
                }
            )
        }.navigationViewStyle(.stack)
    }
}

class SomeViewModel: ObservableObject {
    @Published var text: String = "Hi from vm"
}

struct CrashView_Previews: PreviewProvider {
    static let vm = SomeViewModel()
    static var previews: some View {
        CrashView()
            .environmentObject(vm)
    }
}
