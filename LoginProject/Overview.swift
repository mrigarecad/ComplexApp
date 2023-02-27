import SwiftUI

struct Overview: View {
    var body: some View {
        VStack {
            HStack {
                Image("BSC_Logo")
                Spacer()
                Text("Deutsch Textverständnis")
                    .font(.headline)
                    .foregroundColor(Color.black)
            }
            Divider()
            VStack {
                HStack {
                    Text("Übersicht")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("3 Texte mit je 4 Aufgab en")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                HStack {
                    Text("3 Minuten 45 Sekunden")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                HStack {
                    Text("Keine Zeitlimite für das Übungsbeispiel")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
              Spacer()
                
                HStack {
//                    Button("Vorherige Seite") {
//                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                    }.buttonStyle(GreenBorderButton())
                    
                    Spacer()
                    
                    Button("Nächste Seite") {
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

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
