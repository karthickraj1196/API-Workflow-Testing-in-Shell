##################
set x;
#$qot1="433086";
curl -d "@/opt/SCRIPTS/BOP/quoteworkflow.txt" -H "Content-Type: application/json" -H "token: 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" -X POST https://qasbopkbv6.beta.solartis.net/DroolsV6/DroolsService/FireEvent | jq '.' > /opt/SCRIPTS/BOP/response.json

status=$(grep "ResponseStatus" /opt/SCRIPTS/BOP/response.json)

qot=$(grep "QOT" /opt/SCRIPTS/BOP/response.json | sed "s/[^0-9]//g;")

echo $qot
# sed 's/433086/430088/' /opt/SCRIPTS/BOP/policyrequest.txt
sed 's#433086#'$qot'#' /opt/SCRIPTS/BOP/policyrequest.txt > /opt/SCRIPTS/BOP/policyrequest1.txt

#$qot1="$qot";

curl -d "@/opt/SCRIPTS/BOP/policyrequest1.txt" -H "Content-Type: application/json" -H "token: 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" -X POST https://qasbopkbv6.beta.solartis.net/DroolsV6/DroolsService/FireEvent | jq '.' > /opt/SCRIPTS/BOP/policyresponse.json 

status=$(grep "ResponseStatus" /opt/SCRIPTS/BOP/policyresponse.json)

body="Hi Team,

This is  automated mail for Sanity status Report on $(date +%d/%m/%y) .

Customer : Starr-BOP
$status
Quote Number : $qot

Note: If status is failed,Need to take necessary actions for it.



Regards,
Pushparajkarthick D
Non Production Infra."

echo "$body" | mail -s " STARRBOP-Sanity_Status " -r qaserver@solartis.com env_support@solartis.com

