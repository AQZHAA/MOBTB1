//
//  PAGE3.swift
//  TB 1
//
//  Created by Aqsal Ashari on 03/11/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            // Background putih
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Tombol Kembali
                HStack {
                    Button(action: {
                        // Aksi untuk kembali
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 20)
                
                Spacer()
                
                // Teks Login
                Text("Login")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                Spacer().frame(height: 40)
                
                // Field Email
                VStack(alignment: .leading, spacing: 8) {
                    Text("Email")
                        .font(.caption)
                        .foregroundColor(.black)
                    
                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.blue)
                        TextField("Email", text: $email)
                            .foregroundColor(.black) // Warna font hitam
                            .padding()
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }
                .padding(.horizontal)
                
                // Field Kata Sandi
                VStack(alignment: .leading, spacing: 8) {
                    Text("Kata Sandi")
                        .font(.caption)
                        .foregroundColor(.black)
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.blue)
                        
                        if isPasswordVisible {
                            TextField("Kata Sandi", text: $password)
                                .foregroundColor(.black) // Warna font hitam
                        } else {
                            SecureField("Kata Sandi", text: $password)
                                .foregroundColor(.black) // Warna font hitam
                        }
                        
                        Button(action: {
                            isPasswordVisible.toggle()
                        }) {
                            Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }
                .padding(.horizontal)
                
                Spacer().frame(height: 40)
                
                // Tombol Login
                Button(action: {
                    // Aksi Login
                }) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .previewDevice("iPhone 14 Pro")
    }
}
