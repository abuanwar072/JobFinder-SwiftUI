//
//  WelcomeTitleView.swift
//  JobFinder
//
//  Created by Abu Anwar MD Abdullah on 11/7/20.
//  Copyright © 2020 Abu Anwar MD Abdullah. All rights reserved.
//

import SwiftUI

struct WelcomeTitleView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Jobs Are Waiting, We Just Need You")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color("textColor"))
            Text("Lorem ipsum dolor sit amet, consectetur adipis")
                .foregroundColor(Color.black.opacity(0.42))
        }
        .frame(width: screen.width * 0.7, alignment: .leading)
    }
}

struct WelcomeTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTitleView()
    }
}
