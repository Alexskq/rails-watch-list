import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Watch List"],
      typeSpeed: 80,
      loop: false
    })
  }
}
