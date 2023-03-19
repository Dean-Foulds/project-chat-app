import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ['toggleable']
  static classes = ['hidden']

  toggle(event) {
    event.preventDefault()
    this.toggleableTargets.forEach(target => {
      target.classList.toggle(this.classToToggle)
    })
  }

  get classToToggle() {
    if (this.hasHiddenClass) {
      return this.hiddenClass
    } else {
      return 'd-none'
    }
  }