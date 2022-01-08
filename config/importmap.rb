# Pin npm packages by running ./bin/importmap

pin "application", preload: true

pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

pin "lit", to: "https://ga.jspm.io/npm:lit@2.1.1/index.js"
pin "@lit/reactive-element", to: "https://ga.jspm.io/npm:@lit/reactive-element@1.1.1/reactive-element.js"
pin "lit-element/lit-element.js", to: "https://ga.jspm.io/npm:lit-element@3.1.1/lit-element.js"
pin "lit-html", to: "https://ga.jspm.io/npm:lit-html@2.1.1/lit-html.js"

pin_all_from "app/javascript/controllers", under: "controllers"
pin_all_from "app/javascript/components", under: "components"
