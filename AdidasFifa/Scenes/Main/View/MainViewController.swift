//
//  MainViewController.swift
//  AdidasFifa
//
//  Created by Josue German Hernandez Gonzalez on 21-03-23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var spinnerView: SpinnerView!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties
    
    var viewModel = MainViewModel()
    var data: [Match] = []
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad()  {
        super.viewDidLoad()

        spinnerView.pinToEdges(of: view)
        
        setupTableView()
        configNavigationBar()
        fetchdata()
        viewModel.spinner.bind { [weak self] show in
            self?.spinnerView.isHidden = show
        }
        
        viewModel.allData.bind { [weak self] data in
            guard let data = data else { return }
            self?.data = data
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        viewModel.error.bind { [weak self] hasError in
            if hasError {
                DispatchQueue.main.async {
                    self?.showModalView(title: "No result found", message: "You can try again in a few minutes", buttonTitle: "Ok")
                }
            }
        }
        
    }

    // MARK: - Methods
    
    func configNavigationBar() {
        title = "World Cup"
        guard let navigationController = navigationController else { return }
        navigationController.navigationBar.prefersLargeTitles = true
    }
    
    func setupTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 140
        tableView.register(UINib(nibName: "MatchCell", bundle: nil), forCellReuseIdentifier: "MatchCell")
    }
    
    func fetchdata() {
        Task {
            await viewModel.fetchData()
        }
    }
    
    func showErrorMessage() {
        
    }
    
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell", for: indexPath)
        guard let matchCell = cell as? MatchCell else { return UITableViewCell() }
        matchCell.configCell(with: self.data[indexPath.row])
        
        return matchCell
    }
}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped Row....")
    }
    
}
