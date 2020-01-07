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
                    Slider(value: .constant(10))
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
                    return Alert(title: Text("Hello there"), message: Text("Hello, my name is Yura and it is my first app"), dismissButton: .default(Text("Close")))
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
