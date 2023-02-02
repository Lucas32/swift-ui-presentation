//
//  ContentView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var message: String = ""
    @State var messages: [String] = []
    
    var body: some View {
        VStack(spacing: 0) {
            Text("Chat")
                .padding(8)
            
            Divider()
            
            Spacer()
            
            ForEach(messages, id: \.self) { message in
                HStack {
                    Text(message)
                        .padding(.vertical, 4)
                        .padding(.horizontal, 12)
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 8).foregroundColor(.blue))
                        
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.vertical, 4)
            }
            
            Divider()
                .padding(.top, 8)
            
            HStack(spacing: 10) {
                TextField("Message", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button("Send") {
                    messages.append(message)
                    message = ""
                }.disabled(message.isEmpty)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
