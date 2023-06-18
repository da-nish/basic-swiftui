//
//  LTransition.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LTransition: View {
    @State var showView:Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Press me !!"){
                    showView.toggle()
                    
                }
                Spacer()
            }
            if(showView){
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.scale)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct LTransition_Previews: PreviewProvider {
    static var previews: some View {
        LTransition()
    }
}
