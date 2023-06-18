//
//  LState.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LState: View {
    @State var screenBG = Color.red
    
    var body: some View {
        ZStack{
            screenBG.ignoresSafeArea()
            VStack{
                Button("Button 1") {
                    screenBG = .yellow
                }
                Button("Button 2") {
                    screenBG = .green
                }
            }
        }
    }
}

struct LState_Previews: PreviewProvider {
    static var previews: some View {
        LState()
    }
}
