import SwiftUI

struct Task_Math: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("BSC_Logo")
                    Spacer()
                    Text("Deutsch Rechtschreibung")
                        .font(.headline)
                        .foregroundColor(Color.black)
                }
                HStack {
                    Text("Berufs-Check")
                        .font(.headline)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }
            }
            Divider()
            ScrollView {
                HStack {
                    Text("Probeaufgabe")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Sarah hat am 1. Januar CHF 2500.-- auf ihrem Konto.")
                            .font(.body)
                            .fontWeight(.regular)
                            
                        Text("Sie erhält einen Zins von 1%.")
                            .font(.body)
                            .fontWeight(.regular)
                            .padding(.top, 1.0)
                        Text("Wie viel Zins erhält sie Ende Jahr?")
                            .font(.body)
                            .fontWeight(.regular)
                            .padding(.top, 1.0)
                        Text("Betrag auf maximal zwei Kommastellen genau eingeben, z. B. 5.67")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color.red)
                            .padding(.top, 1.0)
                    }
                    Spacer()
                }

                
                HStack {
                    Text("Antwort")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Image("Calculator")
                    Spacer()
                }.padding(.top)
                
                HStack{
                    Text("CHF")
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
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

struct Task_Math_Previews: PreviewProvider {
    static var previews: some View {
        Task_Math()
    }
}
