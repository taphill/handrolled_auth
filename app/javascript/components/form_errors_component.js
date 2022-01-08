import { html, css, LitElement } from "lit"

export class FormErrors extends LitElement {
  static styles = css`
    div {
      background-color: var(--error);
      padding: 2x;
      border: 2px solid var(--accent-bg);
      border-radius: 16px;
    }

    li {
      list-style: none;
    }
  `

  static properties = {
    errors: { type: Array },
  }

  render() {
    const errorTemplates = this.errors.map((error) => {
      return html`<li>${error}</li>`
    })

    return html`
      <div>
        <ul>
          ${errorTemplates}
        </ul>
      </div>
    `
  }
}

customElements.define('form-errors', FormErrors)
