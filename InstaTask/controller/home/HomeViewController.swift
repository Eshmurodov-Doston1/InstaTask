//
//  HomeViewController.swift
//  InstaTask
//
//  Created by macbro on 21/04/22.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate
,UITableViewDataSource{
   
    
    @IBOutlet weak var tableView: UITableView!
    var itemList:Array<Post> = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    
    // MARK:- Method
    func initViews(){
        tableView.delegate = self
        tableView.dataSource = self
        addNavigationBar()
        loadData()
    }

    func addNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(cameraClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(sendClick))
        title = "Instagram"
    }
    
    

    func loadData(){
        itemList.append(Post(name: "Dostonbek Eshmurodov", profilImage: "image_user", postImage1: "james", postImage2: "music_image"))
        
        itemList.append(Post(name: "Murodjon Eshmurodov", profilImage: "person", postImage1: "james", postImage2: "image_user"))
        
        itemList.append(Post(name: "Dostonbek Eshmurodov", profilImage: "image_user", postImage1: "james", postImage2: "music_image"))
        
        itemList.append(Post(name: "Murodjon Eshmurodov", profilImage: "person", postImage1: "james", postImage2: "image_user"))
        itemList.append(Post(name: "Dostonbek Eshmurodov", profilImage: "image_user", postImage1: "james", postImage2: "music_image"))
        
        itemList.append(Post(name: "Murodjon Eshmurodov", profilImage: "person", postImage1: "james", postImage2: "image_user"))
    }
    
    
    
    // MARK:- Action
    
    @objc func cameraClick(){
        
    }
   
    @objc func sendClick(){
        
    }
    
    // MARK:- TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = itemList[indexPath.row]
        let itemPost = Bundle.main.loadNibNamed("PostTableViewCell", owner: self,options: nil)?.first as! PostTableViewCell
        itemPost.imageProfil.layer.cornerRadius = 30
        itemPost.imageProfil.image = UIImage(named: item.profilImage!)
        itemPost.nameProfil.text = item.name
        itemPost.postFirstImage.image = UIImage(named: item.postImage1!)
        itemPost.postSecondImage.image = UIImage(named: item.postImage2!)
        return itemPost
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    
}
