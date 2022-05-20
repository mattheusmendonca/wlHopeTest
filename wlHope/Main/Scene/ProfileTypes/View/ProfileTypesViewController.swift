//
//  ProfileTypesViewController.swift
//  wlHope
//
//  Created by Fuze on 12/05/22.
//

import UIKit

class ProfileTypesViewController: UIViewController, ViewModelBindable {

    var viewModel: ProfileTypesViewModel?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        setupElements()
        tableView.register(UINib(nibName: "ProfileTypesTableViewCell", bundle: nil), forCellReuseIdentifier: "profileTypesCell")
    }
    
    func bindViewModel() {
        self.viewModel?.options.addAndNotify(observer: self, observerBlock: {[weak self] _ in
            self?.tableView.reloadData()
        })
    }
    
    func setupElements() {
        nextQuestionButton.layer.cornerRadius = 10.0
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.register(UINib(nibName: "ProfileTypesTableViewCell", bundle: nil), forCellReuseIdentifier: "profileTypesCell")
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        viewModel?.goBack()
    }
    @IBAction func nextQuestionButtonTapped(_ sender: Any) {
        viewModel?.nextQuestion()
    }
}

extension ProfileTypesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.getNumberOfSections() ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel?.selectedAt(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "profileTypesCell", for: indexPath) as? ProfileTypesTableViewCell {
            if let option = viewModel?.options.value[indexPath.row] {
               cell.setupOption(option: option)
            }
            return cell
        }
        return UITableViewCell()
    }
}
