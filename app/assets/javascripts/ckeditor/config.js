CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'MyToolbar';
	config.uiColor = '#FFFFFF';
	config.removePlugins = 'elementspath';
	config.resize_enabled = false;
	
	config.toolbar_MyToolbar =
	[
	{ name: 'clipboard', items: ['Paste','PasteText', 'PasteFromWord']},
	{ name: 'styles', items: ['Format']},	
	{ name: 'basicstyles', items : [ 'Bold','Italic','Underline','-','RemoveFormat' ] },
	{ name: 'paragraph', items : [ 'NumberedList','BulletedList','-','-','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
	{ name: 'insert', items: ['HorizontalRule', 'Table', 'Image']},
	{ name: 'tools', items : [ 'Maximize'] }

	];
};
