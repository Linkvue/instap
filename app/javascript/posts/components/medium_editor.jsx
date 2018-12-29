import React from 'react';

import MediumEditor from 'medium-editor';
import 'medium-editor/dist/css/medium-editor.min.css';
import 'medium-editor/dist/css/themes/default.css';


class Editor extends React.Component {

  componentDidMount() {
    // let post = this.fetchPost("2ebc9ed9-8ce4-4ed2-87e6-7044ae3ae2b5");
    // console.log(post)
    var editor = new MediumEditor('.editable', {
      toolbar: {
        /* These are the default options for the toolbar,
           if nothing is passed this is what is used */
        allowMultiParagraphSelection: true,
        buttons: ['bold', 'italic', 'underline', 'anchor', 'h1', 'h2', 'h3', 'quote'],
        diffLeft: 0,
        diffTop: -10,
        firstButtonClass: 'medium-editor-button-first',
        lastButtonClass: 'medium-editor-button-last',
        relativeContainer: null,
        standardizeSelectionStart: false,
        static: false,
        /* options which only apply when static is true */
        align: 'center',
        sticky: false,
        updateOnEmptySelection: false
      }
    });

    editor.subscribe('editableInput', function (event, editable) {
      // When inputType is any event save post.
      console.log(event);
    });

  }

  render() {
    return (<div>dfsfsfddfsfds</div>)
  }

}

export default Editor;