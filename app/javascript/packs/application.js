// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import React from "react"
import ReactDOM from "react-dom"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

//test.js
require('test')
//=require_tree
require("jquery")
require("jquery_ujs")
require ("turbolinks")
//require_tree.  //require_treeより上にjquery、jquery_ujsを書くこと
require (activestorage)
console.log('hoge')　