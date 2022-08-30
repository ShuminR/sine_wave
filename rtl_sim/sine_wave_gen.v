module sine_wave_gen(Clk,data_out);
//declare input and output
    input Clk;
    output [9:0] data_out;
//declare the sine ROM - 30 registers each 8 bit wide.  
    reg [9:0] sine [0:255];
//Internal signals  
    integer i;  
    reg [9:0] data_out; 
//Initialize the sine rom with samples. 
    initial begin
        i = 0;
        sine[	0	]<=127;
		sine[	1	]<=130;
		sine[	2	]<=133;
		sine[	3	]<=136;
		sine[	4	]<=140;
		sine[	5	]<=143;
		sine[	6	]<=146;
		sine[	7	]<=149;
		sine[	8	]<=152;
		sine[	9	]<=155;
		sine[	10	]<=158;
		sine[	11	]<=161;
		sine[	12	]<=164;
		sine[	13	]<=167;
		sine[	14	]<=170;
		sine[	15	]<=173;
		sine[	16	]<=176;
		sine[	17	]<=179;
		sine[	18	]<=182;
		sine[	19	]<=185;
		sine[	20	]<=187;
		sine[	21	]<=190;
		sine[	22	]<=193;
		sine[	23	]<=195;
		sine[	24	]<=198;
		sine[	25	]<=201;
		sine[	26	]<=203;
		sine[	27	]<=206;
		sine[	28	]<=208;
		sine[	29	]<=211;
		sine[	30	]<=213;
		sine[	31	]<=215;
		sine[	32	]<=218;
		sine[	33	]<=220;
		sine[	34	]<=222;
		sine[	35	]<=224;
		sine[	36	]<=226;
		sine[	37	]<=228;
		sine[	38	]<=230;
		sine[	39	]<=232;
		sine[	40	]<=233;
		sine[	41	]<=235;
		sine[	42	]<=237;
		sine[	43	]<=238;
		sine[	44	]<=240;
		sine[	45	]<=241;
		sine[	46	]<=243;
		sine[	47	]<=244;
		sine[	48	]<=245;
		sine[	49	]<=246;
		sine[	50	]<=248;
		sine[	51	]<=249;
		sine[	52	]<=249;
		sine[	53	]<=250;
		sine[	54	]<=251;
		sine[	55	]<=252;
		sine[	56	]<=253;
		sine[	57	]<=253;
		sine[	58	]<=254;
		sine[	59	]<=254;
		sine[	60	]<=254;
		sine[	61	]<=255;
		sine[	62	]<=255;
		sine[	63	]<=255;
		sine[	64	]<=255;
		sine[	65	]<=255;
		sine[	66	]<=255;
		sine[	67	]<=255;
		sine[	68	]<=254;
		sine[	69	]<=254;
		sine[	70	]<=254;
		sine[	71	]<=253;
		sine[	72	]<=253;
		sine[	73	]<=252;
		sine[	74	]<=251;
		sine[	75	]<=250;
		sine[	76	]<=249;
		sine[	77	]<=249;
		sine[	78	]<=248;
		sine[	79	]<=246;
		sine[	80	]<=245;
		sine[	81	]<=244;
		sine[	82	]<=243;
		sine[	83	]<=241;
		sine[	84	]<=240;
		sine[	85	]<=238;
		sine[	86	]<=237;
		sine[	87	]<=235;
		sine[	88	]<=233;
		sine[	89	]<=232;
		sine[	90	]<=230;
		sine[	91	]<=228;
		sine[	92	]<=226;
		sine[	93	]<=224;
		sine[	94	]<=222;
		sine[	95	]<=220;
		sine[	96	]<=218;
		sine[	97	]<=215;
		sine[	98	]<=213;
		sine[	99	]<=211;
		sine[	100	]<=208;
		sine[	101	]<=206;
		sine[	102	]<=203;
		sine[	103	]<=201;
		sine[	104	]<=198;
		sine[	105	]<=195;
		sine[	106	]<=193;
		sine[	107	]<=190;
		sine[	108	]<=187;
		sine[	109	]<=185;
		sine[	110	]<=182;
		sine[	111	]<=179;
		sine[	112	]<=176;
		sine[	113	]<=173;
		sine[	114	]<=170;
		sine[	115	]<=167;
		sine[	116	]<=164;
		sine[	117	]<=161;
		sine[	118	]<=158;
		sine[	119	]<=155;
		sine[	120	]<=152;
		sine[	121	]<=149;
		sine[	122	]<=146;
		sine[	123	]<=143;
		sine[	124	]<=140;
		sine[	125	]<=136;
		sine[	126	]<=133;
		sine[	127	]<=130;
		sine[	128	]<=127;
		sine[	129	]<=124;
		sine[	130	]<=121;
		sine[	131	]<=118;
		sine[	132	]<=114;
		sine[	133	]<=111;
		sine[	134	]<=108;
		sine[	135	]<=105;
		sine[	136	]<=102;
		sine[	137	]<=99;
		sine[	138	]<=96;
		sine[	139	]<=93;
		sine[	140	]<=90;
		sine[	141	]<=87;
		sine[	142	]<=84;
		sine[	143	]<=81;
		sine[	144	]<=78;
		sine[	145	]<=75;
		sine[	146	]<=72;
		sine[	147	]<=69;
		sine[	148	]<=67;
		sine[	149	]<=64;
		sine[	150	]<=61;
		sine[	151	]<=59;
		sine[	152	]<=56;
		sine[	153	]<=53;
		sine[	154	]<=51;
		sine[	155	]<=48;
		sine[	156	]<=46;
		sine[	157	]<=43;
		sine[	158	]<=41;
		sine[	159	]<=39;
		sine[	160	]<=36;
		sine[	161	]<=34;
		sine[	162	]<=32;
		sine[	163	]<=30;
		sine[	164	]<=28;
		sine[	165	]<=26;
		sine[	166	]<=24;
		sine[	167	]<=22;
		sine[	168	]<=21;
		sine[	169	]<=19;
		sine[	170	]<=17;
		sine[	171	]<=16;
		sine[	172	]<=14;
		sine[	173	]<=13;
		sine[	174	]<=11;
		sine[	175	]<=10;
		sine[	176	]<=9;
		sine[	177	]<=8;
		sine[	178	]<=6;
		sine[	179	]<=5;
		sine[	180	]<=5;
		sine[	181	]<=4;
		sine[	182	]<=3;
		sine[	183	]<=2;
		sine[	184	]<=1;
		sine[	185	]<=1;
		sine[	186	]<=0;
		sine[	187	]<=0;
		sine[	188	]<=0;
		sine[	189	]<=0;
		sine[	190	]<=0;
		sine[	191	]<=0;
		sine[	192	]<=0;
		sine[	193	]<=0;
		sine[	194	]<=0;
		sine[	195	]<=0;
		sine[	196	]<=0;
		sine[	197	]<=0;
		sine[	198	]<=0;
		sine[	199	]<=1;
		sine[	200	]<=1;
		sine[	201	]<=2;
		sine[	202	]<=3;
		sine[	203	]<=4;
		sine[	204	]<=5;
		sine[	205	]<=5;
		sine[	206	]<=6;
		sine[	207	]<=8;
		sine[	208	]<=9;
		sine[	209	]<=10;
		sine[	210	]<=11;
		sine[	211	]<=13;
		sine[	212	]<=14;
		sine[	213	]<=16;
		sine[	214	]<=17;
		sine[	215	]<=19;
		sine[	216	]<=21;
		sine[	217	]<=22;
		sine[	218	]<=24;
		sine[	219	]<=26;
		sine[	220	]<=28;
		sine[	221	]<=30;
		sine[	222	]<=32;
		sine[	223	]<=34;
		sine[	224	]<=36;
		sine[	225	]<=39;
		sine[	226	]<=41;
		sine[	227	]<=43;
		sine[	228	]<=46;
		sine[	229	]<=48;
		sine[	230	]<=51;
		sine[	231	]<=53;
		sine[	232	]<=56;
		sine[	233	]<=59;
		sine[	234	]<=61;
		sine[	235	]<=64;
		sine[	236	]<=67;
		sine[	237	]<=69;
		sine[	238	]<=72;
		sine[	239	]<=75;
		sine[	240	]<=78;
		sine[	241	]<=81;
		sine[	242	]<=84;
		sine[	243	]<=87;
		sine[	244	]<=90;
		sine[	245	]<=93;
		sine[	246	]<=96;
		sine[	247	]<=99;
		sine[	248	]<=102;
		sine[	249	]<=105;
		sine[	250	]<=108;
		sine[	251	]<=111;
		sine[	252	]<=114;
		sine[	253	]<=118;
		sine[	254	]<=121;
		sine[	255	]<=124;
    end
    
    //At every rising edge of the clock, output a sine wave sample.
    always@ (posedge(Clk))
    begin
        data_out = sine[i];
        i = i+ 1;
        if(i == 255)
            i = 0;
    end

endmodule
