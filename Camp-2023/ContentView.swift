//
//  ContentView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var startedPresentation = false
    
    var body: some View {
        if (!startedPresentation) {
            Cover(startedPresentation: $startedPresentation)
        } else {
            Menu()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

















































class SGConvenience{
    #if os(watchOS)
    static var deviceWidth: CGFloat = WKInterfaceDevice.current().screenBounds.size.width
    #elseif os(iOS)
    static var deviceWidth: CGFloat = UIScreen.main.bounds.size.width
    #elseif os(macOS)
    static var deviceWidth: CGFloat? = NSScreen.main?.visibleFrame.size.width // You could implement this to force a CGFloat and get the full device screen size width regardless of the window size with .frame.size.width
    #endif
    
    #if os(watchOS)
    static var deviceHeight: CGFloat = WKInterfaceDevice.current().screenBounds.size.height
    #elseif os(iOS)
    static var deviceHeight: CGFloat = UIScreen.main.bounds.size.height
    #elseif os(macOS)
    static var deviceHeight: CGFloat? = NSScreen.main?.visibleFrame.size.height // You could implement this to force a CGFloat and get the full device screen size width regardless of the window size with .frame.size.width
    #endif
}
