import React, { Component } from 'react';
import CKEditor from '@ckeditor/ckeditor5-react';
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
// import EasyImage from '@ckeditor/ckeditor5-easy-image/src/easyimage';
//import Image from '@ckeditor/ckeditor5-image/src/image';
//import ImageToolbar from '@ckeditor/ckeditor5-image/src/imagetoolbar';
//import ImageCaption from '@ckeditor/ckeditor5-image/src/imagecaption';
//import ImageStyle from '@ckeditor/ckeditor5-image/src/imagestyle';



class Editor extends Component {


    getData() {
        return (
            "<p>Lorem Ipsum，也称乱数假文或者哑元文本， 是印刷及排版领域所常用的虚拟文字。\
            由于曾经一台匿名的打印机刻意打乱了一盒印刷字体从而造出一本字体样品书，Lorem Ipsum从西元15世纪起就被作为此领域的标准文本使用。\
            它不仅延续了五个世纪，还通过了电子排版的挑战，其雏形却依然保存至今。在1960年代，”Leatraset”公司发布了印刷着Lorem Ipsum段落的纸张，\
            从而广泛普及了它的使用。最近，计算机桌面出版软件”Aldus PageMaker”也通过同样的方式使Lorem Ipsum落入大众的视野。</p>"
        )
    }
    

    render() {
        return (
            <div className="Editor">
                <h2>Instap</h2>
                <CKEditor
                    editor={ ClassicEditor }
                    data={this.getData()}
                    config={{
                        //plugins: [ Image, ImageToolbar, ImageCaption, ImageStyle ]
                    }}
                    onInit={ editor => {
                        // You can store the "editor" and use when it is needed.
                        console.log( 'Editor is ready to use!', editor );
                    } }
                    onChange={ ( event, editor ) => {
                        const data = editor.getData();
                        console.log( { event, editor, data } );
                    } }
                    onBlur={ editor => {
                        console.log( 'Blur.', editor );
                    } }
                    onFocus={ editor => {
                        console.log( 'Focus.', editor );
                    } }
                />
            </div>
        );
    }
}

export default Editor;