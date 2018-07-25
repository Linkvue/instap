import React from 'react'
import ReactDOM from 'react-dom'
import { AppContainer } from 'react-hot-loader'
import App from './components/app'
import './samples/index.css'

/**
 * Render the app.
 */

//const root = window.document.createElement('div')
//root.id = 'root'
const root = document.querySelector('#root')
window.document.body.appendChild(root)

const render = Component => {
  ReactDOM.render(
    <AppContainer>
      <Component />
    </AppContainer>,
    root
  )
}

render(App)

/**
 * Re-render for hot module replacement in development.
 */

if (module.hot) {
  module.hot.accept('./app', () => render(App))
}
