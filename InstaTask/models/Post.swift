//
//  Post.swift
//  InstaTask
//
//  Created by macbro on 21/04/22.
//

import Foundation
class Post{
    var name:String?=nil
    var profilImage:String?=nil
    var postImage1:String?=nil
    var postImage2:String?=nil
    
    init(name:String,profilImage:String,postImage1:String,postImage2:String){
        self.name = name
        self.profilImage = profilImage
        self.postImage1 = postImage1
        self.postImage2 = postImage2
    }
}
