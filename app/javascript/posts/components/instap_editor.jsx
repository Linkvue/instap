import React from 'react';
import { Editor } from 'slate-react';
import { Value } from 'slate';


const initialState = Value.fromJSON({
  document: {
    nodes: [
      {
        object: 'block',
        type: 'paragraph',
        nodes: [
          {
            object: 'text',
            leaves: [
              {
                text: 'A line of text in a paragraph.'
              }
            ]
          }
        ]
      }
    ]
  }
})

function CodeNode(props) {
  console.log('CodeNode', props)
  return (
    <pre { ...props.attributes }>
      <code>{props.children}</code>
    </pre>
  )
}

function BoldMark(props) {
  return (
    <strong>{props.children}</strong>
  )
}


class InstapEditor extends React.Component {

  state = {
    value: initialState
  }

  onChange = ({ value }) => {
    this.setState({ value })
  }

  onKeyDown = (event, change) => {
    console.log('onKeyDown', event, change)
    if(!event.ctrlKey) return
    event.preventDefault()
    switch(event.key) {
      case '`':
        const isCode = change.value.blocks.some(block => block.type == 'code')
        change.setBlocks(isCode ? 'paragraph' : 'code')
        return true
      case 'b':
        change.toggleMark('bold')
        return true
    }
    return true
  }

  render() {
    return (
      <Editor 
        value={this.state.value}
        onChange={this.onChange}
        onKeyDown={this.onKeyDown}
        renderNode={this.renderNode}
        renderMark={this.renderMark}
      />
    )
  }

  renderNode = props => {
    console.log('renderNode', props)
    switch(props.node.type) {
      case 'code':
        return <CodeNode {...props} />
    }
  }

  renderMark = props => {
    switch(props.mark.type) {
      case 'bold':
        return <BoldMark {...props}/>
    }
  }
}

export default InstapEditor;
