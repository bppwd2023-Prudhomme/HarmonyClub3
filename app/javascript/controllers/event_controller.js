import { Controller } from "@hotwired/stimulus"

export default class extends Controller{
    static targets = [ "page_type", "content" ]
    connect(){
        console.log("Yo stimulus", this.element);
    }
    display(){
        console.log("We actioned", this.page_typeTarget.value);
        if(this.page_typeTarget.value == "Basic Page"){
            console.log("Basic page detected");
            this.contentTarget.classList.remove("hidden");
        }else{
            this.contentTarget.classList.add("hidden");
        }
    }
}