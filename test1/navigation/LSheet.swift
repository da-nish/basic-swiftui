//
//  LSheet.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LSheet: View {
    @State var showView:Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            Color.green.ignoresSafeArea()
            VStack{
                Button("Press me !!"){
                    showView.toggle()
                    
                }
                Spacer()
            }
            //we should use one fullsheet per view
            .fullScreenCover(isPresented: $showView, content: {
                //don't use if-else conditions here
                //like: if{sheet1} else{sheet2}
                SecondScreen()
            })
            //we should use one sheet per view
//            .sheet(isPresented: $showView, content: {
//                //don't use if-else conditions here
//                //like: if{sheet1} else{sheet2}
//                SecondScreen()
//            })
            
            //we can use fullsheet and sheet in one view as well
        }
        
    }
}

struct SecondScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.red.ignoresSafeArea()
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            },
                   label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
        
    }
}

struct LSheet_Previews: PreviewProvider {
    static var previews: some View {
        LSheet()
    }
}
