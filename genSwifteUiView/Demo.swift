import SwiftUI

struct DepositView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("6 matching result(s) found")
                .font(.caption)
                .foregroundColor(.gray)

            HStack {
                Text("Beginner's guide to CPI Deposit")
                    .font(.footnote)
                    .foregroundColor(.gray)

                Spacer()

                VStack {
                    Text("Sort by:")
                        .font(.footnote)
                        .foregroundColor(.gray)

                    Picker("Sort by", selection: $selectedSortOption) {
                        ForEach(sortOptions, id: \.self) { option in
                            Text(option)
                                .foregroundColor(.black)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .labelsHidden() // Hide picker labels
                }
            }

            Divider()

            VStack(alignment: .leading) {
                Text("USD/JPY JPY European Bullish")
                    .font(.headline)
                    .padding(.bottom, 5)

                VStack(alignment: .leading) {
                    HStack {
                        Text("Deposit currency:")
                            .font(.subheadline)
                            .foregroundColor(.gray)

                        Text("JPY")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }

                    HStack {
                        Text("Minimum return rate (p.a.):")
                            .font(.subheadline)
                            .foregroundColor(.gray)

                        Text("24.1200%")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }

                    HStack {
                        Text("Potential return rate (p.a.):")
                            .font(.subheadline)
                            .foregroundColor(.gray)

                        Text("25.9200%")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                    }
                }

                Button(action: {}) {
                    Text("Subscribe")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
        .padding()
    }

    let sortOptions = ["Minimum return rate (p.a.)", "Maximum return rate (p.a.)"]
    @State private var selectedSortOption = 0
}

struct ContentView: View {
    var body: some SceneKit.View {
        DepositView()
    }
}