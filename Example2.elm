module Main exposing (domains, input1, input2, input3, mailcheckResult1, mailcheckResult2, mailcheckResult3, secondLevelDomains, test1Pass, test2Pass, test3Pass, topLevelDomains)

import Mailcheck exposing (suggestWith)


domains =
    [ "yohomail.com" ]


secondLevelDomains =
    [ "supamail" ]


topLevelDomains =
    [ "cosmic" ]


input1 =
    "test@ohomail.co"


mailcheckResult1 =
    suggestWith domains secondLevelDomains topLevelDomains input1


test1Pass =
    mailcheckResult1 == Just ( "test", "yohomail.com", "test@yohomail.com" )


input2 =
    "test@fakedomain.comic"


mailcheckResult2 =
    suggestWith domains secondLevelDomains topLevelDomains input2


test2Pass =
    mailcheckResult2 == Just ( "test", "fakedomain.cosmic", "test@fakedomain.cosmic" )


input3 =
    "test@supermail.tld"


mailcheckResult3 =
    suggestWith domains secondLevelDomains topLevelDomains input3


test3Pass =
    mailcheckResult3 == Just ( "test", "supamail.tld", "test@supamail.tld" )


d1 =
    Debug.log "mailcheckResult1" ( input1, mailcheckResult1, test1Pass )


d2 =
    Debug.log "mailcheckResult2" ( input2, mailcheckResult2, test2Pass )


d3 =
    Debug.log "mailcheckResult3" ( input3, mailcheckResult3, test3Pass )
