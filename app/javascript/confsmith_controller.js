// app/javascript/confsmith_controller.js

import { Controller } from '@hotwired/stimulus'
// this gets bundled in the final payload 👆

// Connects to data-controller="confsmith"
export default class extends Controller {
  connect() {
    console.log('confsmith connected')
  }
}



