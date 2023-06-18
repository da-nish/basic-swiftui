//
//  LAnimate.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LAnimate: View {
    @State var animateState:Bool=false;
    var body: some View {
        VStack{
            Button("Animate"){
//                withAnimation(.default){
//                    animateState.toggle()
//                }
                
                withAnimation(Animation.default.delay(0.20)){
                        animateState.toggle()
                    }
            }
            RoundedRectangle(cornerRadius: animateState ? 100 : 20)
                .fill(animateState ? .red : .blue)
                .frame(width: animateState ? 100 : 200, height: animateState ? 100 : 200)
                            
        }
        VStack{
            Button("Animate"){
//                withAnimation(.default){
//                    animateState.toggle()
//                }
                
                withAnimation(Animation.default.delay(0.20)){
                        animateState.toggle()
                    }
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animateState ? 300 : 100, height: 100)
                .animation(Animation.easeInOut)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animateState ? 300 : 100, height: 100)
                .animation(Animation.linear)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animateState ? 300 : 100, height: 100)
                .animation(Animation.easeIn)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animateState ? 300 : 100, height: 100)
                .animation(Animation.easeOut)
                            
        }
    }
}

struct LAnimate_Previews: PreviewProvider {
    static var previews: some View {
        LAnimate()
    }
}
