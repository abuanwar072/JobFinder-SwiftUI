//
//  ContentView.swift
//  JobFinder
//
//  Created by Abu Anwar MD Abdullah on 11/7/20.
//  Copyright © 2020 Abu Anwar MD Abdullah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                TitleAndButtonView()
                Image("welcome")
                .resizable()
                    .aspectRatio(contentMode: .fill)
            }
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .edgesIgnoringSafeArea(.bottom)
        }
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


let screen = UIScreen.main.bounds



