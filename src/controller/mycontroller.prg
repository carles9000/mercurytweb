CLASS MyController

	METHOD New( oController )
	
	METHOD Root( oController )	
	METHOD Test1( oController )
	METHOD Test2( oController )
	METHOD Test3( oController )
	METHOD Test4( oController )

ENDCLASS 


METHOD New( oController ) CLASS MyController

RETU SELF

METHOD Root( oController ) CLASS MyController

	?? '<h2><b>Version TWeb: <b>' + TWebVersion()

RETU nil

METHOD Test1( oController ) CLASS MyController

	//	Nuestros procesos...
	
	oController:View( 'testtweb1.view' )

RETU NIL

METHOD Test2( oController ) CLASS MyController

	//	Nuestros procesos...
	
	oController:View( 'testtweb2.view' )

RETU NIL

METHOD Test3( oController ) CLASS MyController

	//	Nuestros procesos...
	
	oController:View( 'testtweb3.view' )

RETU NIL

METHOD Test4( oController ) CLASS MyController

	local hData := {=>}
	
	//	Nuestros procesos...
	
	hData[ 'id' ] 		:= oController:oRequest:Post( 'id' )
	hData[ 'first' ]	:= oController:oRequest:Post( 'first' )
	
	oController:View( 'testtweb4.view', hData )

RETU NIL


