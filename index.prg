//	{% LoadHrb( '/lib/core_lib.hrb' ) %}
//	{% LoadHrb( '/lib/mercury.hrb' ) %}		//	Load Mercury...
//	{% LoadHrb( '/lib/tweb/tweb.hrb' ) %}	//	Load TWeb Library

function main() 

	local oApp := App()
	
		oApp:oRoute:Map( 'GET'		,  'root',   '/'  			,   'root@mycontroller.prg' )
		oApp:oRoute:Map( 'GET'		,  'test1',  'testtweb1'  	,   'test1@mycontroller.prg' )
		oApp:oRoute:Map( 'GET'		,  'test2',  'testtweb2'  	,   'test2@mycontroller.prg' )
		oApp:oRoute:Map( 'GET,POST',  'test3',  'testtweb3'  	,   'test3@mycontroller.prg' )		
		oApp:oRoute:Map( 'POST'	,  'test4',  'testtweb4'  	,   'test4@mycontroller.prg' )
		
	oApp:Init()
	
retu nil
	
	