//
//  CrashView.swift
//  Camp-2023
//
//  Created by Lucas Kuczek on 02/02/2023.
//

import SwiftUI

struct CrashView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("< Go back")
                        .foregroundColor(.blue)
                        .padding(.vertical)
                })
                
                Text(
            """
                Crashed: com.apple.main-thread
                 0  SwiftUI                        0x817208 OUTLINED_FUNCTION_2 + 620
                 1  SwiftUI                        0x817220 OUTLINED_FUNCTION_2 + 644
                 2  SwiftUI                        0x125cbc4 OUTLINED_FUNCTION_2 + 424
                 3  SwiftUI                        0x68244 OUTLINED_FUNCTION_441 + 600
                 4  SwiftUI                        0x47dd0 OUTLINED_FUNCTION_194 + 572
                 5  UIKitCore                      0x1b7c84 -[UIViewController removeChildViewController:notifyDidMove:] + 128
                 6  UIKitCore                      0x77bf7c -[UINavigationController removeChildViewController:notifyDidMove:] + 80
                 7  UIKitCore                      0x205a10 -[UIViewController dealloc] + 768
                 8  UIKitCore                      0x10030 -[UINavigationController viewDidDisappear:] + 372
                 9  UIKitCore                      0xd68c -[UIViewController _setViewAppearState:isAnimating:] + 1008
                 10 UIKitCore                      0x46ea90 -[UIViewController __viewDidDisappear:] + 152
                 11 UIKitCore                      0x7e9e3c __64-[UIViewController viewDidMoveToWindow:shouldAppearOrDisappear:]_block_invoke_3 + 44
                 12 UIKitCore                      0x1a4a14 -[UIViewController _executeAfterAppearanceBlock] + 84
                 13 UIKitCore                      0x1a4958 -[_UIAfterCACommitBlock run] + 72
                 14 UIKitCore                      0x1a488c -[_UIAfterCACommitQueue flush] + 176
                 15 UIKitCore                      0x1a4798 _runAfterCACommitDeferredBlocks + 496
                 16 UIKitCore                      0x3f6c0 _cleanUpAfterCAFlushAndRunDeferredBlocks + 108
                 17 UIKitCore                      0x504fc4 _UIApplicationFlushCATransaction + 72
                 18 UIKitCore                      0x651678 _UIUpdateSequenceRun + 84
                 19 UIKitCore                      0xc90904 schedulerStepScheduledMainSection + 172
                 20 UIKitCore                      0xc8fad0 runloopSourceCallback + 92
                 21 CoreFoundation                 0xd622c __CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE0_PERFORM_FUNCTION__ + 28
                 22 CoreFoundation                 0xe2614 __CFRunLoopDoSource0 + 176
                 23 CoreFoundation                 0x6651c __CFRunLoopDoSources0 + 244
                 24 CoreFoundation                 0x7beb8 __CFRunLoopRun + 836
                 25 CoreFoundation                 0x811e4 CFRunLoopRunSpecific + 612
                 26 GraphicsServices               0x1368 GSEventRunModal + 164
                 27 UIKitCore                      0x3a2d88 -[UIApplication _run] + 888
                 28 UIKitCore                      0x3a29ec UIApplicationMain + 340
                 29 SwiftUI                        0x1dace8 OUTLINED_FUNCTION_895 + 2424
                 30 SwiftUI                        0x137c24 block_copy_helper.1 + 388
                 31 SwiftUI                        0x120b44 OUTLINED_FUNCTION_901 + 2804
                 32 ZooPix                         0x9c44 main + 4311358532 (<compiler-generated>:4311358532)
                 33 ???                            0x1aaa35948 (Missing)
            """).foregroundColor(.black)
            }
        }
    }
}

struct CrashView_Previews: PreviewProvider {
    static let vm = SomeViewModel()
    static var previews: some View {
        CrashView()
            .environmentObject(vm)
    }
}
