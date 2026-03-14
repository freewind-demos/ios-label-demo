import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }

    private func setupUI() {
        // 普通标签
        let normalLabel = UILabel()
        normalLabel.text = "普通文本标签"
        normalLabel.font = .systemFont(ofSize: 16)
        normalLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(normalLabel)

        // 粗体标签
        let boldLabel = UILabel()
        boldLabel.text = "粗体文本"
        boldLabel.font = .boldSystemFont(ofSize: 20)
        boldLabel.textColor = .systemBlue
        boldLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(boldLabel)

        // 大号标签
        let largeLabel = UILabel()
        largeLabel.text = "大号标题"
        largeLabel.font = .systemFont(ofSize: 32, weight: .bold)
        largeLabel.textAlignment = .center
        largeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(largeLabel)

        // 多行标签
        let multiLabel = UILabel()
        multiLabel.text = "这是第一行\n这是第二行\n这是第三行"
        multiLabel.numberOfLines = 0
        multiLabel.textColor = .systemGray
        multiLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(multiLabel)

        NSLayoutConstraint.activate([
            normalLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            normalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            boldLabel.topAnchor.constraint(equalTo: normalLabel.bottomAnchor, constant: 20),
            boldLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            largeLabel.topAnchor.constraint(equalTo: boldLabel.bottomAnchor, constant: 30),
            largeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            multiLabel.topAnchor.constraint(equalTo: largeLabel.bottomAnchor, constant: 30),
            multiLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            multiLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
