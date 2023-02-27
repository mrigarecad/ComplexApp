import SwiftUI

struct BlackBorderButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}
struct GreenBorderButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            .border(Color("BSC_Green"), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}
struct BlackFillButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(.black).cornerRadius(4)
    }
}
struct GreenFillButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .foregroundColor(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .background(Color("BSC_Light_Green").cornerRadius(4))
    }
}
struct BSCGreenFillButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        if #available(iOS 16.0, *) {
            configuration.label
                .bold()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                .background(Color("BSC_Green").cornerRadius(4))
        } else {
            // Fallback on earlier versions
        }
    }
}

struct Hint: View {
    var body: some View {
        VStack {
            HStack {
                Image("BSC_Logo")
                Spacer()
                Text("Berufs-Check")
                    .font(.title)
                    .foregroundColor(Color("BSC_Green"))
            }
            Divider()
            ScrollView {
                HStack {
                    Text("Hinweise")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                        
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("Bitte beachte:")
                        .font(.body)
                    .fontWeight(.regular)
                    Spacer()
                }
                VStack(alignment: .leading, spacing: 10){
                    Text("• Löse - wo vorhanden - die Übungsaufgaben und betrachte die Animationen.")
                    Text("• Achte darauf, dass du den Check ungestört lösen kannst (Bitte das Handy ausschalten).")
                        
                    Text("• Leg dir bitte Papier und Schreibzeug bereit.")
                    Text("• Die Zeit wird angehalten: ")
                        .font(.body)
                        .fontWeight(.bold)
                    VStack(alignment: .leading, spacing: 8){
                        Text("• während der Erklärungen und Übungsbeispielen")
                            .font(.body)
                            .fontWeight(.bold)
                        Text("• während des Ladens der Aufgabe (bei Animationen und Aufgaben mit Bildern kann das Laden einige Sekunden dauern)")
                            .font(.body)
                            .fontWeight(.bold)
                    }
                    .padding(.leading)
                    Text("• Beachte auf der nächsten Seite den Hinweis zu den Hotspot-Aufgaben.")
                    Text("• Wir wünschen dir viel Erfolg!")
                }
                .padding(.vertical)
                Button("Nächste Seite") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .buttonStyle(BSCGreenFillButton())
                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                
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
                        .buttonStyle(BlackFillButton())
                        Button("2") {}
                        .buttonStyle(BlackBorderButton())
                        Button("3") {}
                        .buttonStyle(BlackBorderButton())
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
        }
        .padding(.horizontal)
    }
}

struct Hint_Previews: PreviewProvider {
    static var previews: some View {
        Hint()
    }
}
