/// State or county
Class World.Countries Extends %Persistent
{

Property Name As %String(MAXLEN = 500) [ Required ];

/// population property
Property Population As %Integer;

ClassMethod Populate()
{
	//for i="Невельский район","Южно-Сахалинск","Поронайский район","Александровск-Сахалинский район","Охинский район","Углегорский район","Холмский район","Корсаковский район","Томаринский район","Южно-Курильский район","Смирныховский район","Анивский район","Ногликский район","Долинский район","Тымовский район","Макаровский район","Северо-Курильский район","Курильский район"
	for i="Russia","Germany","United States of America"
	 {
	  set obj=..%New()
	  set obj.Name=i
	  set obj.Population=$R(100000)
	  d obj.%Save()
	  w obj.Name," created",!
	 }
}

Storage Default
{
<Data name="CountriesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Population</Value>
</Value>
</Data>
<DataLocation>^World.CountriesD</DataLocation>
<DefaultData>CountriesDefaultData</DefaultData>
<IdLocation>^World.CountriesD</IdLocation>
<IndexLocation>^World.CountriesI</IndexLocation>
<StreamLocation>^World.CountriesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}

