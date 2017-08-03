#delete old Policies
curl http://localhost:7070/pap/v1 -s -S -X DELETE --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"

#user user do T on /metric
curl http://localhost:7070/pap/v1/subject/user -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="user_access_/metric_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>user_access_/metric_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/metric</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user user do T on  /template
curl http://localhost:7070/pap/v1/subject/user -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="user_access_/template_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>user_access_/template_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/template</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user user do T on /device
curl http://localhost:7070/pap/v1/subject/user -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="user_access_/device_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>user_access_/device_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/device</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user user do  on /auth/user
#user user do T on /flows
curl http://localhost:7070/pap/v1/subject/user -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="user_access_/flows_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>user_access_/flows_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/flows</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user user do T on /history
curl http://localhost:7070/pap/v1/subject/user -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="user_access_/history_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>user_access_/history_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/history</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user user do T on /mashup
curl http://localhost:7070/pap/v1/subject/user -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="user_access_/mashup_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>user_access_/mashup_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/mashup</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on /metric
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/metric_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/metric_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/metric</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on  /template
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/template_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/template_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/template</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on /device
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/device_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/device_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/device</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on /auth/user
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/auth/user_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/auth/user_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/auth/user</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on /flows
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/flows_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/flows_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/flows</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on /history
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/history_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/history_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/history</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

#user admin do T on /mashup
curl http://localhost:7070/pap/v1/subject/admin -s -S -X POST --header "Content-Type: application/xml" --header "charset: UTF-8" --header "Accept: application/xml" --header "Fiware-Service: myTenant"  -d '<Policy xmlns="urn:oasis:names:tc:xacml:3.0:core:schema:wd-17"        PolicyId="admin_access_/mashup_policy"      Version="1.0"     RuleCombiningAlgId="urn:oasis:names:tc:xacml:3.0:rule-combining-algorithm:deny-unless-permit">    <Description>admin_access_/mashup_desc_policy</Description><Target><AnyOf><AllOf><Match MatchId="urn:oasis:names:tc:xacml:1.0:function:string-regexp-match">         <AttributeValue DataType="http://www.w3.org/2001/XMLSchema#string">/mashup</AttributeValue>         <AttributeDesignator AttributeId="urn:oasis:names:tc:xacml:1.0:resource:resource-id" Category="urn:oasis:names:tc:xacml:3.0:attribute-category:resource" DataType="http://www.w3.org/2001/XMLSchema#string" MustBePresent="true"></AttributeDesignator>        </Match></AllOf></AnyOf></Target><Rule Effect="Permit" RuleId="primary-group-customer-rule"></Rule></Policy> '

