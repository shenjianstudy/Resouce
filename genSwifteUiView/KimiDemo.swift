import SwiftUI

struct CPIDepositView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Filter CPI Deposit(s) with 3 criteria")
                .font(.headline)
            
            Text("6 matching result(s) found")
                .font(.subheadline)
            
            Text("Beginner's guide to CPI Deposit")
                .font(.footnote)
                .foregroundColor(.gray)
            
            // Sorting options
            HStack {
                Text("Sort by")
                    .font(.footnote)
                
                Spacer()
                
                Picker("Ordering", selection: .constant("Ascending")) {
                    Text("Ascending").tag("Ascending")
                    Text("Descending").tag("Descending")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            // Currency and rates
            HStack {
                VStack(alignment: .leading) {
                    Text("USD/JPY")
                        .font(.title)
                    
                    Text("JPY European Bullish W")
                        .font(.footnote)
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("24.12%")
                        .font(.title)
                        .foregroundColor(.green)
                    
                    Text("Minimum return rate (p.a.)")
                        .font(.footnote)
                }
            }
            
            // Deposit period
            HStack {
                Text("Deposit period")
                    .font(.footnote)
                
                Text("1 Month(s)")
                    .font(.footnote)
            }
            
            // Potential return rate
            HStack {
                Text("Potential return rate (p.a.)")
                    .font(.footnote)
                
                Text("25.92%")
                    .font(.title)
                    .foregroundColor(.green)
            }
            
            // Buttons
            HStack {
                Spacer()
                
                Button(action: {
                    // Subscribe action
                }) {
                    Text("Subscribe")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Term Sheet action
                }) {
                    Text("Term Sheet")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Return calculator action
                }) {
                    Text("Return calculator")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct CPIDepositView_Previews: PreviewProvider {
    static var previews: some View {
        CPIDepositView()
    }
}
