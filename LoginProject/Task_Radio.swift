import SwiftUI

struct Task_Radio: View {
    
    @State var checkStatus = true
    
    var body: some View {
        VStack {
            HStack {
                Image("BSC_Logo")
                Spacer()
                Text("Deutsch Rechtschreibung")
                    .font(.headline)
                    .foregroundColor(Color.black)
            }
            Divider()
            VStack {
                HStack {
                    Text("Probeaufgabe")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("Unten siehst du ein Wort.")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                HStack {
                    Text("Gib an, ob das Wort richtig oder falsch geschrieben ist.")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.top, 1.0)
                
                
                HStack {
                    Text("Antwort")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.top)
                
                HStack {
                    Text("Teater")
                        .padding([.top, .leading])
                    Spacer()
                }
                
                HStack{
                    Button(action:{ checkStatus = true}){
                        Text("   ")
                            .frame(width:30, height:30)
                            .background(checkStatus  ? Color.black : Color.white)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:100)
                                .stroke(Color.black, lineWidth:6)
                                .scaleEffect(0.6)
                            )
                        Text("richtig")
                    }
                    
                    Button(action:{ checkStatus = false}){
                        Text("   ")
                            .frame(width:30, height:30)
                            .background(checkStatus  ? Color.white: Color.black)
                            .cornerRadius(100)
                            .foregroundColor(Color.black)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:100)
                                .stroke(Color.black, lineWidth:6)
                                .scaleEffect(0.6)
                            )
                        Text("falsch")
                    }
                    Spacer()
                }
                Spacer()
                
                HStack {
                    //                    Button("Gebiet beenden") {
                    //                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    //                    }.buttonStyle(GreenBorderButton())
                    //
                    Spacer()
                    //                    Button("Vorherige Seite") {
                    //                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    //                    }.buttonStyle(BSCGreenFillButton())
                    
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

struct Task_Radio_Previews: PreviewProvider {
    static var previews: some View {
        Task_Radio()
    }
}
