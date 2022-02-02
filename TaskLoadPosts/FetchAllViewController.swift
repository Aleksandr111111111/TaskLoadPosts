//
//  ViewController.swift
//  TaskLoadPosts
//
//  Created by Aleksander Kulikov on 31.01.2022.
//

import UIKit
private let reuseIdentifier = "CellId"

class FetchAllViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var postsa = [AllPosts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        Network().allFetchPost { [weak self] post in
            self?.postsa = post.posts
            self?.tableView.reloadData()
            print(self?.postsa ?? "")
        }
    }
    //
    //    let ag = URL(string: "https://raw.githubusercontent.com/aShaforostov/jsons/master/api/posts/\(self.postsa.[IndexPath].postId).json")
    
}

extension FetchAllViewController: UITableViewDataSource {
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
         return postsa.count
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! AllPostsViewCell
         
         func time(timeshamp: Int? ) -> String {
             guard timeshamp != nil else { return ""}
             let epochTime = TimeInterval(postsa[indexPath.row].timeshamp)
             let date = " \(Date(timeIntervalSince1970: epochTime))"
             return date
         }
         
         cell.titleLabel.text = postsa[indexPath.row].title
         cell.secondariLabel.text = postsa[indexPath.row].previewText
         cell.timePost.titleLabel?.text = time(timeshamp: postsa[indexPath.row].timeshamp)
         cell.buttonLikes.titleLabel?.text = "\(String(describing: postsa[indexPath.row].likesCount))"

        return cell
    }
}
