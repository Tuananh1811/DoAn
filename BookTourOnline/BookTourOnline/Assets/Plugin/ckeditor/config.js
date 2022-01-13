/// <reference path="ckeditor.js" />
/// <reference path="ckeditor.js" />
/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
  /*  config.language = 'fr';*/
    config.htmlEncodeOutput = true;
    config.entities = false;
    config.entities_latin = false;
    config.ForceSimpleAmpersand = true;
    config.syntaxhighlight_lang = 'csharp';
    config.syntaxhighlight_hideControls = true;
    config.language = 'vi';
    //config.filebrowserBrowseUrl = '~/Areas/Asset/plugins/ckfinder/ckfinder.html';
    //config.filebrowserImageBrowseUrl = '~/Areas/Asset/plugins/ckfinder.html?Type=Images';
    //config.filebrowserFlashBrowseUrl = '~/Areas/Asset/plugins/ckfinder.html?Type=Flash';
    //config.filebrowserUploadUrl = '~/Areas/Asset/plugins/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files';
    //config.filebrowserImageUploadUrl = '/Data';
    //config.filebrowserFlashUploadUrl = '~/Areas/Asset/plugins/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash';

    //CKFinder.setupCKEditor(null, '~/Areas/Asset/plugins/ckfinder/');
};
