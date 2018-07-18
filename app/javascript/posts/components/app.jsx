// Post editor page

import React from 'react'
import { Editor } from 'slate-react'
import { Value } from 'slate'

import CodeNode from './code_node'

const initialValue = Value.fromJSON({
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
                text: 'A line of text in a paragraph.',
              },
            ],
          },
        ],
      },
    ],
  },
})

class App extends React.Component {
  // Set the initial value when the app is first constructed.
  state = {
    value: initialValue,
  }
  // On change, update the app's React state with the new editor value.
  onChange = ({ value }) => {
    this.setState({ value });
  }

  onKeyDown = (event, change) => {
    if (event.key != '`') return;
    event.preventDefault();
    change.setBlocks('code');
    return true;
  }

  renderNode = props => {
    switch (props.node.type) {
      case 'code':
        return <CodeNode {...props} />
    }
  }

  // Render the editor.
  render() {
    return (
      <Editor
        value={this.state.value}
        onChange={this.onChange} 
        onKeyDown={this.onKeyDown}
        renderNode={this.renderNode}
      />
    )

  }
}

export default App;
