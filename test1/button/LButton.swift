//
//  LButton.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LButton: View {
    @State var title:String = "Press me"
    @State var btnText:String = "UI Button"
    func onTap(){
        if(title=="Press me"){
            title="Pressed !!"
        }
        else{
        title = "Press me"
        }
        
    }
    var body: some View {
        VStack{
            Text(title)
            
            Text("=========================")
            //option 1
            Button(btnText, action: onTap)
            Button(btnText, action: onTap).accentColor(.red)
            Text("=========================")
            //option 2
            Button(action: onTap, label: {
                Text(btnText)
            })
            Button(action: onTap, label: {
                Text(btnText.uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 20)
                    )
            })
            
            Button(action: onTap, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 60, height:60)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            
                    )
                    .shadow(radius: 12)
            })
            
            Button(action: onTap, label: {
                Text(btnText.uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            })
        }
    }
}

struct LButton_Previews: PreviewProvider {
    static var previews: some View {
        LButton()
    }
}
