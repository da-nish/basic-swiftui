//
//  LForEachUI.swift
//  test1
//
//  Created by PropertyShare on 18/06/23.
//

import SwiftUI

struct LForEachUI: View {
    let list:[String] = ["------1", "------2", "------3", "------4"]
    var body: some View {
        VStack{
            ForEach(0..<10){ index in
                Text("Hello, World!")
            }
            ForEach(list.indices){ index in
                Text(list[index])
            }
            
        }
        
    }
}

struct LForEachUI_Previews: PreviewProvider {
    static var previews: some View {
        LForEachUI()
    }
}
