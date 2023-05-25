%dw 2.0
import * from dw::core::Strings
output application/json  
---
payload map { 
  "orderInfo": $.Order ++ leftPad($.lineNo,3,0)
} 

//padding zeros to a string left side of line no in data weave by using leftpad fun 

/*
[{
"orderInfo": "5421001"
},
{
"orderInfo": "5422002"
},
{
"orderInfo": "5423003"
},
{
"orderInfo": "5424004"
},
{
"orderInfo": "5425005"
},
{
"orderInfo": "5426010"
},
{
"orderInfo": "5427011"
},
{
"orderInfo": "5428012"
},
{
"orderInfo": "5429013"
},
{
"orderInfo": "5430101"
},
{
"orderInfo": "5431102"
},
{
"orderInfo": "5432103"
},
{
"orderInfo": "5433104"
}]
*/