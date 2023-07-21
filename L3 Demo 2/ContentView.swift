//
//  ContentView.swift
//  L3 Demo 2
//
//  Created by Sora Lee on 2023/07/21.
//

import SwiftUI

  struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Image("macImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                HStack {
                    
                    Text("Sora's iPhone")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    // 오토레이아웃 개념으로 중간에 여백을 만들어주는 기능
                    
                    VStack {
                        
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                    
                }
                
                
                Text("I fall in love with Mac and iphone.")
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
        
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
