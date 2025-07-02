console.log('hi from confsmith')

// We're importing Confetti and doing a console log here just to make sure it's bundling the package in app/assets/builds/confsmith.js
import { Confetti } from "stimulus-confetti"
console.log(Confetti)

// demo of the top-level async
const t = async function() {
  console.log('t')
}

await t()