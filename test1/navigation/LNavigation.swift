//
//  LNavigation.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LNavigation: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Click here", destination: SecondScreen1())
                Text("Hello world...")
                Text("Hello world...")
                Text("Hello world...")
                
            }
        }
        .navigationTitle("Inbox")
        .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: Image(systemName: "gear"))
//        .navigationBarTitleDisplayMode(.inline)
//        .navigationBarHidden(true)
    }
}

struct SecondScreen1: View {
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
                
            NavigationLink("third screen", destination: Text("new screen").navigationBarHidden(true))
        }
    }
}


struct LNavigation_Previews: PreviewProvider {
    static var previews: some View {
        LNavigation()
    }
}
