Class DH.JSONAdaptor Extends %JSON.Adaptor [ Abstract ]
{

ClassMethod jsonstring(id, map = "") [ SqlProc ]
{
	try{
		set myobj = ..%OpenId(id)
		set sc = myobj.%JSONExportToString(.json,map)
		if $$$ISERR(sc) $$$ThrowStatus(sc)
		return json
	}
	catch ex{
		throw ex
	}
}

ClassMethod jsonstream(id, map = "") As %String [ SqlProc ]
{
	try{
		set myobj = ..%OpenId(id)
		set sc = myobj.%JSONExportToStream(.json,map)
		if $$$ISERR(sc) $$$ThrowStatus(sc)
		return json
	}
	catch ex{
		throw ex
	}
}

}
