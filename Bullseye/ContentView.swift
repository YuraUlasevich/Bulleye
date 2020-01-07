//
//  ContentView.swift
//  Bullseye
//
//  Created by Юра Уласевич on 1/7/20.
//  Copyright © 2020 Юра Уласевич. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible = false
    @State var sliderValue : Double = 50.0
    
    var body: some View {
            VStack {
                Spacer()
                //Target row
                HStack {
                    Text("Put the bullseye as close as you can to:")
                    Text("100")
                }
                //Slider row
                Spacer()
                HStack{
                    Text("1")
                    Slider(value: self.$sliderValue, in: 1...100)
                    Text("100")
                }
                //Button row
                HStack{
                    Button(action: {
                        self.alertIsVisible = true
                    }) {
                        Text("Hit Me!")
                    }
                }
                .alert(isPresented: $alertIsVisible){ () ->
                    Alert in
                    return Alert(title: Text("Result"), message: Text("The slider's value is \(Int(round(self.sliderValue)))."), dismissButton: .default(Text("Ok")))
                }
                //Information row
                Spacer()
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Start over")
                    }
                    Spacer()
                    Text("Score:")
                    Text("999999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Info")
                    }
                }.padding(.bottom, 20)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
