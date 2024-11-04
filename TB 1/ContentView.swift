//
//  ContentView.swift
//  TB 1
//
//  Created by Aqsal Ashari on 02/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    Image("backgroundImage")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: geometry.size.height * 0.05) {
                        Image("aquaLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width * 0.9)
                            .padding(.top, geometry.size.height * 0.1)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("KEBAIKAN\nBERAWAL\nDARI SINI")
                            .font(.system(size: geometry.size.width * 0.08, weight: .bold))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.top, geometry.size.height * 0.02)
                        
                        Text("Terpercaya lebih dari 45 tahun")
                            .font(.system(size: geometry.size.width * 0.045))
                            .foregroundColor(.white)
                        
                        NavigationLink(destination: MainView()) {
                            Image(systemName: "arrow.right.circle")
                                .font(.system(size: geometry.size.width * 0.1))
                                .foregroundColor(.white)
                        }
                        .padding(.top, geometry.size.height * 0.02)
                        
                        Spacer()
                        
                        Image("aquaBottle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.3)
                            .padding(.bottom, geometry.size.height * 0.05)
                    }
                    .frame(width: geometry.size.width, alignment: .center)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14 Pro")
    }
}
