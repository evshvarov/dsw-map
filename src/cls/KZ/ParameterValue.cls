Class KZ.ParameterValue Extends (%Persistent, %XML.Adaptor)
{

Relationship Region As Area(XMLPROJECTION = "XELEMENT", XMLREFERENCE = "ID") [ Cardinality = one, Inverse = Parameters ];

/// State, county or city
/// Parameter
Relationship Parameter As Parameter(XMLPROJECTION = "XELEMENT", XMLREFERENCE = "ID") [ Cardinality = one, Inverse = Values ];

/// Value for region|county|city
Property Value As %Float [ Required ];

Index PVIdx On (Region, Parameter);

Index RegionParameterIndex On (Region, Parameter) [ Unique ];

Storage Default
{
<Data name="ParameterValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Region</Value>
</Value>
<Value name="3">
<Value>Parameter</Value>
</Value>
<Value name="4">
<Value>Value</Value>
</Value>
</Data>
<DataLocation>^KZ.ParameterValueD</DataLocation>
<DefaultData>ParameterValueDefaultData</DefaultData>
<IdLocation>^KZ.ParameterValueD</IdLocation>
<IndexLocation>^KZ.ParameterValueI</IndexLocation>
<StreamLocation>^KZ.ParameterValueS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
