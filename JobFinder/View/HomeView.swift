//
//  HomeView.swift
//  JobFinder
//
//  Created by Abu Anwar MD Abdullah on 11/7/20.
//  Copyright © 2020 Abu Anwar MD Abdullah. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var selectedCategory: Category = categories[0]
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                AppBarView()
                Text("Hi Darren!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.42))
                    .padding(.horizontal)
                    .padding(.top)
                Text("Hot Jobs Are Waiting \nFor You")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                JobCardView()
                
                CategoryListView(selectedCategory: self.$selectedCategory)
                
                ForEach(jobs, id: \.id) { job in
                    JobSmallCardView(job: job)
                }

            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(uiImage: #imageLiteral(resourceName: "Profile"))
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(uiImage: #imageLiteral(resourceName: "Menu"))
            }
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

struct JobCardView: View {
    var body: some View {
        ZStack (alignment: .bottom) {
            Color("primaryColor")
                .aspectRatio(4, contentMode: .fit)
                .cornerRadius(25)
            HStack (alignment: .bottom){
                VStack (alignment: .leading, spacing: 5) {
                    
                    Text("UI/UX Designer")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Caltech   .  California").foregroundColor(.white)
                }.padding(.bottom, screen.width * 0.055)
                
                Spacer()
                Image(uiImage: #imageLiteral(resourceName: "ux"))
                    .resizable()
                    .frame(width: screen.width * 0.3, alignment: .bottom)
                    .aspectRatio(1.2, contentMode: .fill)
            }
            .padding(.horizontal, 25)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.bottom)
    }
}

struct CategoryListView: View {
    @Binding var selectedCategory: Category
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            HStack (){
                ForEach(categories) { category in
                    Text(category.name)
                        .foregroundColor(Color("primaryColor"))
                        .fontWeight(.bold)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .background(Color("primaryLightColor").opacity(category.id == self.selectedCategory.id ? 1 : 0))
                        .clipShape(Capsule())
                        .animation(.easeInOut)
                        .onTapGesture {
                            self.selectedCategory = category
                    }
                }
            }
            .padding(.all)
        }
    }
}

struct JobSmallCardView: View {
    var job : Job
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(job.title)
                    .font(.system(size: 18, weight: .bold))
                    .padding(.bottom, 4)
                Text(job.location)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.black.opacity(0.54))
            }
            Spacer()
            Image(uiImage: job.image)
        }
        .padding(.all)
        .background(Color(job.bgColor))
        .cornerRadius(25)
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}
