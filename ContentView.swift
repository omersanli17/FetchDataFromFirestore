//
//  ContentView.swift
//  FetchDatabase
//
//  Created by omer sanli on 29.12.2021.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        List(model.list){ item in
            Text(item.name)
        }
    }
    
    init(){
        model.getData()
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
