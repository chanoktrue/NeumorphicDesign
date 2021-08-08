//
//  HomeView.swift
//  NeumorphicDesign
//
//  Created by Thongchai Subsaidee on 8/8/2564 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
         ZStack {
             
             Color(red: 224/255, green: 229/255, blue: 236/255)
   
             VStack(spacing: 30) {

                 Button(action: {
                     // Todo1
                 }, label: {
                     
                     Image(systemName: "heart.fill")
                         .resizable()
                         .frame(width: 80, height: 80)
                         .shadow(color: .white, radius: 8, x: -8, y: -8)
                         .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)
                         .padding()
                         .background(Color(red: 224/255, green: 229/255, blue: 236/255))
                         .cornerRadius(20)
                     
                 })
                 .shadow(color: .white, radius: 8, x: -8, y: -8)
                 .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: 9, y: 9)

              
                 RoundedRectangle(cornerRadius: 20)
                     .fill(Color.white.opacity(0.5))
                     .frame(width: 120, height: 120)
                     .shadow(color: .white, radius: 8, x: -8, y: -8)
                     .shadow(color: .gray.opacity(0.8), radius: 8, x: 9, y: 9)
                     .overlay(
                         Image(systemName: "house.fill")
                             .resizable()
                             .frame(width: 80, height: 80)
                             .shadow(color: .white, radius: 8, x: -8, y: -8)
                             .shadow(color: .gray.opacity(0.8), radius: 8, x: 9, y: 9)
                     )
                 
                 Circle()
                     .fill(Color.white.opacity(0.5))
                     .frame(width: 120, height: 120)
                     .shadow(color: .white, radius: 8, x: -8, y: -8)
                     .shadow(color: .gray.opacity(0.5), radius: 8, x: 9, y:9)
                     .overlay(
                         LinearGradient(
                             gradient: Gradient(colors: [Color.red, Color.orange ,Color.blue]),
                             startPoint: .topLeading,
                             endPoint: .bottomTrailing)
                             .mask(
                                 Image(systemName: "plus")
                                     .resizable()
                                     .frame(width: 80, height: 80)
                             )
                     )
                     
                 
             }
             
         }
         .ignoresSafeArea(.all)
         
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
