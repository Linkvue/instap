/*
import React from 'react';
import ReactDOM from 'react-dom';
import InstapEditor from './components/instap_editor';
import Editor from './components/medium_editor';

const root = document.querySelector('#root');
ReactDOM.render(
  <Editor />,
  root
)
*/

import MediumEditor from 'medium-editor';

import css from './styles/index.css'

var editor = new MediumEditor('.editable', {
    toolbar: {
        allowMultiParagraphSelection: true,
        buttons: ['bold', 'italic', 'underline', 'anchor', 'h2', 'h3', 'quote'],
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
