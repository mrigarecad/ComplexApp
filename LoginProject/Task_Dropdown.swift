import SwiftUI

struct Task_Dropdown: View {
    
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
                        .fontWeight(.regular)
                    Spacer()
                }
                
                HStack {
                    Text("Gib an, ob das Wort richtig oder falsch geschrieben ist.")
                        .font(.body)
                        .fontWeight(.regular)
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
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                        Text("bitte wählen").tag(1)
                        Text("les tables").tag(2)
                        Text("les tableaux").tag(3)
                        Text("les tablesses").tag(4)
                    }.pickerStyle(.automatic).border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    
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

struct Task_Dropdown_Previews: PreviewProvider {
    static var previews: some View {
        Task_Dropdown()
    }
}
