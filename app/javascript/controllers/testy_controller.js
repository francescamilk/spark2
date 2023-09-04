import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="testy"
export default class extends Controller {
  connect() {
    console.log('wewe')
  }
}
