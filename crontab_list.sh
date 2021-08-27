# Page1
# 每天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
58 23 */1 * * find /scripts/myActions/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
# 取关京东店铺商品
30 11,22 * * * node /scripts/myActions/jd_unsubscribe.js >>/scripts/logs/jd_unsubscribe.log 2>&1

# 收集助力码
30 * * * * sh +x /scripts/myActions/docker/auto_help.sh collect >>/scripts/logs/auto_help_collect.log 2>&1

# 0 0 * * * node /scripts/myActions/jd_blueCoin.js >>/scripts/logs/jd_blueCoin.log 2>&1
# 0 0 * * * node /scripts/myActions/jd_car_exchange.js >>/scripts/logs/jd_car_exchange.log 2>&1
0 0 * * * node /scripts/myActions/jd_car_reward.js >>/scripts/logs/jd_car_reward.log 2>&1
0 0 * * * node /scripts/myActions/jd_car.js >>/scripts/logs/jd_car.log 2>&1
0 0 * * * node /scripts/myActions/jd_cash_exchange.js >>/scripts/logs/jd_cash_exchange.log 2>&1
4 0 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1
7 0 * * * node /scripts/myActions/jd_dpqd.js >>/scripts/logs/jd_dpqd.log 2>&1
8 0 * * * node /scripts/myActions/jd_jddj_bean.js >>/scripts/logs/jd_jddj_bean.log 2>&1
10 0 * * * node /scripts/myActions/jd_bean_box.js >>/scripts/logs/jd_bean_box.log 2>&1
15 0 * * * node /scripts/myActions/jd_ccSign.js >>/scripts/logs/jd_ccSign.log 2>&1
18 0 * * * node /scripts/myActions/jd_market_lottery.js >>/scripts/logs/jd_market_lottery.log 2>&1
20 0 * * * node /scripts/myActions/jd_speed_redpocke.js >>/scripts/logs/jd_speed_redpocke.log 2>&1
25 0 * * * node /scripts/myActions/jd_ms.js >>/scripts/logs/jd_ms.log 2>&1
28 0 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
33 0 * * * node /scripts/myActions/jd_fcdyj.js >>/scripts/logs/jd_fcdyj.log 2>&1
38 0 * * * node /scripts/myActions/jd_speed_sign.js >>/scripts/logs/jd_speed_sign.log 2>&1
41 0 * * * node /scripts/myActions/jd_nzmh.js >>/scripts/logs/jd_nzmh.log 2>&1
44 0 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1
# 48 0 * 8 * node /scripts/myActions/gua_opencard6.js >>/scripts/logs/gua_opencard6.log 2>&1
50 0 * * * node /scripts/myActions/jd_jddj_getPoints.js >>/scripts/logs/jd_jddj_getPoints.log 2>&1
53 0 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
55 0 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1
57 0 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1

2 1 * * * node /scripts/myActions/jd_shop.js >>/scripts/logs/jd_shop.log 2>&1
5 1 * * * node /scripts/myActions/jd_sign_graphics.js >>/scripts/logs/jd_sign_graphics.log 2>&1
7 1 * * * node /scripts/myActions/jd_bean_sign.js >>/scripts/logs/jd_bean_sign.log 2>&1
11 1 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
15 1 * * * node /scripts/myActions/jd_kd.js >>/scripts/logs/jd_kd.log 2>&1
18 1 * * * node /scripts/myActions/jd_redPacket.js >>/scripts/logs/jd_redPacket.log 2>&1
22 1 * * * node /scripts/myActions/jx_sign.js >>/scripts/logs/jx_sign.log 2>&1
25 1 * * * node /scripts/myActions/jd_pigPet.js >>/scripts/logs/jd_pigPet.log 2>&1
28 1 9-28 8 * node /scripts/myActions/jd_carnivalcity.js >>/scripts/logs/jd_carnivalcity.log 2>&1
30 1 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
35 1 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1
40 1 * * * node /scripts/myActions/jd_necklace.js >>/scripts/logs/jd_necklace.log 2>&1
43 1 * * * node /scripts/myActions/jd_kxcdz.js >>/scripts/logs/jd_kxcdz.log 2>&1
47 1 * * * node /scripts/myActions/jd_wish.js >>/scripts/logs/jd_wish.log 2>&1
50 1 * * * node /scripts/myActions/jd_cash.js >>/scripts/logs/jd_cash.log 2>&1
53 1 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
55 1 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1
58 1 * * * node /scripts/myActions/jd_decompression.js >>/scripts/logs/jd_decompression.log 2>&1

1 2 * * * node /scripts/myActions/jd_plantBean.js >>/scripts/logs/jd_plantBean.log 2>&1
5 2 * * * node /scripts/myActions/jd_jin_tie.js >>/scripts/logs/jd_jin_tie.log 2>&1
7 2 * * * node /scripts/myActions/jd_sgmh.js >>/scripts/logs/jd_sgmh.log 2>&1
12 2 * * * node /scripts/myActions/jd_mohe.js >>/scripts/logs/jd_mohe.log 2>&1
20 2 * * * node /scripts/myActions/jd_ljd.js >>/scripts/logs/jd_ljd.log 2>&1
25 2 * * * node /scripts/myActions/jd_flipcards.js >>/scripts/logs/jd_flipcards.log 2>&1
32 2 * * * node /scripts/myActions/jd_club_lottery.js >>/scripts/logs/jd_club_lottery.log 2>&1
45 2 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
49 2 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
55 2 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1

5 3 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1
10 3 * * * node /scripts/myActions/jd_jdzz.js >>/scripts/logs/jd_jdzz.log 2>&1
15 3 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1
25 3 * * * node /scripts/myActions/jd_health_collect.js >>/scripts/logs/jd_health_collect.log 2>&1
33 3 * * * node /scripts/myActions/jd_live.js >>/scripts/logs/jd_live.log 2>&1
37 3 * * * node /scripts/myActions/jd_syj.js >>/scripts/logs/jd_syj.log 2>&1
42 3 * * * node /scripts/myActions/jd_tyt.js >>/scripts/logs/jd_tyt.log 2>&1
53 3 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1

4 4 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1
8 4 * * * node /scripts/myActions/jd_health.js >>/scripts/logs/jd_health.log 2>&1
17 4 * * * node /scripts/myActions/jd_wxFans.js >>/scripts/logs/jd_wxFans.log 2>&1
23 4 * * * node /scripts/myActions/jd_jxg.js >>/scripts/logs/jd_jxg.log 2>&1
31 4 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
45 4 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
55 4 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1

# 3 5 * * * node /scripts/myActions/jd_zqfl.js >>/scripts/logs/jd_zqfl.log 2>&1
0 5 * * * node /scripts/myActions/jd_earn30.js >>/scripts/logs/jd_earn30.log 2>&1
3 5 * * * node /scripts/myActions/jd_goodMorning.js >>/scripts/logs/jd_goodMorning.log 2>&1
5 5 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
9 5 * * * node /scripts/myActions/jd_moneyTree_help.js >>/scripts/logs/jd_moneyTree_help.log 2>&1
12 5 * * * node /scripts/myActions/jd_try2.js >>/scripts/logs/jd_try2.log 2>&1
17 5 * * * node /scripts/myActions/jd_dwapp.js >>/scripts/logs/jd_dwapp.log 2>&1
20 5 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
35 5 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1
43 5 * * * node /scripts/myActions/jd_xyc.js >>/scripts/logs/jd_xyc.log 2>&1
53 5 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1

01 6 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1
07 6 * * * node /scripts/myActions/jd_jxmc1.js >>/scripts/logs/jd_jxmc1.log 2>&1
15 6 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
18 6 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
21 6 * * * node /scripts/myActions/jd_unsubscriLive.js >>/scripts/logs/jd_unsubscriLive.log 2>&1
27 6 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1
31 6 * * * node /scripts/myActions/jd_cfd_loop.js >>/scripts/logs/jd_cfd_loop.log 2>&1
45 6 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
48 6 * * * node /scripts/myActions/jd_small_home.js >>/scripts/logs/jd_small_home.log 2>&1
53 6 * * * node /scripts/myActions/jd_syj.js >>/scripts/logs/jd_syj.log 2>&1
55 6 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

0 7 * * * node /scripts/myActions/jd_lsj.js >>/scripts/logs/jd_lsj.log 2>&1
7 7 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1
23 7 * * * node /scripts/myActions/jd_get_share_code.js >/scripts/logs/jd_get_share_code.log 2>&1
20 7 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
30 7 * * * node /scripts/myActions/jd_ddly.js >>/scripts/logs/jd_ddly.log 2>&1
35 7 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1
43 7 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
55 7 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1

0 8 * * * node /scripts/myActions/jd_joy_reward.js >>/scripts/logs/jd_joy_reward.log 2>&1
5 8 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1
8 8 * * * node /scripts/myActions/jd_bean_change.js >>/scripts/logs/jd_bean_change.log 2>&1
10 8 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
15 8 * * * node /scripts/myActions/jd_mohe.js >>/scripts/logs/jd_mohe.log 2>&1
22 8 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
35 8 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
44 8 * * * node /scripts/myActions/jd_health.js >>/scripts/logs/jd_health.log 2>&1
# 54 8 * 8 * node /scripts/myActions/gua_opencard6.js >>/scripts/logs/gua_opencard6.log 2>&1
57 8 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

3 9 * * * node /scripts/myActions/jd_wxj.js >>/scripts/logs/jd_wxj.log 2>&1
7 9 * * * node /scripts/myActions/jd_jddj_bean.js >>/scripts/logs/jd_jddj_bean.log 2>&1
13 9 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1
15 9 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
20 9 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
30 9 * * * node /scripts/myActions/jd_jxnc.js >>/scripts/logs/jd_jxnc.log 2>&1
38 9 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1
48 9 13-25 8 * node /scripts/myActions/jd_xl.js >>/scripts/logs/jd_xl.log 2>&1
52 9 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1
# 55 9 18-25 8 * node /scripts/myActions/gua_opencard12.js >>/scripts/logs/gua_opencard12.log 2>&1
57 9 18-26 8 * node /scripts/myActions/gua_opencard13.js >>/scripts/logs/gua_opencard13.log 2>&1
59 9 18-31 8 * node /scripts/myActions/gua_opencard14.js >>/scripts/logs/gua_opencard14.log 2>&1

5 10 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
27 10 * * * node /scripts/myActions/jd_pigPet.js >>/scripts/logs/jd_pigPet.log 2>&1
10 10 * * * node /scripts/myActions/jd_djjl2.js >>/scripts/logs/jd_djjl2.log 2>&1
22 10 * * * node /scripts/myActions/jx_sign.js >>/scripts/logs/jx_sign.log 2>&1
42 10 * * * node /scripts/myActions/jd_cfd_loop.js >>/scripts/logs/jd_cfd_loop.log 2>&1
45 10 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
35 10 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1
51 10 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

5 11 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1
13 11 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
20 11 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
55 11 * * * node /scripts/myActions/jd_bean_change1.js >>/scripts/logs/jd_bean_change1.log 2>&1
20 11 * * * node /scripts/myActions/jd_bean_home.js >>/scripts/logs/jd_bean_home.log 2>&1
55 11 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1

5 12 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1
15 12 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
20 12 * * * node /scripts/myActions/jd_fcdyj.js >>/scripts/logs/jd_fcdyj.log 2>&1
27 12 * * * node /scripts/myActions/jd_jxnc.js >>/scripts/logs/jd_jxnc.log 2>&1
31 12 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
35 12 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1
39 12 * * * node /scripts/myActions/jd_jxg.js >>/scripts/logs/jd_jxg.log 2>&1
45 12 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
55 12 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

0 13 * * * node /scripts/myActions/jd_daydlt.js >>/scripts/logs/jd_daydlt.log 2>&1
3 13 * * * node /scripts/myActions/jd_market_lottery.js >>/scripts/logs/jd_market_lottery.log 2>&1
5 13 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1
15 13 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
20 13 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
55 13 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1

7 14 * * * node /scripts/myActions/jd_syj.js >>/scripts/logs/jd_syj.log 2>&1
10 14 * * * node /scripts/myActions/jd_jdzz.js >>/scripts/logs/jd_jdzz.log 2>&1
42 14 * * * node /scripts/myActions/jd_cfd_loop.js >>/scripts/logs/jd_cfd_loop.log 2>&1
45 14 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
40 14 * * * node /scripts/myActions/jd_necklace.js >>/scripts/logs/jd_necklace.log 2>&1
47 14 * * * node /scripts/myActions/jd_tyt.js >>/scripts/logs/jd_tyt.log 2>&1
55 14 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

0 15 * * * node /scripts/myActions/jd_mohe.js >>/scripts/logs/jd_mohe.log 2>&1
5 15 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1
12 15 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
20 15 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
26 15 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1
15 15 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
10 15 * * * node /scripts/myActions/jd_cash.js >>/scripts/logs/jd_cash.log 2>&1

31 16 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
35 16 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1
20 16 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
0 16 * * * node /scripts/myActions/jd_joy_reward.js >>/scripts/logs/jd_joy_reward.log 2>&1
55 16 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1
45 16 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

5 17 * * * node /scripts/myActions/jd_NewSign.js >>/scripts/logs/jd_NewSign.log 2>&1
7 17 * * * node /scripts/myActions/jd_bean_sign.js >>/scripts/logs/jd_bean_sign.log 2>&1
11 17 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
15 17 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
20 17 * * * node /scripts/myActions/jd_DrawEntrance.js >>/scripts/logs/jd_DrawEntrance.log 2>&1
22 17 * * * node /scripts/myActions/jd_club_lottery.js >>/scripts/logs/jd_club_lottery.log 2>&1
27 17 * * * node /scripts/myActions/jd_dwapp.js >>/scripts/logs/jd_dwapp.log 2>&1

1 18 * * * node /scripts/myActions/jd_lotteryMachine.js >>/scripts/logs/jd_lotteryMachine.log 2>&1
6 18 * * * node /scripts/myActions/jd_jddj_bean.js >>/scripts/logs/jd_jddj_bean.log 2>&1
15 18 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1
30 18 * * * node /scripts/myActions/jd_jxnc.js >>/scripts/logs/jd_jxnc.log 2>&1
25 18 * * * node /scripts/myActions/jd_speed_sign.js >>/scripts/logs/jd_speed_sign.log 2>&1
42 18 * * * node /scripts/myActions/jd_cfd_loop.js >>/scripts/logs/jd_cfd_loop.log 2>&1

0 19 * * * node /scripts/myActions/jd_mdou.js >>/scripts/logs/jd_ljd.log 2>&1
5 19 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
15 19 * * * node /scripts/myActions/jd_ms.js >>/scripts/logs/jd_ms.log 2>&1
19 19 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
25 19 * * * node /scripts/myActions/jd_health_collect.js >>/scripts/logs/jd_health_collect.log 2>&1
37 19 * * * node /scripts/myActions/jd_plantBean.js >>/scripts/logs/jd_plantBean.log 2>&1
40 19 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
51 19 13-25 8 * node /scripts/myActions/jd_xl.js >>/scripts/logs/jd_xl.log 2>&1
55 19 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

2 20 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1
7 20 * * * node /scripts/myActions/jd_jxmc1.js >>/scripts/logs/jd_jxmc1.log 2>&1
13 20 9-28 8 * node /scripts/myActions/jd_carnivalcity.js >>/scripts/logs/jd_carnivalcity.log 2>&1
20 20 * * * node /scripts/myActions/jd_bean_home.js >>/scripts/logs/jd_bean_home.log 2>&1
24 20 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
31 20 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
55 20 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1

5 21 * * * node /scripts/myActions/jd_flipcards.js >>/scripts/logs/jd_flipcards.log 2>&1
15 21 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1
18 21 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1
35 21 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1
20 21 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
15 21 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
45 21 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1
49 21 * * * node /scripts/myActions/jd_wish.js >>/scripts/logs/jd_wish.log 2>&1
55 21 18-25 8 * node /scripts/myActions/gua_opencard12.js >>/scripts/logs/gua_opencard12.log 2>&1
# 57 21 18-26 8 * node /scripts/myActions/gua_opencard13.js >>/scripts/logs/gua_opencard13.log 2>&1
59 21 18-31 8 * node /scripts/myActions/gua_opencard14.js >>/scripts/logs/gua_opencard14.log 2>&1

07 22 * * * node /scripts/myActions/jd_jxmc1.js >>/scripts/logs/jd_jxmc1.log 2>&1
14 22 * * * node /scripts/myActions/jd_wxFans.js >>/scripts/logs/jd_wxFans.log 2>&1
19 22 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1
22 22 * * * node /scripts/myActions/jd_cfd_loop.js >>/scripts/logs/jd_cfd_loop.log 2>&1
40 22 * * * node /scripts/myActions/jd_try.js >>/scripts/logs/jd_try.log 2>&1
55 22 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

3 23 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
20 23 * * * node /scripts/myActions/jd_jxmc.js >>/scripts/logs/jd_jxmc.log 2>&1
14 23 * * * node /scripts/myActions/jd_speed_redpocke.js >>/scripts/logs/jd_speed_redpocke.log 2>&1
31 23 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1
46 23 * * * node /scripts/myActions/jd_small_home.js >>/scripts/logs/jd_small_home.log 2>&1
59 23 * * * node /scripts/myActions/jd_joy_reward.js >>/scripts/logs/jd_joy_reward.log 2>&1

# 宠汪汪喂食

# 宠汪汪邀请助力
# 10 13-20/1 * * * node /scripts/myActions/jd_joy_run.js >>/scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪偷狗粮🐕
# 10 1-23/3 * * * node /scripts/myActions/jd_joy_steal.js >>/scripts/logs/jd_joy_steal.log 2>&1

# 汪汪乐园养joy
# 20 0-23/3 * * * node /scripts/myActions/jd_joy_park.js >>/scripts/logs/jd_joy_park.log 2>&1
# 汪汪乐园开工位
# 50 7 * * * node /scripts/myActions/jd_joy_park_open.js >>/scripts/logs/jd_joy_park_open.log 2>&1
# 汪汪乐园每日任务
# 40 9 * * * node /scripts/myActions/jd_joy_park_task.js >>/scripts/logs/jd_joy_park_task.log 2>&1

# 喜马拉雅极速版 (# sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add --no-cache python3 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && pip install requests rsa)
31 */1 * * * python3 /scripts/myActions/xmly_speed.py

# 领现金兑换红包

# 摇京豆

# 10 15,16,23 * * * node /scripts/myActions/jd_shake.js >>/scripts/logs/jd_shake.log 2>&1

# MM领京豆 - 入口：首页-领京豆-升级赚京豆

# 1 0 * * * node /scripts/myActions/gua_MMdou.js >>/scripts/logs/gua_MMdou.log 2>&1

# 领金贴

# 跳跳乐瓜分京豆
# 15 0,12,22 * * * node /scripts/myActions/jd_jump.js >>/scripts/logs/jd_jump.log 2>&1
# 天天提鹅
# 28 0 * * * node /scripts/myActions/jd_daily_egg.js >>/scripts/logs/jd_daily_egg.log 2>&1
# 美丽研究院
# 41 5,12 * * * node /scripts/myActions/jd_beauty.js >>/scripts/logs/jd_beauty.log 2>&1
# 省钱大赢家之翻翻乐
# 25 0-23/2 * 6 * node /scripts/myActions/jd_big_winner.js >>/scripts/logs/jd_big_winner.log 2>&1
# 口袋书店
# 34 7,12,19 * * * node /scripts/myActions/jd_bookshop.js >>/scripts/logs/jd_bookshop.log 2>&1
# 每日抽奖(活动时间：2021-05-01至2021-05-31)
# 13 1,22 * * * node /scripts/myActions/jd_daily_lottery.js >>/scripts/logs/jd_daily_lottery.log 2>&1
# 京豆*1888
# 13 5 * * * node /scripts/myActions/jd_ddaixiaochu.js >>/scripts/logs/jd_ddaixiaochu.log 2>&1
# 东东电竞经理

# 10 10 * * * node /scripts/myActions/jd_djjl.js >>/scripts/logs/jd_djjl.log 2>&1
# 柠檬大牌闪购红包雨
# 30 20 * * * node /scripts/myActions/jd_dphby.js >>/scripts/logs/jd_dphby.log 2>&1
# 金榜创造营 活动时间：2021-05-21至2021-12-31
# 0 1,22 * * * node /scripts/myActions/jd_gold_creator.js >>/scripts/logs/jd_gold_creator.log 2>&1
# 早起福利

# 京东健康社区

# 京东健康社区收集健康能量

# 京东众筹 - 抽奖红包在我的钱包查看
# 40 10 * * * node /scripts/myActions/jd_hwsx.js >>/scripts/logs/jd_hwsx.log 2>&1
# 微信小程序京东赚赚

# 京东快递签到

# 超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
# 1,31 0-23/1 * * * node /scripts/myActions/jd_live_redrain.js >>/scripts/logs/jd_live_redrain.log 2>&1
# 京东直播

# 京东抽奖机

# 幸运大转盘

# 京东零食街 - 入口 京东 频道 美食馆 / 零食街自动兑换变量

# 新潮品牌狂欢
# 30 1,8 1-18 6 * node /scripts/myActions/jd_mcxhd_brandcity.js >>/scripts/logs/jd_mcxhd_brandcity.log 2>&1
# 京东秒秒币

# 5G超级盲盒(活动时间：2021-06-2到2021-07-31)

# 0 0-23/4 * * * node /scripts/myActions/jd_super5g.js >>/scripts/logs/jd_super5g.log 2>&1
# 女装盲盒

# 京东金融养猪猪

# 泡泡大战
# 30 0 1-6 6 * node /scripts/myActions/jd_ppdz.js >>/scripts/logs/jd_ppdz.log 2>&1
# 全民抢京豆 - 活动地址: 京东-领京豆-抢京豆 [活动时间：7.2-7.15]
# 0 12 * * * node /scripts/myActions/jd_qjd.js >>/scripts/logs/jd_qjd.log 2>&1
# 京东全民开红包

# 店铺大转盘
# 57 15 * * * node /scripts/myActions/jd_shop_lottery.js >>/scripts/logs/jd_shop_lottery.log 2>&1
# 特物ZX联想
# 30 1,8 * * * node /scripts/myActions/jd_superBrand.js >>/scripts/logs/jd_superBrand.log 2>&1
# 赚京豆 - 活动入口：赚京豆(微信小程序)-赚京豆-签到领京豆

# 30 0 * * * node /scripts/myActions/jd_wishingPool.js >>/scripts/logs/jd_wishingPool.log 2>&1

# 省钱大赢家之翻翻乐

# 23 0 * * * node /scripts/myActions/jd_yili_cow.js >>/scripts/logs/jd_yili_cow.log 2>&1
# 25,31 5 * * * node /scripts/myActions/jd_productZ4Brand.js >>/scripts/logs/jd_productZ4Brand.log 2>&1

# 7月粉丝互动

# 奥运夺金牌开卡
# 25 0,21 * * * node /scripts/myActions/gua_olympic_opencard.js >>/scripts/logs/gua_olympic_opencard.log 2>&1

# 活动入口： 京东极速版-我的-发财大赢家
# 3 5-23/3 * * * node /scripts/myActions/jd_fcdyj.js >>/scripts/logs/jd_fcdyj.log 2>&1

# 8.4-8.15 七夕情报局
# 36 0,10,21 4-15 8 * node /scripts/myActions/gua_doge.js >>/scripts/logs/gua_doge.log 2>&1

# 柠檬推一推

# 我的-赚30

# 京东手机狂欢城

#七夕告白季-开卡 [gua_opencard6.js]

# 金机奖投票
# 23 10 * * * node /scripts/myActions/jd_update_goldPhone.js >>/scripts/logs/jd_update_goldPhone.log 2>&1

# 荣耀焕新季
# 0 1 * * * node /scripts/myActions/jd_ryhxj.js >>/scripts/logs/jd_ryhxj.log 2>&1
# 来电好物季
# 10 1 * * * node /scripts/myActions/jd_ldhwj.js >>/scripts/logs/jd_ldhwj.log 2>&1

# 入口 京东APP >> 玩一玩 >> 汽车生活节#8.12-8.20 汽车生活节
# 30 9,21 12-20 8 * node /scripts/myActions/jd_qcshj.js >>/scripts/logs/jd_qcshj.log 2>&1

# 送豆得豆
# 45 0,8 * * * node /scripts/myActions/jd_sddd.js >>/scripts/logs/jd_sddd.log 2>&1

#8.13-8.25 骁龙品牌日

# 活动路径  首页搜索 金机馆
# 33 3,6 8-20 8 * node /scripts/myActions/jd_golden_machine.js >>/scripts/logs/jd_golden_machine.log 2>&1

# 京东工业品抽奖
# 10 5 17,31 8 * node /scripts/myActions/jd_industryLottery.js >>/scripts/logs/jd_industryLottery.log 2>&1

# 开学充电站

# 取关主播

# 健康社区-收能量

# 入口：首页-生活·缴费-积分换话费

# 入口 极速版 赚金币 种水果 - 柠檬我是大老板农场
# 3 0-23/6 * * * node /scripts/myActions/jd_wsdlb.js >>/scripts/logs/jd_wsdlb.log 2>&1
