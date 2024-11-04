//
//  PAGE2.swift
//  TB 1
//
//  Created by Aqsal Ashari on 03/11/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Image("bck1")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.green.opacity(0.6)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .mask(
                Image("Group 360")
                    .resizable()
                    .scaledToFill()
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Image("aquaLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding(.top, 50)
                
                Spacer()
                
                NavigationLink(destination: LoginView()) {
                    Text("Login")
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom, 10)
                
                NavigationLink(destination: RegisterView()) {
                    Text("Register")
                        .frame(width: 200, height: 50)
                        .foregroundColor(.blue)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
                }
                
                Spacer()
                
                Text("Kebaikan Alam\nKebaikan Hidup")
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                
                Image("aquaBottle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 300)
                    .padding(.bottom, -10)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
