//
//  Themes.swift
//  User
//
//  Created by casperon_macmini on 19/04/17.
//  Copyright © 2017 CASPERON. All rights reserved.
//

import UIKit
//import CRNotifications

class Themes: NSObject {
    
    static let sharedInstance = Themes()
    
    let screenSize:CGRect = UIScreen.main.bounds
    let errorMessage:String = "Network connection failed"
    let appName:String = "MediTimes"
    
    
    let ErrorMessage:String = "Network connection failed"
    
    //DelayTiming
    
    let UploadImageDelayTime:Int = 80
    let SocketWaitDelaytime:Int = 10
    
    //Font Name
    let Font_Bold:String="Montserrat-Bold"
    let Font_Regular:String="Montserrat-Regular"
    
    //Split MultiformData
    
    let MultiFormDataSplitCount:Int = 3
    
//func floatLblView(floatLbl:SkyFloatingLabelTextField,placeHolderTitleClr:UIColor,selectedTltClr:UIColor,txtFieldFontClr:UIColor,txtType:String,txtFontSize:CGFloat,txtLblTitleFont:CGFloat,placeHolder:String,placeHolederTlt:String) -> SkyFloatingLabelTextField{
//
//        floatLbl.placeholder = placeHolder
//        floatLbl.title = placeHolederTlt
//        floatLbl.titleColor = placeHolderTitleClr
//        floatLbl.lineHeight = 0.0
//
//        if txtType == "MobilePad"{
//        floatLbl.keyboardType = .phonePad
//        }
//
//        floatLbl.selectedTitleColor = selectedTltClr
//        floatLbl.selectedLineHeight = 0.0
//        floatLbl.textColor = txtFieldFontClr
//        floatLbl.font = UIFont(name: "Ubuntu-Medium", size:CGFloat(txtFontSize))
//        floatLbl.titleLabel.font = UIFont(name: "Ubuntu-Medium", size: CGFloat(txtLblTitleFont))
//
//        return floatLbl
//    }
    
//    func jssAlertView(viewController:UIViewController,title:String,text:String,buttonTxt:String?=nil,cancelButtonText:String?=nil,delay: Double?=nil,
//       iconImage:UIImage,timeLeft: UInt?=nil){
//        //let alertView = JSSAlertView().show(viewController,title: title,text: text,buttonText: buttonTxt,color:color)
//        let alertview = JSSAlertView().readyToEat(viewController,
//                                                  title: title,
//                                                  text: text,
//                                                  buttonText: buttonTxt,
//                                                  cancelButtonText: cancelButtonText,
//                                                  delay:delay,
//                                                  iconImage:iconImage,
//                                                  timeLeft: timeLeft)
//
//        //  return alertView
//    }

    
    let  codename:NSArray=["Afghanistan(+93)", "Albania(+355)","Algeria(+213)","American Samoa(+1684)","Andorra(+376)","Angola(+244)","Anguilla(+1264)","Antarctica(+672)","Antigua and Barbuda(+1268)","Argentina(+54)","Armenia(+374)","Aruba(+297)","Australia(+61)","Austria(+43)","Azerbaijan(+994)","Bahamas(+1242)","Bahrain(+973)","Bangladesh(+880)","Barbados(+1246)","Belarus(+375)","Belgium(+32)","Belize(+501)","Benin(+229)","Bermuda(+1441)","Bhutan(+975)","Bolivia(+591)","Bosnia and Herzegovina(+387)","Botswana(+267)","Brazil(+55)","British Virgin Islands(+1284)","Brunei(+673)","Bulgaria(+359)","Burkina Faso(+226)","Burma (Myanmar)(+95)","Burundi(+257)","Cambodia(+855)","Cameroon(+237)","Canada(+1)","Cape Verde(+238)","Cayman Islands(+1345)","Central African Republic(+236)","Chad(+235)","Chile(+56)","China(+86)","Christmas Island(+61)","Cocos (Keeling) Islands(+61)","Colombia(+57)","Comoros(+269)","Cook Islands(+682)","Costa Rica(+506)","Croatia(+385)","Cuba(+53)","Cyprus(+357)","Czech Republic(+420)","Democratic Republic of the Congo(+243)","Denmark(+45)","Djibouti(+253)","Dominica(+1767)","Dominican Republic(+1809)","Ecuador(+593)","Egypt(+20)","El Salvador(+503)","Equatorial Guinea(+240)","Eritrea(+291)","Estonia(+372)","Ethiopia(+251)","Falkland Islands(+500)","Faroe Islands(+298)","Fiji(+679)","Finland(+358)","France (+33)","French Polynesia(+689)","Gabon(+241)","Gambia(+220)","Gaza Strip(+970)","Georgia(+995)","Germany(+49)","Ghana(+233)","Gibraltar(+350)","Greece(+30)","Greenland(+299)","Grenada(+1473)","Guam(+1671)","Guatemala(+502)","Guinea(+224)","Guinea-Bissau(+245)","Guyana(+592)","Haiti(+509)","Holy See (Vatican City)(+39)","Honduras(+504)","Hong Kong(+852)","Hungary(+36)","Iceland(+354)","India(+91)","Indonesia(+62)","Iran(+98)","Iraq(+964)","Ireland(+353)","Isle of Man(+44)","Israel(+972)","Italy(+39)","Ivory Coast(+225)","Jamaica(+1876)","Japan(+81)","Jordan(+962)","Kazakhstan(+7)","Kenya(+254)","Kiribati(+686)","Kosovo(+381)","Kuwait(+965)","Kyrgyzstan(+996)","Laos(+856)","Latvia(+371)","Lebanon(+961)","Lesotho(+266)","Liberia(+231)","Libya(+218)","Liechtenstein(+423)","Lithuania(+370)","Luxembourg(+352)","Macau(+853)","Macedonia(+389)","Madagascar(+261)","Malawi(+265)","Malaysia(+60)","Maldives(+960)","Mali(+223)","Malta(+356)","MarshallIslands(+692)","Mauritania(+222)","Mauritius(+230)","Mayotte(+262)","Mexico(+52)","Micronesia(+691)","Moldova(+373)","Monaco(+377)","Mongolia(+976)","Montenegro(+382)","Montserrat(+1664)","Morocco(+212)","Mozambique(+258)","Namibia(+264)","Nauru(+674)","Nepal(+977)","Netherlands(+31)","Netherlands Antilles(+599)","New Caledonia(+687)","New Zealand(+64)","Nicaragua(+505)","Niger(+227)","Nigeria(+234)","Niue(+683)","Norfolk Island(+672)","North Korea (+850)","Northern Mariana Islands(+1670)","Norway(+47)","Oman(+968)","Pakistan(+92)","Palau(+680)","Panama(+507)","Papua New Guinea(+675)","Paraguay(+595)","Peru(+51)","Philippines(+63)","Pitcairn Islands(+870)","Poland(+48)","Portugal(+351)","Puerto Rico(+1)","Qatar(+974)","Republic of the Congo(+242)","Romania(+40)","Russia(+7)","Rwanda(+250)","Saint Barthelemy(+590)","Saint Helena(+290)","Saint Kitts and Nevis(+1869)","Saint Lucia(+1758)","Saint Martin(+1599)","Saint Pierre and Miquelon(+508)","Saint Vincent and the Grenadines(+1784)","Samoa(+685)","San Marino(+378)","Sao Tome and Principe(+239)","Saudi Arabia(+966)","Senegal(+221)","Serbia(+381)","Seychelles(+248)","Sierra Leone(+232)","Singapore(+65)","Slovakia(+421)","Slovenia(+386)","Solomon Islands(+677)","Somalia(+252)","South Africa(+27)","South Korea(+82)","Spain(+34)","Sri Lanka(+94)","Sudan(+249)","Suriname(+597)","Swaziland(+268)","Sweden(+46)","Switzerland(+41)","Syria(+963)","Taiwan(+886)","Tajikistan(+992)","Tanzania(+255)","Thailand(+66)","Timor-Leste(+670)","Togo(+228)","Tokelau(+690)","Tonga(+676)","Trinidad and Tobago(+1868)","Tunisia(+216)","Turkey(+90)","Turkmenistan(+993)","Turks and Caicos Islands(+1649)","Tuvalu(+688)","Uganda(+256)","Ukraine(+380)","United Arab Emirates(+971)","United Kingdom(+44)","United States(+1)","Uruguay(+598)","US Virgin Islands(+1340)","Uzbekistan(+998)","Vanuatu(+678)","Venezuela(+58)","Vietnam(+84)","Wallis and Futuna(+681)","West Bank(970)","Yemen(+967)","Zambia(+260)","Zimbabwe(+263)"];
    let code:NSArray=["+93", "+355","+213","+1684","+376","+244","+1264","+672","+1268","+54","+374","+297","+61","+43","+994","+1242","+973","+880","+1246","+375","+32","+501","+229","+1441","+975","+591"," +387","+267","+55","+1284","+673","+359","+226","+95","+257","+855","+237","+1","+238","+1345","+236","+235","+56","+86","+61","+61","+57","+269","+682","+506","+385","+53","+357","+420","+243","+45","+253","+1767","+1809","+593","+20","+503","+240","+291","+372","+251"," +500","+298","+679","+358","+33","+689","+241","+220"," +970","+995","+49","+233","+350","+30","+299","+1473","+1671","+502","+224","+245","+592","+509","+39","+504","+852","+36","+354","+91","+62","+98","+964","+353","+44","+972","+39","+225","+1876","+81","+962","+7","+254","+686","+381","+965","+996","+856","+371","+961","+266","+231","+218","+423","+370","+352","+853","+389","+261","+265","+60","+960","+223","+356","+692","+222","+230","+262","+52","+691","+373","+377","+976","+382","+1664","+212","+258","+264","+674","+977","+31","+599","+687","+64","+505","+227","+234","+683","+672","+850","+1670","+47","+968","+92","+680","+507","+675","+595","+51","+63","+870","+48","+351","+1","+974","+242","+40","+7","+250","+590","+290","+1869","+1758","+1599","+508","+1784","+685","+378","+239","+966","+221","+381","+248","+232","+65","+421","+386","+677","+252","+27","+82","+34","+94","+249","+597","+268","+46","+41","+963","+886","+992","+255","+66","+670","+228","+690","+676","+1868","+216","+90","+993","+1649","+688","+256","+380","+971","+44","+1","+598","+1340","+998","+678","+58","+84","+681","+970","+967","+260","+263"];
    let codeName_Only =
    ["AD","AE","AF","AG","AI","AL","AM","AO","AQ","AR","AS","AT","AU","AW","AX",
                         "AZ","BA","BB","BD","BE","BF","BG","BH","BI","BJ","BL","BM","BN","BO","BQ",
                         "BR","BS","BT","BV","BW","BY","BZ","CA","CC","CD","CF","CG","CH","CI","CK",
                         "CL","CM","CN","CO","CR","CU","CV","CW","CX","CY","CZ","DE","DJ","DK","DM",
                         "DO","DZ","EC","EE","EG","EH","ER","ES","ET","FI","FJ","FK","FM","FO","FR",
                         "GA","GB","GD","GE","GF","GG","GH","GI","GL","GM","GN","GP","GQ","GR","GS",
                         "GT","GU","GW","GY","HK","HM","HN","HR","HT","HU","ID","IE","IL","IM","IN",
                         "IO","IQ","IR","IS","IT","JE","JM","JO","JP","KE","KG","KH","KI","KM","KN",
                         "KP","KR","KW","KY","KZ","LA","LB","LC","LI","LK","LR","LS","LT","LU","LV",
                         "LY","MA","MC","MD","ME","MF","MG","MH","MK","ML","MM","MN","MO","MP","MQ",
                         "MR","MS","MT","MU","MV","MW","MX","MY","MZ","NA","NC","NE","NF","NG","NI",
                         "NL","NO","NP","NR","NU","NZ","OM","PA","PE","PF","PG","PH","PK","PL","PM",
                         "PN","PR","PS","PT","PW","PY","QA","RE","RO","RS","RU","RW","SA","SB","SC",
                         "SD","SE","SG","SH","SI","SJ","SK","SL","SM","SN","SO","SR","SS","ST","SV",
                         "SX","SY","SZ","TC","TD","TF","TG","TH","TJ","TK","TL","TM","TN","TO","TR",
                         "TT","TV","TW","TZ","UA","UG","UM","US","UY","UZ","VA","VC","VE","VG","VI",
                         "VN","VU","WF","WS","YE","YT","ZA","ZM","ZW","ZZ"]

    func getCountryList() -> (NSDictionary) {
        let dict = [
            "AF" : ["Afghanistan", "93"],
            "AX" : ["Aland Islands", "358"],
            "AL" : ["Albania", "355"],
            "DZ" : ["Algeria", "213"],
            "AS" : ["American Samoa", "1"],
            "AD" : ["Andorra", "376"],
            "AO" : ["Angola", "244"],
            "AI" : ["Anguilla", "1"],
            "AQ" : ["Antarctica", "672"],
            "AG" : ["Antigua and Barbuda", "1"],
            "AR" : ["Argentina", "54"],
            "AM" : ["Armenia", "374"],
            "AW" : ["Aruba", "297"],
            "AU" : ["Australia", "61"],
            "AT" : ["Austria", "43"],
            "AZ" : ["Azerbaijan", "994"],
            "BS" : ["Bahamas", "1"],
            "BH" : ["Bahrain", "973"],
            "BD" : ["Bangladesh", "880"],
            "BB" : ["Barbados", "1"],
            "BY" : ["Belarus", "375"],
            "BE" : ["Belgium", "32"],
            "BZ" : ["Belize", "501"],
            "BJ" : ["Benin", "229"],
            "BM" : ["Bermuda", "1"],
            "BT" : ["Bhutan", "975"],
            "BO" : ["Bolivia", "591"],
            "BA" : ["Bosnia and Herzegovina", "387"],
            "BW" : ["Botswana", "267"],
            "BV" : ["Bouvet Island", "47"],
            "BQ" : ["BQ", "599"],
            "BR" : ["Brazil", "55"],
            "IO" : ["British Indian Ocean Territory", "246"],
            "VG" : ["British Virgin Islands", "1"],
            "BN" : ["Brunei Darussalam", "673"],
            "BG" : ["Bulgaria", "359"],
            "BF" : ["Burkina Faso", "226"],
            "BI" : ["Burundi", "257"],
            "KH" : ["Cambodia", "855"],
            "CM" : ["Cameroon", "237"],
            "CA" : ["Canada", "1"],
            "CV" : ["Cape Verde", "238"],
            "KY" : ["Cayman Islands", "345"],
            "CF" : ["Central African Republic", "236"],
            "TD" : ["Chad", "235"],
            "CL" : ["Chile", "56"],
            "CN" : ["China", "86"],
            "CX" : ["Christmas Island", "61"],
            "CC" : ["Cocos (Keeling) Islands", "61"],
            "CO" : ["Colombia", "57"],
            "KM" : ["Comoros", "269"],
            "CG" : ["Congo (Brazzaville)", "242"],
            "CD" : ["Congo, Democratic Republic of the", "243"],
            "CK" : ["Cook Islands", "682"],
            "CR" : ["Costa Rica", "506"],
            "CI" : ["Côte d'Ivoire", "225"],
            "HR" : ["Croatia", "385"],
            "CU" : ["Cuba", "53"],
            "CW" : ["Curacao", "599"],
            "CY" : ["Cyprus", "537"],
            "CZ" : ["Czech Republic", "420"],
            "DK" : ["Denmark", "45"],
            "DJ" : ["Djibouti", "253"],
            "DM" : ["Dominica", "1"],
            "DO" : ["Dominican Republic", "1"],
            "EC" : ["Ecuador", "593"],
            "EG" : ["Egypt", "20"],
            "SV" : ["El Salvador", "503"],
            "GQ" : ["Equatorial Guinea", "240"],
            "ER" : ["Eritrea", "291"],
            "EE" : ["Estonia", "372"],
            "ET" : ["Ethiopia", "251"],
            "FK" : ["Falkland Islands (Malvinas)", "500"],
            "FO" : ["Faroe Islands", "298"],
            "FJ" : ["Fiji", "679"],
            "FI" : ["Finland", "358"],
            "FR" : ["France", "33"],
            "GF" : ["French Guiana", "594"],
            "PF" : ["French Polynesia", "689"],
            "TF" : ["French Southern Territories", "689"],
            "GA" : ["Gabon", "241"],
            "GM" : ["Gambia", "220"],
            "GE" : ["Georgia", "995"],
            "DE" : ["Germany", "49"],
            "GH" : ["Ghana", "233"],
            "GI" : ["Gibraltar", "350"],
            "GR" : ["Greece", "30"],
            "GL" : ["Greenland", "299"],
            "GD" : ["Grenada", "1"],
            "GP" : ["Guadeloupe", "590"],
            "GU" : ["Guam", "1"],
            "GT" : ["Guatemala", "502"],
            "GG" : ["Guernsey", "44"],
            "GN" : ["Guinea", "224"],
            "GW" : ["Guinea-Bissau", "245"],
            "GY" : ["Guyana", "595"],
            "HT" : ["Haiti", "509"],
            "VA" : ["Holy See (Vatican City State)", "379"],
            "HN" : ["Honduras", "504"],
            "HK" : ["Hong Kong, Special Administrative Region of China", "852"],
            "HU" : ["Hungary", "36"],
            "IS" : ["Iceland", "354"],
            "IN" : ["India", "91"],
            "ID" : ["Indonesia", "62"],
            "IR" : ["Iran, Islamic Republic of", "98"],
            "IQ" : ["Iraq", "964"],
            "IE" : ["Ireland", "353"],
            "IM" : ["Isle of Man", "44"],
            "IL" : ["Israel", "972"],
            "IT" : ["Italy", "39"],
            "JM" : ["Jamaica", "1"],
            "JP" : ["Japan", "81"],
            "JE" : ["Jersey", "44"],
            "JO" : ["Jordan", "962"],
            "KZ" : ["Kazakhstan", "77"],
            "KE" : ["Kenya", "254"],
            "KI" : ["Kiribati", "686"],
            "KP" : ["Korea, Democratic People's Republic of", "850"],
            "KR" : ["Korea, Republic of", "82"],
            "KW" : ["Kuwait", "965"],
            "KG" : ["Kyrgyzstan", "996"],
            "LA" : ["Lao PDR", "856"],
            "LV" : ["Latvia", "371"],
            "LB" : ["Lebanon", "961"],
            "LS" : ["Lesotho", "266"],
            "LR" : ["Liberia", "231"],
            "LY" : ["Libya", "218"],
            "LI" : ["Liechtenstein", "423"],
            "LT" : ["Lithuania", "370"],
            "LU" : ["Luxembourg", "352"],
            "MO" : ["Macao, Special Administrative Region of China", "853"],
            "MK" : ["Macedonia, Republic of", "389"],
            "MG" : ["Madagascar", "261"],
            "MW" : ["Malawi", "265"],
            "MY" : ["Malaysia", "60"],
            "MV" : ["Maldives", "960"],
            "ML" : ["Mali", "223"],
            "MT" : ["Malta", "356"],
            "MH" : ["Marshall Islands", "692"],
            "MQ" : ["Martinique", "596"],
            "MR" : ["Mauritania", "222"],
            "MU" : ["Mauritius", "230"],
            "YT" : ["Mayotte", "262"],
            "MX" : ["Mexico", "52"],
            "FM" : ["Micronesia, Federated States of", "691"],
            "MD" : ["Moldova", "373"],
            "MC" : ["Monaco", "377"],
            "MN" : ["Mongolia", "976"],
            "ME" : ["Montenegro", "382"],
            "MS" : ["Montserrat", "1"],
            "MA" : ["Morocco", "212"],
            "MZ" : ["Mozambique", "258"],
            "MM" : ["Myanmar", "95"],
            "NA" : ["Namibia", "264"],
            "NR" : ["Nauru", "674"],
            "NP" : ["Nepal", "977"],
            "NL" : ["Netherlands", "31"],
            "AN" : ["Netherlands Antilles", "599"],
            "NC" : ["New Caledonia", "687"],
            "NZ" : ["New Zealand", "64"],
            "NI" : ["Nicaragua", "505"],
            "NE" : ["Niger", "227"],
            "NG" : ["Nigeria", "234"],
            "NU" : ["Niue", "683"],
            "NF" : ["Norfolk Island", "672"],
            "MP" : ["Northern Mariana Islands", "1"],
            "NO" : ["Norway", "47"],
            "OM" : ["Oman", "968"],
            "PK" : ["Pakistan", "92"],
            "PW" : ["Palau", "680"],
            "PS" : ["Palestinian Territory, Occupied", "970"],
            "PA" : ["Panama", "507"],
            "PG" : ["Papua New Guinea", "675"],
            "PY" : ["Paraguay", "595"],
            "PE" : ["Peru", "51"],
            "PH" : ["Philippines", "63"],
            "PN" : ["Pitcairn", "872"],
            "PL" : ["Poland", "48"],
            "PT" : ["Portugal", "351"],
            "PR" : ["Puerto Rico", "1"],
            "QA" : ["Qatar", "974"],
            "RE" : ["Réunion", "262"],
            "RO" : ["Romania", "40"],
            "RU" : ["Russian Federation", "7"],
            "RW" : ["Rwanda", "250"],
            "SH" : ["Saint Helena", "290"],
            "KN" : ["Saint Kitts and Nevis", "1"],
            "LC" : ["Saint Lucia", "1"],
            "PM" : ["Saint Pierre and Miquelon", "508"],
            "VC" : ["Saint Vincent and Grenadines", "1"],
            "BL" : ["Saint-Barthélemy", "590"],
            "MF" : ["Saint-Martin (French part)", "590"],
            "WS" : ["Samoa", "685"],
            "SM" : ["San Marino", "378"],
            "ST" : ["Sao Tome and Principe", "239"],
            "SA" : ["Saudi Arabia", "966"],
            "SN" : ["Senegal", "221"],
            "RS" : ["Serbia", "381"],
            "SC" : ["Seychelles", "248"],
            "SL" : ["Sierra Leone", "232"],
            "SG" : ["Singapore", "65"],
            "SX" : ["Sint Maarten", "1"],
            "SK" : ["Slovakia", "421"],
            "SI" : ["Slovenia", "386"],
            "SB" : ["Solomon Islands", "677"],
            "SO" : ["Somalia", "252"],
            "ZA" : ["South Africa", "27"],
            "GS" : ["South Georgia and the South Sandwich Islands", "500"],
            "SS​" : ["South Sudan", "211"],
            "ES" : ["Spain", "34"],
            "LK" : ["Sri Lanka", "94"],
            "SD" : ["Sudan", "249"],
            "SR" : ["Suriname", "597"],
            "SJ" : ["Svalbard and Jan Mayen Islands", "47"],
            "SZ" : ["Swaziland", "268"],
            "SE" : ["Sweden", "46"],
            "CH" : ["Switzerland", "41"],
            "SY" : ["Syrian Arab Republic (Syria)", "963"],
            "TW" : ["Taiwan, Republic of China", "886"],
            "TJ" : ["Tajikistan", "992"],
            "TZ" : ["Tanzania, United Republic of", "255"],
            "TH" : ["Thailand", "66"],
            "TL" : ["Timor-Leste", "670"],
            "TG" : ["Togo", "228"],
            "TK" : ["Tokelau", "690"],
            "TO" : ["Tonga", "676"],
            "TT" : ["Trinidad and Tobago", "1"],
            "TN" : ["Tunisia", "216"],
            "TR" : ["Turkey", "90"],
            "TM" : ["Turkmenistan", "993"],
            "TC" : ["Turks and Caicos Islands", "1"],
            "TV" : ["Tuvalu", "688"],
            "UG" : ["Uganda", "256"],
            "UA" : ["Ukraine", "380"],
            "AE" : ["United Arab Emirates", "971"],
            "GB" : ["United Kingdom", "44"],
            "US" : ["United States of America", "1"],
            "UY" : ["Uruguay", "598"],
            "UZ" : ["Uzbekistan", "998"],
            "VU" : ["Vanuatu", "678"],
            "VE" : ["Venezuela (Bolivarian Republic of)", "58"],
            "VN" : ["Viet Nam", "84"],
            "VI" : ["Virgin Islands, US", "1"],
            "WF" : ["Wallis and Futuna Islands", "681"],
            "EH" : ["Western Sahara", "212"],
            "YE" : ["Yemen", "967"],
            "ZM" : ["Zambia", "260"],
            "ZW" : ["Zimbabwe", "263"]
        ]
        
        return dict as (NSDictionary)
    }
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,1", "iPad5,3", "iPad5,4":           return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
    func checkIpad()-> Bool{
        if UIScreen.main.bounds.width>600{
            return true
        }
        else{
             return false
        }
       
    }
    var getDeviceID:AnyObject{
        let uuID = UIDevice.current.identifierForVendor?.uuid
        return uuID as AnyObject
    }
    
    func isValidEmail(emailStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailStr)
    }
    
    func isValidPhNo(value: String) -> Bool {
        let num = "[0-9]{10}$";
        let test = NSPredicate(format: "SELF MATCHES %@", num)
        let result =  test.evaluate(with: value)
        return result
    }
    
    func isValidPassword(value: String) -> Bool {
        if value.characters.count < 6{
            return  false
        }
        else{
            return  true
        }
    }
    
    func checkNullvalue(Passed_value:Any?) -> String {
        var Param:Any?=Passed_value
        if(Param == nil || Param is NSNull)
        {
            Param=""
        }
        else
        {
            Param = String(describing: Passed_value!)
        }
        return Param as! String
    }
    
    func convertDateFormate(date:String,dateFormat:String)->String{
        let dateFormatter_Str = DateFormatter()
        dateFormatter_Str.dateFormat = dateFormat
        let getDate = dateFormatter_Str.date(from: date)
        return dateFormatter_Str.string(from: getDate!)
    }
    
    func convertStringToDate(dateString:String)->Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFormatter.locale = Locale.init(identifier: "en_GB")
        let dateObj = dateFormatter.date(from: dateString)
      //  dateFormatter.dateFormat = "MM-dd-yyyy"
        print("Dateobj: \(dateFormatter.string(from: dateObj!))")
        return dateObj!
    }
    func checkNumeric(inputStr:String) -> Bool{
        let aSet = NSCharacterSet(charactersIn:"0123456789").inverted
        let compSepByCharInSet = inputStr.components(separatedBy: aSet)
        let numberFiltered = compSepByCharInSet.joined(separator: "")
        return inputStr == numberFiltered
    }
    func checkNumericFloat(inputStr:String) -> Bool{
        let aSet = NSCharacterSet(charactersIn:"0123456789.").inverted
        let compSepByCharInSet = inputStr.components(separatedBy: aSet)
        let numberFiltered = compSepByCharInSet.joined(separator: "")
        return inputStr == numberFiltered
    }
    func getAppname()->String
    {
        var appname:String=self.checkNullvalue(Passed_value: Bundle.main.infoDictionary!["CFBundleDisplayName"])
        return appname
        
    }
    func getDeviceToken() ->String{
        
       let token =  UserDefaults.standard.value(forKey: "devicetoken")
        
        return token as! String
    }
    
    func saveUserID(userID: String) {
        UserDefaults.standard.set(userID, forKey: "userID")
        UserDefaults.standard.synchronize()
    }

    func getUserID() -> String! {
        if UserDefaults.standard.object(forKey: "userID") != nil {
            return UserDefaults.standard.object(forKey: "userID") as? String
        }else {
            return ""
        }
    }
    
    func saveUserName(UserName: String) {
        UserDefaults.standard.set(UserName, forKey: "UserName")
        UserDefaults.standard.synchronize()
    }
    
    func getUserName() -> String {
        if UserDefaults.standard.object(forKey: "UserName") != nil{
            return UserDefaults.standard.object(forKey: "UserName") as! String
        } else {
            return ""
        }
    }
    
    func saveLastName(lastName: String) {
        UserDefaults.standard.set(lastName, forKey: "LastName")
        UserDefaults.standard.synchronize()
    }
    
    func getLastName() -> String {
        if UserDefaults.standard.object(forKey: "LastName") != nil{
            return UserDefaults.standard.object(forKey: "LastName") as! String
        } else {
            return ""
        }
    }
    
    func saveCountryCode(CountryCode: String) {
        UserDefaults.standard.set(CountryCode, forKey: "CountryCode")
        UserDefaults.standard.synchronize()
    }
    
    func getCountryCode() -> String {
        if UserDefaults.standard.object(forKey: "CountryCode")  != nil{
            return UserDefaults.standard.object(forKey: "CountryCode") as! String
        } else{
            return ""
        }
    }
    func saveIsoCode(iso:String) {
        UserDefaults.standard.set(iso, forKey: "IsoCode")
        UserDefaults.standard.synchronize()
    }
    func getIsoCode() -> String {
        if UserDefaults.standard.object(forKey: "IsoCode")  != nil{
            return UserDefaults.standard.object(forKey: "IsoCode") as! String
        }
        return ""
    }

    
    func saveMobileNum(MobileNum: String) {
        UserDefaults.standard.set(MobileNum, forKey: "MobileNum")
        UserDefaults.standard.synchronize()
    }
    
    func getMobileNum() -> String {
        if UserDefaults.standard.object(forKey: "MobileNum") != nil{
            return UserDefaults.standard.object(forKey: "MobileNum") as! String
        } else{
            return ""
        }
    }
    
    func saveEmailID(EmailID: String) {
        UserDefaults.standard.set(EmailID, forKey: "EmailID")
        UserDefaults.standard.synchronize()
    }
    
    func getEmailID() -> String {
        if UserDefaults.standard.object(forKey: "EmailID") != nil{
            return UserDefaults.standard.object(forKey: "EmailID") as! String
        } else{
            return ""
        }
    }
    
    func saveuserDP(userDP: String) {
        UserDefaults.standard.set(userDP, forKey: "userDP")
        UserDefaults.standard.synchronize()
    }
    
    func saveUserPasswd(Passwd: String) {
        UserDefaults.standard.set(Passwd, forKey: "Password")
        UserDefaults.standard.synchronize()
    }
    
    func getUserPasswd() -> String! {
        if UserDefaults.standard.object(forKey: "Password") != nil {
            return UserDefaults.standard.object(forKey: "Password") as? String
        } else{
            return ""
        }
    }

    func getuserDP() -> String {
        if UserDefaults.standard.object(forKey: "userDP") != nil {
            return UserDefaults.standard.object(forKey: "userDP") as! String
        } else{
            return ""
        }
    }

    
    func getUserDetail() -> [[String: Any]]{
//        let getDetails = UserDefaults.standard.object(forKey:"UserDetail") as! SignUp
//        print(getDetails.user_Name)
        if   let getDetails = UserDefaults.standard.array(forKey: "UserDetail") as? [[String: Any]]{
            return  getDetails
        }
        print(getUserDetail)
       return  [["UserDetail":"Empty"]]
    }
//    func showNotification(title:String,subtitle:String)
//    {
//        SWMessage.sharedInstance.showNotificationWithTitle(
//            "\(title)",
//            subtitle: "\(subtitle)",
//            type: .warning
//        )
//        SWMessage.sharedInstance.offsetHeightForMessage = -3
//    }

    
//    func activityView(View:UIView){
//
//        spinnerView.frame=CGRect(x: View.center.x-25, y: View.center.y, width: 50, height: 50)
//
//        // Set the line width of the spinner
//        spinnerView.lineWidth = 3.0;
//        // Set the tint color of the spinner
//        spinnerView.tintColor = CustomColor.sharedInstance.themeColor;
//        View.addSubview(spinnerView)
//        spinnerView.startAnimating()
//        // Add it as a subview
//    }
    
//    func removeActivityView(View:UIView)
//    {
//        spinnerView.stopAnimating()
//        spinnerView.removeFromSuperview()
//       // View.willRemoveSubview(spinnerView)
//
  //  }
    func setShadow(object:AnyObject,cornerRadius:CGFloat,borderWidth:CGFloat,borderColor:UIColor,shadowRadius:CGFloat) -> AnyObject {
        object.layer.shadowColor = UIColor(red: 0.800, green: 0.800, blue: 0.800, alpha: 1.0).cgColor
        object.layer.shadowOffset = CGSize.zero
        object.layer.shadowRadius = shadowRadius
        object.layer.shadowOpacity = 1.0
        object.layer.cornerRadius = cornerRadius
        object.layer.masksToBounds = false
        object.layer.borderWidth = borderWidth
        object.layer.borderColor = borderColor.cgColor
         return object
    }
    
    func draw_Shadow(color: UIColor, opacity: Float, offSet: CGSize, radius: CGFloat, scale:Bool , object:AnyObject,type:String,cornerRadius:CGFloat) -> AnyObject {
        
        object.layer.cornerRadius = cornerRadius
        object.layer.masksToBounds = false
        object.layer.shadowColor = color.cgColor
        object.layer.shadowOpacity = opacity
        object.layer.shadowOffset = offSet
        object.layer.shadowRadius = radius
       if  type == "full"{
        object.layer.shadowPath = UIBezierPath(rect:  object.bounds).cgPath
        object.layer.shouldRasterize = true
        object.layer.rasterizationScale = scale ? UIScreen.main.scale : 1

        }
       else{
        
        
        }
        return object
    }
    
    func customColor()->UIColor{
        if UserInstance.userInstace.roleid! == 4 {
          return UIColor(displayP3Red: 239/255, green: 108/255, blue: 0/255, alpha: 1)
        }
        if UserInstance.userInstace.roleid! == 3 {
            return UIColor(displayP3Red: 173/255, green: 20/255, blue: 87/255, alpha: 1)
        }
        else{
            return UIColor(displayP3Red: 215/255, green: 50/255, blue: 45/255, alpha: 1)
        }
    }
    func customTitleSelectColor()->UIColor{
        
        return UIColor(displayP3Red: 103/255, green: 171/255, blue: 162/255, alpha: 1)
    }
    func customTitleUnSelectColor()->UIColor{
        return UIColor(displayP3Red: 24/255, green: 150/255, blue: 137/255, alpha: 1)
        
    }
    
    func showCustomAlert(getStr:String,isSuccess:Bool){
        var image = #imageLiteral(resourceName: "success")
        if isSuccess{
            image = #imageLiteral(resourceName: "success")
        }
        
//        let customNotification = CustomCRNotification(textColor: UIColor.white, backgroundColor: Themes.sharedInstance.customColor(), image: image)
//        CRNotifications.showNotification(type: customNotification, title: appName, message: getStr, dismissDelay: 3)
    }
    
    func rotateImage(image: UIImage) -> UIImage {
        if (image.imageOrientation == UIImage.Orientation.up ) {
            return image
        }
        UIGraphicsBeginImageContext(image.size)
        image.draw(in: CGRect(origin: CGPoint.zero, size: image.size))
        let copy = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return copy!
    }

    func saveLanguage(str:NSString){
        var tempStr = str
        if(tempStr.isEqual(to: "ta")){
            tempStr="ta"
        }else if(tempStr.isEqual(to: "en")){
            tempStr="en"
        }
        UserDefaults.standard.set(tempStr, forKey: "LanguageName")
        UserDefaults.standard.synchronize()
    }
    
//    func SetLanguageToApp(){
//        let savedLang=UserDefaults.standard.object(forKey: "LanguageName") as! NSString
//        if(savedLang == "ta"){
//           Languagehandler.sharedInstance.setApplicationLanguage(language: Languagehandler.sharedInstance.TamilLanguageShortName)
//        }else if(savedLang == "en") {
//            Languagehandler.sharedInstance.setApplicationLanguage(language: Languagehandler.sharedInstance.EnglishUSLanguageShortName)
//        }
//    }
    
//    func setLang(text:String)->String{
//        return   Languagehandler.sharedInstance.VJLocalizedString(key: text, comment: nil)
//    }
    
}
//fileprivate struct CustomCRNotification: CRNotificationType {
//    var textColor: UIColor
//    var backgroundColor: UIColor
//    var image: UIImage?
//}
