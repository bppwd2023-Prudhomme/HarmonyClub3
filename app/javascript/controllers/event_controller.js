import { Controller } from "@hotwired/stimulus"

export default class extends Controller{
    connect(){
        console.log("Yo stimulus", this.element);
    }
    display(){
        console.log("We actioned");
    }
}