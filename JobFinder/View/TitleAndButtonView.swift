//
//  TitleAndButtonView.swift
//  JobFinder
//
//  Created by Abu Anwar MD Abdullah on 11/7/20.
//  Copyright © 2020 Abu Anwar MD Abdullah. All rights reserved.
//

import SwiftUI

struct TitleAndButtonView: View {
    var body: some View {
        VStack (alignment: .leading) {
            WelcomeTitleView()
            NavigationLink(destination: HomeView()){
                Text("Get Started")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical)
                    .background(Color("textColor"))
                    .clipShape(Capsule())
                    .padding(.top, 30)
            }
            
        }
        .padding(.horizontal, 20)
        .padding(.top, screen.height * 0.1)
    }
}

struct TitleAndButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndButtonView()
    }
}
