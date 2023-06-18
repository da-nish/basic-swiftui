//
//  Linit.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct Linit: View {
    
    let desc:String; //now this value is required to pass in constructor
    
    let title:String = "hello workd"; // value is already defined
    
    //internally swift creates this init method to get constructor values
    //we can also create if any action/conditions we want
    init(desc: String) {
        self.desc = desc
    }
    
    var body: some View {
        VStack{
            Text(title)
            Text(desc)
        }
    }
}

struct Linit_Previews: PreviewProvider {
    static var previews: some View {
        Linit(desc: "dessss")
    }
}
