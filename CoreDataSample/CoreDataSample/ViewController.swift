//
//  ViewController.swift
//  CoreDataSample
//
//  Created by 강치우 on 11/23/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    private var models = [TodoListItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ToDoList"
        view.addSubview(tableView)
        getAllItems()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        
        // 네비게이션 버튼
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    
    // 버튼 눌렀을 때 기능
    @objc private func didTapAdd() {
        let alert = UIAlertController(title: "Keyword", message: "Write down your Keyword", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { _ in
            guard let field = alert.textFields?.first, let text = field.text, !text.isEmpty else {
                return
            }
            
            self.createItem(name: text)
        }))
        
        present(alert, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tabelView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        let cell = tabelView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = models[indexPath.row]
        let sheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        sheet.addAction(UIAlertAction(title: "취소", style: .cancel, handler: nil))
        sheet.addAction(UIAlertAction(title: "수정", style: .default, handler: { _ in
            
            let alert = UIAlertController(title: "Edit Item", message: "Edit your item", preferredStyle: .alert)
            
            alert.addTextField(configurationHandler: nil)
            alert.textFields?.first?.text = item.name
            alert.addAction(UIAlertAction(title: "확인", style: .cancel, handler: { _ in
                guard let field = alert.textFields?.first, let newName = field.text, !newName.isEmpty else {
                    return
                }
                
                self.updateItem(item: item, newName: newName)
            }))
            
            self.present(alert, animated: true)
            
        }))

        sheet.addAction(UIAlertAction(title: "삭제", style: .destructive, handler: { [weak self] _ in
            self?.deleteItem(item: item)
        }))

        
        present(sheet, animated: true)
    }
    
    // Core Data
    func getAllItems() {
        do {
            models = try context.fetch(TodoListItem.fetchRequest())
            DispatchQueue.main.async {        // ui 관련 뷰는 메인 쓰레드에서 수행 되게끔 데이터 리로드
                self.tableView.reloadData()
            }
        } catch {
            // error
        }
    }
    
    func createItem(name: String) {
        let newItem = TodoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        
        do {
            try context.save()
            getAllItems()
        } catch {
            // error
        }
    }
    
    func deleteItem(item: TodoListItem) {
        context.delete(item)
        do {
            try context.save()
            getAllItems()
        } catch {
            // error
        }
    }
    
    func updateItem(item: TodoListItem, newName: String) {
        item.name = newName
        do {
            try context.save()
            getAllItems()
        } catch {
            // error
        }
    }
}

