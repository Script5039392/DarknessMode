local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\197\60","\143\235\18\33\23\229\158\19"),function(v42) if (v9(v42,2)==81) then local v94=0;while true do if (0==v94) then v30=v8(v11(v42,1,2 -1 ));return "";end end else local v95=0;local v96;while true do if (v95==0) then v96=v10(v8(v42,16));if v30 then local v122=0;local v123;while true do if (0==v122) then v123=v13(v96,v30);v30=nil;v122=1;end if (v122==1) then return v123;end end else return v96;end break;end end end end);local function v31(v43,v44,v45) if v45 then local v97=0;local v98;while true do if (v97==0) then v98=(v43/(2^(v44-1)))%((7 -5)^(((v45-1) -(v44-(2 -1))) + 1)) ;return v98-(v98%(953 -(802 + 150))) ;end end else local v99=0;local v100;while true do if (v99==0) then v100=2^(v44-1) ;return (((v43%(v100 + v100))>=v100) and (1 -0)) or 0 ;end end end end local function v32() local v46=0;local v47;while true do if (v46==1) then return v47;end if (v46==0) then v47=v9(v27,v29,v29);v29=v29 + 1 ;v46=1;end end end local function v33() local v48=0;local v49;local v50;while true do if (v48==0) then v49,v50=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;v48=1;end if (v48==1) then return (v50 * 256) + v49 ;end end end local function v34() local v51=0;local v52;local v53;local v54;local v55;while true do if (v51==1) then return (v55 * 16777216) + (v54 * (176444 -110908)) + (v53 * 256) + v52 ;end if (0==v51) then v52,v53,v54,v55=v9(v27,v29,v29 + 3 );v29=v29 + (10 -6) ;v51=1;end end end local function v35() local v56=0;local v57;local v58;local v59;local v60;local v61;local v62;while true do if (v56==3) then if (v61==0) then if (v60==0) then return v62 * 0 ;else local v124=0;while true do if (v124==0) then v61=1;v59=619 -(555 + 64) ;break;end end end elseif (v61==2047) then return ((v60==0) and (v62 * ((932 -(857 + 74))/(0 + 0)))) or (v62 * NaN) ;end return v16(v62,v61-(1591 -(367 + 201)) ) * (v59 + (v60/(2^52))) ;end if (v56==1) then v59=1;v60=(v31(v58,1,20) * (2^32)) + v57 ;v56=2;end if (v56==0) then v57=v34();v58=v34();v56=1;end if (v56==2) then v61=v31(v58,21,31);v62=((v31(v58,57 -25 )==1) and  -1) or 1 ;v56=3;end end end local function v36(v63) local v64=0;local v65;local v66;while true do if (v64==3) then return v14(v66);end if (v64==2) then v66={};for v104=1, #v65 do v66[v104]=v10(v9(v11(v65,v104,v104)));end v64=3;end if (v64==0) then v65=nil;if  not v63 then local v119=0;while true do if (v119==0) then v63=v34();if (v63==0) then return "";end break;end end end v64=1;end if (v64==1) then v65=v11(v27,v29,(v29 + v63) -1 );v29=v29 + v63 ;v64=2;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v67=0;local v68;local v69;local v70;local v71;local v72;local v73;while true do if (v67==1) then v72=v34();v73={};for v106=1,v72 do local v107=0;local v108;local v109;while true do if (v107==0) then v108=v32();v109=nil;v107=1;end if (v107==1) then if (v108==1) then v109=v32()~=0 ;elseif (v108==2) then v109=v35();elseif (v108==3) then v109=v36();end v73[v106]=v109;break;end end end v71[3]=v32();v67=2;end if (v67==2) then for v110=1 + 0 ,v34() do local v111=0;local v112;while true do if (v111==0) then v112=v32();if (v31(v112,1,1)==0) then local v126=v31(v112,999 -(915 + 82) ,3);local v127=v31(v112,4,6);local v128={v33(),v33(),nil,nil};if (v126==(0 -0)) then v128[3]=v33();v128[4]=v33();elseif (v126==1) then v128[3]=v34();elseif (v126==2) then v128[3]=v34() -(2^16) ;elseif (v126==3) then local v224=0;while true do if (v224==0) then v128[3]=v34() -(2^16) ;v128[4]=v33();break;end end end if (v31(v127,1,1)==(878 -(282 + 595))) then v128[2 + 0 ]=v73[v128[2]];end if (v31(v127,2,2)==(1 -0)) then v128[3]=v73[v128[3]];end if (v31(v127,1640 -(1523 + 114) ,3)==1) then v128[4]=v73[v128[4]];end v68[v110]=v128;end break;end end end for v113=1,v34() do v69[v113-1 ]=v39();end return v71;end if (v67==0) then v68={};v69={};v70={};v71={v68,v69,nil,v70};v67=1;end end end local function v40(v74,v75,v76) local v77=v74[1];local v78=v74[2];local v79=v74[3];return function(...) local v80=v77;local v81=v78;local v82=v79;local v83=v38;local v84=1 + 0 ;local v85= -1;local v86={};local v87={...};local v88=v20("#",...) -1 ;local v89={};local v90={};for v101=0 -0 ,v88 do if (v101>=v82) then v86[v101-v82 ]=v87[v101 + 1 ];else v90[v101]=v87[v101 + 1 ];end end local v91=(v88-v82) + 1 ;local v92;local v93;while true do local v102=0;while true do if (v102==1) then if (v93<=(23 -12)) then if (v93<=5) then if (v93<=2) then if (v93<=0) then local v139=0;local v140;local v141;local v142;local v143;while true do if (v139==4) then v140=0 + 0 ;for v225=v143,v85 do v140=v140 + 1 ;v90[v225]=v141[v140];end v84=v84 + (4 -3) ;v92=v80[v84];v139=5;end if (v139==0) then v140=nil;v141,v142=nil;v143=nil;v90[v92[2]]=v92[3];v139=1;end if (v139==6) then if (v90[v92[793 -(368 + 423) ]]==v92[4]) then v84=v84 + 1 ;else v84=v92[3];end break;end if (v139==2) then v84=v84 + 1 + 0 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + (1066 -(68 + 997)) ;v139=3;end if (1==v139) then v84=v84 + 1 ;v92=v80[v84];v143=v92[2];v90[v143]=v90[v143](v21(v90,v143 + 1 ,v92[3]));v139=2;end if (v139==3) then v92=v80[v84];v143=v92[2];v141,v142=v83(v90[v143](v21(v90,v143 + 1 ,v92[1273 -(226 + 1044) ])));v85=(v142 + v143) -1 ;v139=4;end if (v139==5) then v143=v92[2];v90[v143]=v90[v143](v21(v90,v143 + 1 ,v85));v84=v84 + 1 ;v92=v80[v84];v139=6;end end elseif (v93==1) then v84=v92[3];else v90[v92[6 -4 ]]=v40(v81[v92[3]],nil,v76);end elseif (v93<=3) then local v144=0;local v145;while true do if (v144==0) then v145=v92[2];v90[v145]=v90[v145](v90[v145 + 1 ]);break;end end elseif (v93>4) then if (v90[v92[2]]==v92[121 -(32 + 85) ]) then v84=v84 + 1 ;else v84=v92[3];end else local v166=0;local v167;local v168;while true do if (0==v166) then v167=v92[2];v168=v90[v167];v166=1;end if (v166==1) then for v247=v167 + (19 -(10 + 8)) ,v85 do v15(v168,v90[v247]);end break;end end end elseif (v93<=8) then if (v93<=6) then local v146=0;local v147;local v148;local v149;local v150;while true do if (v146==1) then v85=(v149 + v147) -1 ;v150=0;v146=2;end if (0==v146) then v147=v92[2 + 0 ];v148,v149=v83(v90[v147](v21(v90,v147 + 1 ,v92[3])));v146=1;end if (v146==2) then for v229=v147,v85 do v150=v150 + 1 ;v90[v229]=v148[v150];end break;end end elseif (v93>7) then local v169=v92[1 + 1 ];v90[v169]=v90[v169](v21(v90,v169 + 1 ,v92[11 -8 ]));else v90[v92[2]]=v92[3];end elseif (v93<=9) then local v151=0;local v152;local v153;local v154;local v155;local v156;while true do if (8==v151) then v156=v92[2];v152=v90[v156];for v232=v156 + 1 ,v85 do v15(v152,v90[v232]);end break;end if (v151==6) then v92=v80[v84];v156=v92[2];v154,v155=v83(v90[v156](v21(v90,v156 + 1 ,v92[3])));v85=(v155 + v156) -1 ;v151=7;end if (v151==4) then v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v151=5;end if (v151==2) then v84=v84 + 1 ;v92=v80[v84];v90[v92[6 -4 ]]=v75[v92[3]];v84=v84 + 1 ;v151=3;end if (v151==5) then v84=v84 + 1 ;v92=v80[v84];for v233=v92[2],v92[3] do v90[v233]=nil;end v84=v84 + 1 ;v151=6;end if (0==v151) then v152=nil;v153=nil;v154,v155=nil;v156=nil;v151=1;end if (v151==7) then v153=0 -0 ;for v235=v156,v85 do local v236=0;while true do if (v236==0) then v153=v153 + 1 ;v90[v235]=v154[v153];break;end end end v84=v84 + 1 ;v92=v80[v84];v151=8;end if (v151==3) then v92=v80[v84];v90[v92[2]]={};v84=v84 + (958 -(892 + 65)) ;v92=v80[v84];v151=4;end if (v151==1) then v90[v92[2]]=v75[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v75[v92[445 -(416 + 26) ]];v151=2;end end elseif (v93==10) then local v173=0;local v174;while true do if (v173==0) then v174=v92[2];do return v21(v90,v174,v85);end break;end end else local v175=0;local v176;local v177;local v178;while true do if (2==v175) then for v248=1,v92[4] do local v249=0;local v250;while true do if (v249==0) then v84=v84 + 1 ;v250=v80[v84];v249=1;end if (v249==1) then if (v250[1 -0 ]==14) then v178[v248-1 ]={v90,v250[3]};else v178[v248-1 ]={v75,v250[3]};end v89[ #v89 + (181 -(67 + 113)) ]=v178;break;end end end v90[v92[2]]=v40(v176,v177,v76);break;end if (v175==1) then v178={};v177=v18({},{[v7("\133\254\210\238\224\116\100","\48\218\161\187\128\132\17\28")]=function(v251,v252) local v253=v178[v252];return v253[1 -0 ][v253[2]];end,[v7("\112\58\83\222\88\12\83\223\74\29","\187\47\101\61")]=function(v254,v255,v256) local v257=0;local v258;while true do if (v257==0) then v258=v178[v255];v258[1][v258[2]]=v256;break;end end end});v175=2;end if (v175==0) then v176=v81[v92[3]];v177=nil;v175=1;end end end elseif (v93<=17) then if (v93<=14) then if (v93<=12) then do return v90[v92[2]]();end elseif (v93==13) then if v90[v92[2]] then v84=v84 + 1 ;else v84=v92[3 + 0 ];end else v90[v92[2]]=v90[v92[3]];end elseif (v93<=15) then for v161=v92[2],v92[3] do v90[v161]=nil;end elseif (v93>16) then do return;end else v90[v92[3 -1 ]]();end elseif (v93<=20) then if (v93<=(456 -(145 + 293))) then v90[v92[2]]=v76[v92[3]];elseif (v93>(449 -(44 + 386))) then v90[v92[4 -2 ]]={};else local v182=0;local v183;while true do if (v182==0) then v183=v92[2];do return v90[v183](v21(v90,v183 + 1 ,v92[1489 -(998 + 488) ]));end break;end end end elseif (v93<=21) then v90[v92[2]]=v90[v92[3]][v92[4]];elseif (v93>22) then local v184=0;local v185;while true do if (0==v184) then v185=v92[2];v90[v185]=v90[v185](v21(v90,v185 + 1 ,v85));break;end end else v90[v92[2 + 0 ]]=v75[v92[3]];end v84=v84 + 1 ;break;end if (v102==0) then v92=v80[v84];v93=v92[2 -1 ];v102=1;end end end end;end return v40(v39(),{},v28)(...);end return v23(v7("\42\21\146\72\98\82\105\143\89\98\86\105\238\95\97\55\106\238\94\97\81\110\233\91\100\95\108\155\95\101\86\105\238\92\97\55\106\238\95\22\80\107\233\93\100\85\108\230\89\97\86\98\237\56\98\86\109\234\95\20\80\31\233\92\100\34\108\236\95\103\81\104\238\90\98\83\105\143\89\98\81\106\232\90\100\87\104\143\95\17\86\106\238\45\97\55\106\238\91\3\87\104\237\56\98\86\106\239\90\3\86\106\236\89\99\83\111\143\89\98\86\104\238\89\96\55\107\236\89\98\86\107\238\89\98\85\105\143\89\98\84\11\239\91\98\86\106\236\89\98\86\110\237\56\98\86\106\232\89\16\86\106\238\90\97\55\106\238\89\99\86\106\238\93\96\55\106\238\89\23\85\11\238\89\98\87\110\143\89\98\86\31\230\56\98\86\106\155\90\3\86\106\238\91\102\55\106\238\89\23\85\11\238\89\98\85\110\143\89\98\86\31\238\89\98\82\106\238\89\97\82\11\238\89\98\37\106\238\89\102\86\106\238\88\102\55\106\238\89\19\86\106\238\93\100\55\106\238\88\99\85\11\238\89\98\87\105\143\89\98\86\107\237\56\98\86\106\234\90\3\86\106\238\91\101\55\106\238\93\98\86\105\238\92\97\55\106\238\90\19\84\111\232\93\96\36\105\159\91\3\86\105\237\56\98\86\104\235\95\102\84\24\238\91\100\55\106\238\47\98\85\28\238\89\99\36\105\143\89\98\84\11\238\91\106\55\106\238\89\107\86\106\238\88\106\55\106\238\89\96\86\106\238\88\100\55\106\238\89\97\86\106\238\88\100\55\106\238\89\102\94\11\238\89\98\83\106\238\89\96\80\11\238\89\98\80\98\143\89\98\86\109\238\89\98\81\108\143\89\98\86\111\238\89\98\81\108\143\89\98\86\110\237\56\98\86\106\239\89\98\84\106\239\92\98\86\106\234\89\98\86\110\238\89\98\87\106\238\88\96\84\11\238\89\98\83\106\238\89\96\80\11\238\89\98\85\106\238\89\103\86\106\238\91\98\86\107\236\91\3\86\106\238\93\98\86\106\237\95\3\86\106\238\91\98\86\106\234\95\3\86\106\238\88\97\55\106\238\89\96\86\106\236\95\96\55\106\238\89\99\86\106\239\94\98\86\106\239\89\98\86\110\238\89\98\82\106\239\90\3\86\106\239\94\98\86\106\239\91\3\86\106\238\44\98\86\106\239\95\3\86\106\239\93\98\86\106\236\95\3\86\106\239\90\98\86\106\239\89\98\86\104\234\56\98\86\106\159\89\98\86\107\235\56\98\86\106\234\89\99\85\11\238\89\99\39\106\238\89\99\84\11\238\89\99\80\106\238\89\99\86\106\238\90\102\55\106\238\89\17\86\106\238\88\98\86\106\239\93\3\86\106\238\40\98\86\106\239\95\3\86\106\239\88\97\55\106\238\89\99\85\11\238\89\98\87\105\143\89\98\86\105\237\56\98\86\106\237\89\19\85\11\238\89\100\37\108\152\95\99\80\110\233\90\101\82\109\236\95\107\80\31\232\94\98\85\98\232\90\3\86\106\232\42\100\32\108\239\95\102\81\105\233\93\101\84\108\231\95\23\80\109\236\81\100\81\108\239\95\22\80\111\237\40\102\94\104\143\94\102\81\106\234\94\100\83\109\234\91\106\84\104\232\81\96\55\109\234\94\98\81\105\237\40\96\55\104\152\94\96\80\107\233\94\96\35\108\233\95\107\81\110\232\81\101\83\108\236\94\103\81\105\232\92\101\84\108\237\95\20\80\31\233\93\100\83\108\155\94\102\84\31\232\90\100\32\108\154\91\20\81\111\232\43\100\35\108\152\94\101\80\99\232\92\100\39\108\231\95\103\80\24\236\56\100\83\108\152\94\101\80\28\233\94\100\32\109\233\95\20\84\11\232\92\100\32\104\152\93\102\80\107\233\91\100\36\108\155\95\103\84\11\233\90\102\34\108\152\95\102\80\111\236\47\101\84\108\235\95\100\81\105\236\47\100\94\108\235\95\99\80\110\233\90\96\32\108\154\95\99\80\99\232\44\96\32\111\237\95\97\81\104\232\80\101\86\109\234\91\20\82\25\232\47\100\87\108\234\95\103\81\104\236\44\100\37\109\235\95\99\84\104\236\56\96\95\104\230\91\107\86\104\232\56\98\86\28\238\90\20\86\107\238\80\97\55\106\238\89\100\86\30\237\56\98\86\106\233\89\98\86\107\237\56\98\86\106\234\89\99\85\11\238\89\98\81\106\238\89\99\86\106\236\56\99\84\106\238\89\99\86\106\238\88\97\55\106\238\88\96\86\109\238\89\98\84\106\238\89\96\82\11\238\89\98\85\106\238\89\99\86\106\238\91\98\86\106\236\91\3\86\106\239\89\98\86\106\239\89\98\86\107\238\89\98\87\106\238\89\102\86\107\237\56\98\86\106\230\89\98\86\107\238\89\96\86\107\235\89\98\86\107\237\56\98\86\106\237\91\3\86\106\239\88\97\55\106\238\89\99\81\11\238\89","\82\102\90\222\105"),v17(),...);
-- WARNING: integrity protected!
--[[

██████╗░███╗░░██╗██╗░░██╗███╗░░░███╗
██╔══██╗████╗░██║██║░░██║████╗░████║
██████╔╝██╔██╗██║███████║██╔████╔██║
██╔═══╝░██║╚████║██╔══██║██║╚██╔╝██║
██║░░░░░██║░╚███║██║░░██║██║░╚═╝░██║
╚═╝░░░░░╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░░░░╚═╝
]]--
