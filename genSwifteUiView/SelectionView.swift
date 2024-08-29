import UIKit

class SkeletonViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Header
        let headerView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerView)
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            headerView.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: headerView)
        
        // Subheader
        let subheaderView = UIView()
        subheaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(subheaderView)
        NSLayoutConstraint.activate([
            subheaderView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10),
            subheaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            subheaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            subheaderView.heightAnchor.constraint(equalToConstant: 15)
        ])
        addSkeletonLayer(to: subheaderView)
        
        // First Row
        let firstRow = UIView()
        firstRow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstRow)
        NSLayoutConstraint.activate([
            firstRow.topAnchor.constraint(equalTo: subheaderView.bottomAnchor, constant: 30),
            firstRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            firstRow.widthAnchor.constraint(equalToConstant: 180),
            firstRow.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: firstRow)
        
        let firstRowShort = UIView()
        firstRowShort.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstRowShort)
        NSLayoutConstraint.activate([
            firstRowShort.topAnchor.constraint(equalTo: subheaderView.bottomAnchor, constant: 30),
            firstRowShort.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            firstRowShort.widthAnchor.constraint(equalToConstant: 100),
            firstRowShort.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: firstRowShort)

        // Second Row
        let secondRow = UIView()
        secondRow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondRow)
        NSLayoutConstraint.activate([
            secondRow.topAnchor.constraint(equalTo: firstRow.bottomAnchor, constant: 20),
            secondRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondRow.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: secondRow)
        
        // Third Row
        let thirdRow = UIView()
        thirdRow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdRow)
        NSLayoutConstraint.activate([
            thirdRow.topAnchor.constraint(equalTo: secondRow.bottomAnchor, constant: 20),
            thirdRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            thirdRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            thirdRow.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: thirdRow)

        // Fourth Row
        let fourthRow = UIView()
        fourthRow.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fourthRow)
        NSLayoutConstraint.activate([
            fourthRow.topAnchor.constraint(equalTo: thirdRow.bottomAnchor, constant: 20),
            fourthRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fourthRow.widthAnchor.constraint(equalToConstant: 100),
            fourthRow.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: fourthRow)
        
        let fourthRowShort = UIView()
        fourthRowShort.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fourthRowShort)
        NSLayoutConstraint.activate([
            fourthRowShort.topAnchor.constraint(equalTo: thirdRow.bottomAnchor, constant: 20),
            fourthRowShort.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            fourthRowShort.widthAnchor.constraint(equalToConstant: 80),
            fourthRowShort.heightAnchor.constraint(equalToConstant: 20)
        ])
        addSkeletonLayer(to: fourthRowShort)

        // Last Rows
        for _ in 0..<4 {
            let row = UIView()
            row.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(row)
            NSLayoutConstraint.activate([
                row.topAnchor.constraint(equalTo: fourthRow.bottomAnchor, constant: 20),
                row.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                row.widthAnchor.constraint(equalToConstant: 150),
                row.heightAnchor.constraint(equalToConstant: 20)
            ])
            addSkeletonLayer(to: row)
        }
    }

    func addSkeletonLayer(to view: UIView) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.lightGray.cgColor, UIColor.darkGray.cgColor, UIColor.lightGray.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.locations = [0, 0.5, 1]
        
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [0, 0, 0.25]
        animation.toValue = [0.75, 1, 1]
        animation.duration = 1
        animation.repeatCount = .infinity
        gradientLayer.add(animation, forKey: "skeletonLoading")
        
        view.layer.addSublayer(gradientLayer)
    }
}
