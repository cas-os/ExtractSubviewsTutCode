//
//  ContentView.swift
//  ExtractSubviewsTutCode
//
//  Created by HAL-9001 on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
//            myItem
            contentLayer
            }
        }
    }

    
    var contentLayer: some View {
        HStack {
            MyItemSubView(title: "Apples", count: 12, color: .yellow)
            MyItemSubView(title: "Oranges", count: 10, color: .yellow)
            MyItemSubView(title: "Bananas", count: 34, color: .yellow)
    }
    
//    var myItem: some View {
//        VStack {
//            Text("1")
//            Text("Apples")
//        }
//        .padding()
//        .background(Color.red)
//        .cornerRadius(10)
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyItemSubView: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
