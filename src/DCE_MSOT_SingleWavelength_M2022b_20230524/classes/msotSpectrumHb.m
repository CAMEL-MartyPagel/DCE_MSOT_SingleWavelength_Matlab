classdef msotSpectrumHb < msotSpectrum,

    properties (SetAccess = private),
       wavelengths@uint16 vector = uint16([          660
         661
         662
         663
         664
         665
         666
         667
         668
         669
         670
         671
         672
         673
         674
         675
         676
         677
         678
         679
         680
         681
         682
         683
         684
         685
         686
         687
         688
         689
         690
         691
         692
         693
         694
         695
         696
         697
         698
         699
         700
         701
         702
         703
         704
         705
         706
         707
         708
         709
         710
         711
         712
         713
         714
         715
         716
         717
         718
         719
         720
         721
         722
         723
         724
         725
         726
         727
         728
         729
         730
         731
         732
         733
         734
         735
         736
         737
         738
         739
         740
         741
         742
         743
         744
         745
         746
         747
         748
         749
         750
         751
         752
         753
         754
         755
         756
         757
         758
         759
         760
         761
         762
         763
         764
         765
         766
         767
         768
         769
         770
         771
         772
         773
         774
         775
         776
         777
         778
         779
         780
         781
         782
         783
         784
         785
         786
         787
         788
         789
         790
         791
         792
         793
         794
         795
         796
         797
         798
         799
         800
         801
         802
         803
         804
         805
         806
         807
         808
         809
         810
         811
         812
         813
         814
         815
         816
         817
         818
         819
         820
         821
         822
         823
         824
         825
         826
         827
         828
         829
         830
         831
         832
         833
         834
         835
         836
         837
         838
         839
         840
         841
         842
         843
         844
         845
         846
         847
         848
         849
         850
         851
         852
         853
         854
         855
         856
         857
         858
         859
         860
         861
         862
         863
         864
         865
         866
         867
         868
         869
         870
         871
         872
         873
         874
         875
         876
         877
         878
         879
         880
         881
         882
         883
         884
         885
         886
         887
         888
         889
         890
         891
         892
         893
         894
         895
         896
         897
         898
         899
         900
         901
         902
         903
         904
         905
         906
         907
         908
         909
         910
         911
         912
         913
         914
         915
         916
         917
         918
         919
         920
         921
         922
         923
         924
         925
         926
         927
         928
         929
         930
         931
         932
         933
         934
         935
         936
         937
         938
         939
         940
         941
         942
         943
         944
         945
         946
         947
         948
         949
         950
         951
         952
         953
         954
         955
         956
         957
         958
         959
         960
         961
         962
         963
         964
         965
         966
         967
         968
         969
         970
         971
         972
         973
         974
         975
         976
         977
         978
         979
         980
         981
         982
         983
         984
         985
         986
         987
         988
         989
         990
         991
         992
         993
         994
         995
         996
         997
         998
         999
        1000
        1001
        1002
        1003
        1004
        1005
        1006
        1007
        1008
        1009
        1010
        1011
        1012
        1013
        1014
        1015
        1016
        1017
        1018
        1019
        1020
        1021
        1022
        1023
        1024
        1025
        1026
        1027
        1028
        1029
        1030
        1031
        1032
        1033
        1034
        1035
        1036
        1037
        1038
        1039
        1040
        1041
        1042
        1043
        1044
        1045
        1046
        1047
        1048
        1049
        1050
        1051
        1052
        1053
        1054
        1055
        1056
        1057
        1058
        1059
        1060
        1061
        1062
        1063
        1064
        1065
        1066
        1067
        1068
        1069
        1070
        1071
        1072
        1073
        1074
        1075
        1076
        1077
        1078
        1079
        1080
        1081
        1082
        1083
        1084
        1085
        1086
        1087
        1088
        1089
        1090
        1091
        1092
        1093
        1094
        1095
        1096
        1097
        1098
        1099
        1100
        1101
        1102
        1103
        1104
        1105
        1106
        1107
        1108
        1109
        1110
        1111
        1112
        1113
        1114
        1115
        1116
        1117
        1118
        1119
        1120
        1121
        1122
        1123
        1124
        1125
        1126
        1127
        1128
        1129
        1130
        1131
        1132
        1133
        1134
        1135
        1136
        1137
        1138
        1139
        1140
        1141
        1142
        1143
        1144
        1145
        1146
        1147
        1148
        1149
        1150
        1151
        1152
        1153
        1154
        1155
        1156
        1157
        1158
        1159
        1160
        1161
        1162
        1163
        1164
        1165
        1166
        1167
        1168
        1169
        1170
        1171
        1172
        1173
        1174
        1175
        1176
        1177
        1178
        1179
        1180
        1181
        1182
        1183
        1184
        1185
        1186
        1187
        1188
        1189
        1190
        1191
        1192
        1193
        1194
        1195
        1196
        1197
        1198
        1199
        1200
        1201
        1202
        1203
        1204
        1205
        1206
        1207
        1208
        1209
        1210
        1211
        1212
        1213
        1214
        1215
        1216
        1217
        1218
        1219
        1220
        1221
        1222
        1223
        1224
        1225
        1226
        1227
        1228
        1229
        1230
        1231
        1232
        1233
        1234
        1235
        1236
        1237
        1238
        1239
        1240
        1241
        1242
        1243
        1244
        1245
        1246
        1247
        1248
        1249
        1250
        1251
        1252
        1253
        1254
        1255
        1256
        1257
        1258
        1259
        1260
        1261
        1262
        1263
        1264
        1265
        1266
        1267
        1268
        1269
        1270
        1271
        1272
        1273
        1274
        1275
        1276
        1277
        1278
        1279
        1280
        1281
        1282
        1283
        1284
        1285
        1286
        1287
        1288
        1289
        1290
        1291
        1292
        1293
        1294
        1295
        1296
        1297
        1298
        1299
        1300]);

data@single vector = single([ 3226.5602
3181.8056
3141.1485
3104.5702
3070.5926
3037.1951
3004.3588
2972.0839
2940.3889
2909.2553
2878.6829
2848.6719
2819.2409
2789.9970
2759.4995
2727.5987
2694.2947
2659.6248
2623.5330
2586.0567
2547.1957
2506.9316
2465.2080
2421.9315
2377.1020
2330.7196
2282.8030
2233.3148
2182.2736
2131.3633
2084.5693
2042.0786
2003.8726
1969.9698
1940.3517
1914.1950
1889.4789
1866.1099
1844.0507
1823.3386
1803.9736
1785.8810
1767.3205
1747.4129
1726.1208
1703.4629
1679.4204
1654.0307
1627.7804
1602.7837
1579.2464
1557.1497
1536.5125
1517.3159
1498.9800
1479.1660
1457.5745
1434.2242
1409.1340
1382.2662
1353.6398
1325.3314
1299.1372
1275.0198
1253.0167
1233.1279
1215.3158
1199.6181
1184.3319
1167.2121
1148.2775
1127.4905
1104.8700
1081.6133
1066.1962
1060.3212
1063.9697
1075.2332
1086.8709
1098.2466
1110.1276
1132.1494
1167.0999
1214.9604
1263.8686
1304.5631
1337.0439
1363.5935
1389.2077
1414.0734
1438.1721
1461.7094
1484.8913
1507.7550
1530.2633
1550.8257
1562.2950
1563.7731
1555.3161
1539.9738
1525.3238
1511.6841
1499.0922
1487.3423
1474.5258
1460.1003
1444.1032
1426.5344
1407.3565
1386.6444
1364.8097
1341.9646
1318.0905
1293.2248
1267.3487
1240.4622
1212.6964
1184.3506
1155.3873
1125.8628
1095.7208
1065.0175
1034.9690
1008.4568
985.5369
966.2280
950.5302
938.4435
929.8555
921.6418
912.3803
902.0523
890.6766
878.2343
864.7443
850.1879
834.5836
818.9607
804.3668
790.7832
778.2100
766.6659
756.1134
746.5899
738.0768
730.5741
723.9694
717.9447
712.4439
707.5232
703.1450
699.3094
696.0352
693.3035
691.1331
689.4679
688.1021
686.9795
686.0814
685.4265
685.0149
684.8278
684.8652
685.0710
685.2581
685.3891
685.5014
685.5575
685.5762
685.5575
685.5014
685.4265
685.3704
685.3517
685.3704
685.4265
685.5014
685.6323
685.7820
685.9691
686.1937
686.4556
686.7175
686.8298
686.7924
686.5866
686.2311
685.7072
685.0336
684.1917
683.2000
682.0400
680.7303
679.2709
677.6431
675.8470
673.9385
672.2546
670.8888
669.8223
669.0739
668.6248
668.4752
668.6436
669.1300
669.9158
671.0197
672.4230
674.1443
676.1463
678.4290
680.9548
683.7613
686.8298
690.1602
693.7338
697.5881
701.7043
705.9141
710.0678
714.2027
718.2815
722.3042
726.3081
730.2560
734.1664
738.0394
741.8563
745.3551
748.4048
751.0429
753.2133
754.9533
756.2631
757.1424
757.5540
757.5540
757.1050
756.2443
755.4772
754.9908
754.7850
754.8785
755.2340
755.8701
756.8056
758.0031
759.4812
761.2587
763.3168
765.4871
767.4891
769.3227
770.9505
772.3725
773.6260
774.6925
775.5719
776.2642
776.7506
776.8816
776.3951
775.3287
773.6635
771.3808
768.5182
765.0381
760.9780
756.3940
751.4920
746.3093
740.8272
735.0645
728.9837
722.6223
715.9615
709.0387
701.9850
694.8377
687.5782
680.2064
672.7224
665.1448
657.4549
649.6715
641.7571
633.6556
625.3858
616.9288
608.2847
599.4722
590.4914
581.3047
571.9497
562.6320
553.5202
544.6329
535.9514
527.4757
519.2245
511.1792
503.3396
495.5188
487.3425
478.7920
469.8672
460.5683
450.9139
440.8853
430.7257
421.0338
411.8472
403.1844
395.0455
387.4117
380.2832
373.5475
366.7558
359.8517
352.8354
345.7256
338.4848
331.1317
323.6664
316.2946
309.2222
302.4678
296.0315
289.9133
284.0945
278.5937
273.0929
267.0495
260.4449
253.2976
245.5703
237.3005
228.9744
221.5278
214.9793
209.3288
204.5952
200.5164
196.8305
193.5001
190.5252
187.9244
185.6792
183.8082
182.2927
180.9082
179.5423
178.2139
176.9416
175.6880
174.4532
173.2744
172.1331
171.0105
169.9253
168.8588
167.7736
166.6697
165.5659
164.4245
163.2645
162.1045
160.9070
159.7096
158.4934
157.2586
155.9863
154.7140
153.4230
152.1133
150.8036
149.4564
148.0906
146.7061
145.3215
143.8995
142.4776
141.0369
139.5962
138.2117
136.8271
135.4800
134.1516
132.8606
131.5883
130.3347
129.1185
127.9211
126.7611
125.6010
124.4597
123.3558
122.2519
121.1480
120.0816
119.0151
117.9673
116.9383
115.9279
114.9363
113.9633
113.0278
112.1672
111.3252
110.5394
109.8097
109.1174
108.4813
107.8826
107.3212
106.7974
106.2922
105.8244
105.3941
105.0012
104.6270
104.2902
103.9721
103.6915
103.4295
103.1863
102.9618
102.7747
102.5876
102.4379
102.1385
101.6895
101.0721
100.3050
99.3694
98.2843
97.0494
95.8332
94.7106
93.6816
92.7461
91.8854
91.1370
90.4634
89.8834
89.3782
88.9479
88.5363
88.1434
87.7879
87.4324
87.1143
86.8150
86.5530
86.2911
86.0291
85.7111
85.2994
84.8130
84.2517
83.5968
82.8671
82.0626
81.2581
80.5096
79.8361
79.2374
78.7135
78.2457
77.8528
77.5347
77.2915
77.1231
77.0296
77.0483
77.1418
77.3289
77.5909
77.9464
78.3767
78.6948
78.9380
79.0877
79.1438
79.1064
79.0128
78.9754
79.0315
79.1812
79.3870
79.6864
80.0793
80.5471
81.0522
81.5387
82.0439
82.5116
82.9981
83.4658
83.9149
84.3639
84.8130
85.2433
85.6736
86.0478
86.3846
86.6653
86.9272
87.1330
87.2827
87.3950
87.4698
87.4885
87.4698
87.3763
87.2266
87.0021
86.7401
86.4033
86.0104
85.5614
85.0562
84.4949
83.8775
83.2039
82.4929
81.7071
80.8838
80.0045
79.0690
78.0773
77.0296
75.9257
74.7469
73.5308
72.2398
71.0236
69.9010
68.8532
67.9177
67.0758
66.3087
65.6538
64.9990
64.3254
63.6144
62.8847
62.1176
61.3131
60.4898
59.6666
58.8995
58.1885
57.4962
56.8601
56.2800
55.7374
55.2323
54.7458
54.2593
53.8103
53.3426
52.9122
52.4819
52.0703
51.6961
51.3593
51.0599
50.8167
50.6109
50.4425
50.3115
50.2180
50.1431
50.0683
49.9934
49.9186
49.8250
49.7502
49.6567
49.5631
49.4508
49.3573
49.2450
49.1328
49.0205
48.8895
48.7586
48.6276
48.4779
48.3282
48.1598
48.0102
47.8231
47.6547
47.4863
47.3553
47.2992
47.2618
47.2992
47.3740
47.5050
47.6734
47.9166
48.1786
48.5153
48.8895
49.3012
49.7128
50.0870
50.4612
50.7980
51.1160
51.4341
51.7148
51.9954
52.2387
52.4819
52.6877
52.8935
53.0993
53.2864
53.4735
53.6419
53.8103
53.9787
54.1284
54.2781
54.4090
54.5587
54.7084
54.8581
55.0078
55.1574
55.3071
55.4568
55.6252
55.7749
55.9245
56.0929
56.2426]); 

       title@char vector = 'Hb';
    end
   
    methods
        function obj = msotSpectrumHb(varargin),
            obj@msotSpectrum(varargin);
        end
    end
end