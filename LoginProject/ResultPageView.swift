//
//  ResultPage.swift
//  LoginProject
//
//  Created by admin on 21/02/23.
//
import SwiftUI

struct ResultPageView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("BSC_Logo")
                    Spacer()
                    Text("Schlussseite")
                        .font(.headline)
                        .foregroundColor(Color.black)
                }
            }
            Divider()
            ScrollView {
                
                HStack {
                    VStack(alignment: .center) {
                        Text("Herzliche Gratulation!")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                            .foregroundColor(Color("BSC_Green"))
                        
                            Text("Schliesse nun das Browserfenster und beende den Browser, um den Berufs-Check für EBA-Berufe zu beenden.")
                                .font(.body)
                                .fontWeight(.regular)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }
                .padding(.top)
                
                Spacer()

            }
            .padding(.bottom)
        }
        .padding(.horizontal)
    }
}

struct ResultPageView_Previews: PreviewProvider {
    static var previews: some View {
        ResultPageView()
    }
}


