//
//  PhoneDetail.swift
//  Landmark
//
//  Created by Karamjit Singh on 21/02/25.
//
import SwiftUI


struct PhoneDetail: View {
    let phoneNumber = "+19896098960"
    var body: some View {
        HStack {
            Text("Phone Number:")
            Text("\(phoneNumber)")
                       .foregroundColor(.blue)
                       .underline()
                       .onTapGesture {
                           callPhoneNumber(phoneNumber)
            }
        }
        
    }
}
 
#Preview {
    PhoneDetail()
}


func callPhoneNumber(_ number: String) {
        if let url = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
}
