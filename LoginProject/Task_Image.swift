import SwiftUI

struct Task_Image: View {
    @State var checkStatusImage = true
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("BSC_Logo")
                    Spacer()
                    Text("Merkfähigkeit Bilder")
                        .font(.headline)
                        .foregroundColor(Color.black)
                }
                HStack {
                    Text("Berufs-Check")
                        .font(.headline)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                    Text("Gruppenzeit : 00:57")
                        .font(.headline)
                        .foregroundColor(Color.red)
                }
            }
            Divider()
            ScrollView {
                HStack {
                    Text("Antwortteil")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Zu Beginn dieses Gebietes wurden dir 32 Bilder gezeigt. Entscheide jetzt, ob die nachfolgenden Bilder zu diesen 32 gehören oder nicht.")
                            .font(.body)
                            .fontWeight(.regular)
                        
                        Image("Warning")
                    }
                    Spacer()
                }
                .padding(.bottom)

                
                HStack {
                    Text("Antwort")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
//                    Image("Calculator")
                    Spacer()
                }.padding(.top)
                
                VStack(alignment: .leading){
                    Button(action:{ checkStatusImage = true}){
                        Text("   ")
                            .frame(width:30, height:30)
                            .background(checkStatusImage  ? Color.black : Color.white)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:100)
                                .stroke(Color.black, lineWidth:6)
                                .scaleEffect(0.6)
                            )
                        Text("Ja, das ist eines der 32 Bilder.")
                    }
                    
                    Button(action:{ checkStatusImage = false}){
                        Text("   ")
                            .frame(width:30, height:30)
                            .background(checkStatusImage  ? Color.white: Color.black)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:100)
                                .stroke(Color.black, lineWidth:6)
                                .scaleEffect(0.6)
                            )
                        Text("Nein, dieses Bild gehört nicht dazu.")
                    }
                }
                
                Spacer()
                
                HStack {
                    Button("Gebiet beenden") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(GreenBorderButton())

                    Spacer()
                    Button("Vorherige Seite") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(BSCGreenFillButton())
                    
                    Button("Zum Nachsten Gebiet") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(BSCGreenFillButton())
                }
                .padding(.vertical)
                
                HStack{
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 32.0, height: 32.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("BSC_Light_Green")/*@END_MENU_TOKEN@*/)
                    Text("Gelöst")
                        .font(.body)
                    RoundedRectangle(cornerRadius: 4)
                      .stroke(Color.black, lineWidth: 1)
                      .frame(width: 31, height: 31)
                    Text("Ungelöst")
                        .font(.body)
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 32.0, height: 32.0)
                    Text("Aktuell")
                        .font(.body)
                        
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                
                ScrollView(.horizontal) {
                    HStack {
                        Button("1") {}
                        .buttonStyle(GreenFillButton())
                        Button("2") {}
                        .buttonStyle(GreenFillButton())
                        Button("3") {}
                        .buttonStyle(BlackFillButton())
                        Button("4") {}
                        .buttonStyle(BlackBorderButton())
                        Button("5") {}
                        .buttonStyle(BlackBorderButton())
                        Button("6") {}
                        .buttonStyle(BlackBorderButton())
                        Button("7") {}
                        .buttonStyle(BlackBorderButton())
                    }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom)
        }
        .padding(.horizontal)
    }
}

struct Task_Image_Previews: PreviewProvider {
    static var previews: some View {
        Task_Image()
    }
}
