import React from 'react'

export default class CodeNode extends React.Component {

  render() {
    return (
      <pre {...this.props.attributes}>
        <code>{this.props.children}</code>
      </pre>
    )
  }
}
