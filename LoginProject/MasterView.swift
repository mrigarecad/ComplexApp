import SwiftUI

struct MasterView: View {
    let HomeContent = """
    Der Berufs-Check umfasst mehrere Gebiete.
    Für jedes dieser Gebiete steht eine bestimmte Zeit zur Verfügung. Die Zeit zum Lösen der Aufgaben (ohne Übungsbeispiele und Anleitungen) beträgt 60 Minuten.
    Bitte reserviere dir 1.5 bis 2 Stunden, um alle Aufgaben in einem Durchgang zu lösen. Achte darauf, dass du ungestört und ausgeruht bist.
    Absolviere den Check alleine und ohne Hilfe. Der Lehrbetrieb kann mit Hilfe eines zweiten Checks dein Ergebnis überprüfen.
    """
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
            Spacer()
            ScrollView {
                Text("Willkommen Zum Berufs-Check")
                    .multilineTextAlignment(.leading)
                    .font(.title2)
                    .foregroundColor(Color("BSC_Green"))
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text(HomeContent)
                    .font(.body)
                    .fontWeight(.regular)
            HStack {
                VStack{
                    Image("Deutsche")
                    Text("Deutsch")
                        .font(.body)
                        .foregroundColor(Color("BSC_Green"))
                        .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 175.0, height: 150.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                VStack{
                    Image("French")
                    Text("Französisch")
                        .font(.body)
                        .foregroundColor(Color("BSC_Green"))
                        .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 175.0, height: 150.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
            }
            .padding(/*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
            
            HStack {
                VStack{
                    Image("English")
                    Text("Englisch ")
                        .font(.body)
                        .foregroundColor(Color("BSC_Green"))
                        .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 175.0, height: 150.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                VStack{
                    Image("Math")
                    Text("Mathematik")
                        .font(.body)
                        .foregroundColor(Color("BSC_Green"))
                        .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                }
                .frame(width: 175.0, height: 150.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
            }
                
                HStack {
                    VStack{
                        Image("Logic")
                        Text("Logisches Denken")
                            .font(.body)
                            .foregroundColor(Color("BSC_Green"))
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 175.0, height: 150.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    VStack{
                        Image("Bulb")
                        Text("Konzentration")
                            .font(.body)
                            .foregroundColor(Color("BSC_Green"))
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 175.0, height: 150.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                }
                HStack {
                    VStack{
                        Image("Pin")
                        Text("Merkfähigkeit")
                            .font(.body)
                            .foregroundColor(Color("BSC_Green"))
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 175.0, height: 150.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    VStack{
                        Image("File")
                        Text("Kognitive Strategien")
                            .font(.body)
                            .foregroundColor(Color("BSC_Green"))
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 175.0, height: 150.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                }
                HStack {
                    VStack{
                        Image("Cube")
                        Text("Problemlösen/Kombinierfähigkeit")
                            .font(.body)
                            .foregroundColor(Color("BSC_Green"))
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 175.0, height: 150.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    VStack{
                        Image("Hands")
                        Text("Räumliches                             Vorstellungsvermögen")
                            .font(.body)
                            .foregroundColor(Color("BSC_Green"))
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 175.0, height: 150.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    
                }
                .padding(.bottom/*@END_MENU_TOKEN@*/)
                Text("Auf der nächsten Seite findest du weitere Hinweise zum Berufs-Check.")
                    .padding(.bottom)
                
                Button("Anmelden") {
           
                }.buttonStyle(BSCGreenFillButton())
            }

             
        }
        .padding(.horizontal)
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
