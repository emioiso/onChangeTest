//
//  ContentView.swift
//  onChangeTest
//
//  Created by emi oiso on 2023/10/24.
//
//参考にしたYouTube
//https://youtu.be/HBRxTs5yQlQ?si=QY6knr4Ip8yQBE7x

import SwiftUI

struct ReservationFrom: View {
    @State var customerName:String = ""
    
    var body: some View {
        
        Form {
            TextField("Type your Name",
                      text: $customerName,
                      onEditingChanged:{ status in
                        print(status)
                      })
            .onSubmit({
                print("submitted")
            })
            .onChange(of: customerName){ oldValue,
                newValue in
                print(newValue)
                print(oldValue)
            }
        }
        .padding()
    }
}

//    #Preview {
//        ReservationFrom()
//    }
