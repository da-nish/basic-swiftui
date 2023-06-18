//
//  LBinding.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LBinding: View {
    @State var screenBG:Color = Color.red
    
    var body: some View {
        ZStack{
            screenBG.ignoresSafeArea()
            ButtonView(screenBG: $screenBG)
        }
    }
}

struct LBinding_Previews: PreviewProvider {
    static var previews: some View {
        LBinding()
    }
}

struct ButtonView: View {
    @Binding var screenBG:Color
    var body: some View {
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
