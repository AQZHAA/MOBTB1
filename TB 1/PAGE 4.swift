import SwiftUI

struct RegisterView: View {
    @State private var namaLengkap: String = ""
    @State private var email: String = ""
    @State private var kataSandi: String = ""
    @State private var konfirmasiKataSandi: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isConfirmPasswordVisible: Bool = false
    
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
                
                // Teks Register
                Text("Daftar")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                
                Spacer().frame(height: 40)
                
                // Field Nama Lengkap
                VStack(alignment: .leading, spacing: 8) {
                    Text("Nama Lengkap")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.blue)
                        TextField("Nama Lengkap", text: $namaLengkap)
                            .foregroundColor(.black) // Warna font hitam
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }
                .padding(.horizontal)
                
                // Field Email
                VStack(alignment: .leading, spacing: 8) {
                    Text("Email")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
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
                        .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.blue)
                        
                        if isPasswordVisible {
                            TextField("Kata Sandi", text: $kataSandi)
                                .foregroundColor(.black) // Warna font hitam
                        } else {
                            SecureField("Kata Sandi", text: $kataSandi)
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
                
                // Field Konfirmasi Kata Sandi
                VStack(alignment: .leading, spacing: 8) {
                    Text("Konfirmasi Kata Sandi")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.blue)
                        
                        if isConfirmPasswordVisible {
                            TextField("Konfirmasi Kata Sandi", text: $konfirmasiKataSandi)
                                .foregroundColor(.black) // Warna font hitam
                        } else {
                            SecureField("Konfirmasi Kata Sandi", text: $konfirmasiKataSandi)
                                .foregroundColor(.black) // Warna font hitam
                        }
                        
                        Button(action: {
                            isConfirmPasswordVisible.toggle()
                        }) {
                            Image(systemName: isConfirmPasswordVisible ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
                }
                .padding(.horizontal)
                
                Spacer().frame(height: 40)
                
                // Tombol Register
                Button(action: {
                    // Aksi Register
                }) {
                    Text("Daftar")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .previewDevice("iPhone 14 Pro")
    }
}
