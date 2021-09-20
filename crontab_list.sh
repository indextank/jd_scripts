# Page1
# 每天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
58 23 */1 * * find /scripts/myActions/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
# 取关京东店铺商品
30 11,23 * * * node /scripts/myActions/jd_unsubscribe.js >>/scripts/logs/jd_unsubscribe.log 2>&1

# 收集助力码
30 * * * * sh +x /scripts/myActions/docker/auto_help.sh collect >>/scripts/logs/auto_help_collect.log 2>&1

# 0 0 * * * node /scripts/myActions/jd_car_exchange.js >>/scripts/logs/jd_car_exchange.log 2>&1

0 0 * * * node /scripts/myActions/jd_car_reward.js >>/scripts/logs/jd_car_reward.log 2>&1
# 0 0 * * * node /scripts/myActions/jd_cash_exchange.js >/scripts/logs/jd_cash_exchange.log 2>&1
2 0 * * * node /scripts/myActions/jd_car.js >>/scripts/logs/jd_car.log 2>&1
3 0 * * * node /scripts/myActions/JD_DailyBonus.js >>/scripts/logs/JD_DailyBonus.log 2>&1
4 0 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1            # 3min
7 0 * * * node /scripts/myActions/jd_dpqd.js >>/scripts/logs/jd_dpqd.log 2>&1                        # 1min
8 0 * * * node /scripts/myActions/jd_jddj_bean.js >>/scripts/logs/jd_jddj_bean.log 2>&1              # 1min
10 0 * * * node /scripts/myActions/jd_bean_box.js >>/scripts/logs/jd_bean_box.log 2>&1               # 12s
11 0 * * * node /scripts/myActions/jd_ccSign.js >>/scripts/logs/jd_ccSign.log 2>&1                   # 1min
12 0 * * * node /scripts/myActions/jd_market_lottery.js >>/scripts/logs/jd_market_lottery.log 2>&1   # 15s
13 0 * * * node /scripts/myActions/jd_ms.js >>/scripts/logs/jd_ms.log 2>&1                           # 4min
17 0 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1        # 30s
20 0 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1             # 2min
23 0 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1 # 1min
25 0 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                        # 2min
27 0 * * * node /scripts/myActions/jd_joy_park.js >>/scripts/logs/jd_joy_park.log 2>&1               # 2min
30 0 * * * node /scripts/myActions/jd_joy_park_open.js >>/scripts/logs/jd_joy_park_open.log 2>&1     # 1min
31 0 * * * node /scripts/myActions/jd_joy_park_task.js >>/scripts/logs/jd_joy_park_task.log 2>&1     # 1min
# 32 0 * * * node /scripts/myActions/jd_sendBean.js >>/scripts/logs/jd_sendBean.log 2>&1                # 1min
33 0 * * * node /scripts/myActions/jd_big_winner.js >>/scripts/logs/jd_big_winner.log 2>&1       # 1min
34 0 * * * node /scripts/myActions/jd_daily_lottery.js >>/scripts/logs/jd_daily_lottery.log 2>&1 # 8min
42 0 * * * node /scripts/myActions/jd_dj_bean.js >>/scripts/logs/jd_dj_bean.log 2>&1             # 2min
44 0 * * * node /scripts/myActions/jd_foodRunning.js >>/scripts/logs/jd_foodRunning.log 2>&1     # 2min
46 0 * * * node /scripts/myActions/jd_gold_creator.js >>/scripts/logs/jd_gold_creator.log 2>&1   # 2min
48 0 * * * node /scripts/myActions/jd_jxsign.js >>/scripts/logs/jd_jxsign.log 2>&1               # 1min
49 0 * * * node /scripts/myActions/gua_ddworld.js >>/scripts/logs/gua_ddworld.log 2>&1           # 1min
50 0 14-22 9 * node /scripts/myActions/gua_opencard18.js >>/scripts/logs/gua_opencard18.log 2>&1 # 1min 9月14号 ~ 9月22号

# 20 0 * * * node /scripts/myActions/jd_speed_redpocke.js >>/scripts/logs/jd_speed_redpocke.log 2>&1 # 30s
# 18 0 * * * node /scripts/myActions/jd_fcdyj.js >>/scripts/logs/jd_fcdyj.log 2>&1              # 2s   -- 暂停一段时间
# 19 0 * * * node /scripts/myActions/jd_nzmh.js >>/scripts/logs/jd_nzmh.log 2>&1  # 出错
# 50 0 * * * node /scripts/myActions/jd_jddj_getPoints.js >>/scripts/logs/jd_jddj_getPoints.log 2>&1 # 需要登录
# 53 0 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1

0 1 * * * node /scripts/myActions/jd_shop.js >>/scripts/logs/jd_shop.log 2>&1                   # 2s
1 1 * * * node /scripts/myActions/jd_kd.js >>/scripts/logs/jd_kd.log 2>&1                       # 1s
2 1 * * * node /scripts/myActions/jd_sign_graphics.js >>/scripts/logs/jd_sign_graphics.log 2>&1 # 1min
3 1 * * * node /scripts/myActions/jd_redPacket.js >>/scripts/logs/jd_redPacket.log 2>&1         # 1min
4 1 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1
5 1 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1 # 1min
6 1 13-19 9 * node /scripts/myActions/jd_jump.js >>/scripts/logs/jd_jump.log 2>&1             # 1min
# 6 1 * * * node /scripts/myActions/jd_necklace.js >>/scripts/logs/jd_necklace.log 2>&1               # 3min
9 1 * * * node /scripts/myActions/jd_wish.js >/scripts/logs/jd_wish.log 2>&1                   # 3min
10 1 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1       # 10s
11 2 * * * node /scripts/myActions/jd_jin_tie.js >>/scripts/logs/jd_jin_tie.log 2>&1           # 10s
12 2 * * * node /scripts/myActions/jd_plantBean.js >>/scripts/logs/jd_plantBean.log 2>&1       # 13min
25 2 * * * node /scripts/myActions/jd_sgmh.js >>/scripts/logs/jd_sgmh.log 2>&1                 # 4min
29 2 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1       # 2min
31 2 * * * node /scripts/myActions/jd_mohe.js >>/scripts/logs/jd_mohe.log 2>&1                 # 11min ~ 1min
42 2 * * * node /scripts/myActions/jd_ljd.js >>/scripts/logs/jd_ljd.log 2>&1                   # 1min
43 2 * * * node /scripts/myActions/jd_club_lottery.js >>/scripts/logs/jd_club_lottery.log 2>&1 # 4min ~ 1min
47 2 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1                   # 10min ~ 1min
57 2 * * * node /scripts/myActions/jd_health.js >>/scripts/logs/jd_health.log 2>&1             # 30min ~ 4min
30 3 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1 # 1min
31 3 * * * node /scripts/myActions/jd_jdzz.js >>/scripts/logs/jd_jdzz.log 2>&1                 # 2min
33 3 * * * node /scripts/myActions/jd_live.js >>/scripts/logs/jd_live.log 2>&1                 # 1min
34 3 * * * node /scripts/myActions/jd_syj.js >>/scripts/logs/jd_syj.log 2>&1                   # 1min
35 3 * * * node /scripts/myActions/jd_tyt.js >>/scripts/logs/jd_tyt.log 2>&1                   # 1min
36 3 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1       # 2min
38 3 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1     # 3min
41 3 * * * node /scripts/myActions/jd_wxFans.js >/scripts/logs/jd_wxFans.log 2>&1              # 2min
43 3 * * * node /scripts/myActions/jd_jxg.js >>/scripts/logs/jd_jxg.log 2>&1                   # 2min
44 3 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1   # 24s
45 3 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1                   # 10min ~ 1min
46 3 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1       # 10s

21 4 * * * node /scripts/myActions/jd_speed_sign.js >>/scripts/logs/jd_speed_sign.log 2>&1          # time long ~ 7730s
46 5 * * * node /scripts/myActions/jd_goodMorning.js >>/scripts/logs/jd_goodMorning.log 2>&1        # 1min
47 5 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1       # 1min
48 5 * * * node /scripts/myActions/jd_joy_run.js >>/scripts/logs/jd_joy_run.log 2>&1                # 1min
49 5 * * * node /scripts/myActions/jd_dwapp.js >>/scripts/logs/jd_dwapp.log 2>&1                    # 1min
50 5 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                       # 2min
52 5 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1            # 2min
54 5 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1      # 1min
55 5 * * * node /scripts/myActions/jd_xyc.js >>/scripts/logs/jd_xyc.log 2>&1                        # 5min
0 6 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1 # 4min
4 6 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1                     # 6min
10 6 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1       # 1min
11 6 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1                        # 1min
12 6 * * * node /scripts/myActions/jd_cfd_loop.js >/scripts/logs/jd_cfd_loop.log 2>&1               # 28min ~ 40min
51 6 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1                        # 10min ~ 1min
52 6 * * * node /scripts/myActions/jd_small_home.js >>/scripts/logs/jd_small_home.log 2>&1          # 7min
59 6 * * * node /scripts/myActions/jd_syj.js >>/scripts/logs/jd_syj.log 2>&1                        # 1min
0 7 * * * node /scripts/myActions/jd_lsj.js >>/scripts/logs/jd_lsj.log 2>&1
5 7 * * * node /scripts/myActions/gua_MMdou.js >/scripts/logs/gua_MMdou.log 2>&1
7 7 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1    # 14min
21 7 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1 # 2min
23 7 * * * node /scripts/myActions/jd_get_share_code.js >/scripts/logs/jd_get_share_code.log 2>&1
23 7 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1       # 2min
25 7 * * * node /scripts/myActions/jd_ddly.js >>/scripts/logs/jd_ddly.log 2>&1                 # 1 min
26 7 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1 # 1min
27 7 * * * node /scripts/myActions/jd_connoisseur.js >/scripts/logs/jd_connoisseur.log 2>&1    # 2min
29 7 * * * node /scripts/myActions/jd_star_shop.js >>/scripts/logs/jd_star_shop.log 2>&1       # 3min
32 7 * * * node /scripts/myActions/jd_bean_change.js >>/scripts/logs/jd_bean_change.log 2>&1
33 7 * * * node /scripts/myActions/jd_jddj_plantBeans.js >/scripts/logs/jd_jddj_plantBeans.log 2>&1 # 4min
37 7 * * * node /scripts/myActions/jd_joy_reward.js >/scripts/logs/jd_joy_reward.log 2>&1           # 1-2min
39 7 * * * node /scripts/myActions/jd_unsubscriLive.js >>/scripts/logs/jd_unsubscriLive.log 2>&1    # 3min
42 7 * * * node /scripts/myActions/gua_wealth_island.js >/scripts/logs/gua_wealth_island.log 2>&1   # 7min ~ 12min
52 7 * * * node /scripts/myActions/jd_try.js >/scripts/logs/jd_try.log 2>&1                         # 45min
15 8 * * * node /scripts/myActions/gua_ddgame.js >/scripts/logs/gua_ddgame.log 2>&1                 # 23min
38 8 * * * node /scripts/myActions/jd_joy_steal.js >>/scripts/logs/jd_joy_steal.log 2>&1            # 1min
# 55 7 14-18 9 * node /scripts/myActions/gua_opencard32.js >>/scripts/logs/gua_opencard32.log 2>&1  # 2min 9月14号 ~ 9月18号
# 57 7 15-21 9 * node /scripts/myActions/gua_opencard33.js >>/scripts/logs/gua_opencard33.log 2>&1  # 2min 9月15号 ~ 9月21号
# 17 7,21 1-21 9 * node /scripts/myActions/gua_opencard20.js >/scripts/logs/gua_opencard20.log 2>&1 # 1min 9月1号 ~ 9月21号
# 23 19 * 9 * node /scripts/myActions/gua_opencard24.js >>/scripts/logs/gua_opencard24.log 2>&1    # 1min 9月6号 ~ 9月30号
# 46 19 8-30 9 * node /scripts/myActions/gua_opencard25.js >>/scripts/logs/gua_opencard25.log 2>&1    # 5min 9月8号 ~ 9月30号
# 36 7 * 9,10 * node /scripts/myActions/gua_opencard26.js >>/scripts/logs/gua_opencard26.log 2>&1     # 2min 9月8号 ~ 10月8号
# 46 3 12-21 9 * node /scripts/myActions/gua_opencard29.js >>/scripts/logs/gua_opencard29.log 2>&1    # 5min 9月12号 ~ 9月21号
# 45 3 13-27 9 * node /scripts/myActions/gua_opencard30.js >>/scripts/logs/gua_opencard30.log 2>&1    # 6min 9月13号 ~ 9月27号
# 51 3 13-23 9 * node /scripts/myActions/gua_opencard31.js >>/scripts/logs/gua_opencard31.log 2>&1    # 3min 9月13号 ~ 9月23号
# 54 3 * 9,10 * node /scripts/myActions/gua_UnknownTask4.js >>/scripts/logs/gua_UnknownTask4.log 2>&1 # 9min 9月
# 3 4 13-23 9 * node /scripts/myActions/gua_UnknownTask5.js >>/scripts/logs/gua_UnknownTask5.log 2>&1 # 12min 9月13号 ~ 9月23号

22 10 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1        # 1min
23 10 * * * node /scripts/myActions/jd_mohe.js >>/scripts/logs/jd_mohe.log 2>&1                       # 11min ~ 1min
24 10 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1         # 24s
25 10 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1                         # 10min ~ 1min
27 10 * * * node /scripts/myActions/jd_health.js >>/scripts/logs/jd_health.log 2>&1                   # 30min ~ 4min
31 10 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1 # 1min
32 10 * * * node /scripts/myActions/jd_wxj.js >>/scripts/logs/jd_wxj.log 2>&1                         # 1min
34 10 * * * node /scripts/myActions/jd_jddj_bean.js >>/scripts/logs/jd_jddj_bean.log 2>&1             # 2min
36 10 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1           # 3min
39 10 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1                     # 6min
45 10 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                        # 2min
47 10 * * * node /scripts/myActions/jd_jxnc.js >>/scripts/logs/jd_jxnc.log 2>&1                       # 2min
49 10 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1             # 2min
51 10 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1                         # 1min
52 10 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1             # 10s
53 10 * * * node /scripts/myActions/jd_qycl.js >>/scripts/logs/jd_qycl.log 2>&1                       # 17min
10 11 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1        # 1min
12 11 * * * node /scripts/myActions/jd_djjl2.js >>/scripts/logs/jd_djjl2.log 2>&1                     # 1min
14 11 * * * node /scripts/myActions/jx_sign.js >>/scripts/logs/jx_sign.log 2>&1                       # 1min
15 11 * * * node /scripts/myActions/jd_pigPet.js >>/scripts/logs/jd_pigPet.log 2>&1                   # 5min
20 11 * * * node /scripts/myActions/jd_cfd_loop.js >/scripts/logs/jd_cfd_loop.log 2>&1                # 28min ~ 40min
44 11 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1                         # 10min ~ 1min
45 11 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1       # 1min
46 11 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1 # 1min
47 11 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1             # 2min
49 11 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1 # 4min
53 11 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                        # 2min
55 11 * * * node /scripts/myActions/jd_bean_home.js >>/scripts/logs/jd_bean_home.log 2>&1             # 8min
3 12 * * * node /scripts/myActions/jd_bean_change1.js >>/scripts/logs/jd_bean_change1.log 2>&1        # 1min
4 12 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1              # 10s
5 12 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1
15 12 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1 # 6min
20 12 * * * node /scripts/myActions/jd_fcdyj.js >>/scripts/logs/jd_fcdyj.log 2>&1
27 12 * * * node /scripts/myActions/jd_jxnc.js >>/scripts/logs/jd_jxnc.log 2>&1
31 12 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1 # 24s
35 12 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1                 # 1min
39 12 * * * node /scripts/myActions/jd_jxg.js >>/scripts/logs/jd_jxg.log 2>&1
43 12 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1 # 2min
45 12 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1             # 10min ~ 1min
55 12 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

0 13 * * * node /scripts/myActions/jd_daydlt.js >>/scripts/logs/jd_daydlt.log 2>&1
3 13 * * * node /scripts/myActions/jd_market_lottery.js >>/scripts/logs/jd_market_lottery.log 2>&1
5 13 * * * node /scripts/myActions/jd_joy_feedPets.js >>/scripts/logs/jd_joy_feedPets.log 2>&1 # 1min
15 13 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1 # 1min
20 13 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                 # 2min
55 13 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1      # 10s

7 14 * * * node /scripts/myActions/jd_syj.js >>/scripts/logs/jd_syj.log 2>&1
10 14 * * * node /scripts/myActions/jd_jdzz.js >>/scripts/logs/jd_jdzz.log 2>&1
15 14 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1 # 2min
42 14 * * * node /scripts/myActions/jd_cfd_loop.js >/scripts/logs/jd_cfd_loop.log 2>&1    # 28min ~ 40min
45 14 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1             # 10min ~ 1min
40 14 * * * node /scripts/myActions/jd_necklace.js >>/scripts/logs/jd_necklace.log 2>&1   # 3min
47 14 * * * node /scripts/myActions/jd_tyt.js >>/scripts/logs/jd_tyt.log 2>&1
55 14 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1

0 15 * * * node /scripts/myActions/jd_mohe.js >>/scripts/logs/jd_mohe.log 2>&1                       # 11min ~ 1min
5 15 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1 # 4min
10 15 * * * node /scripts/myActions/jd_cash.js >>/scripts/logs/jd_cash.log 2>&1                      # 1min
# 12 15 * * * node /scripts/myActions/jd_jddj_collectWater.js >>/scripts/logs/jd_jddj_collectWater.log 2>&1
11 15 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
20 15 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1     # 1min
40 15 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1          # 2min
42 15 * * * node /scripts/myActions/gua_wealth_island.js >/scripts/logs/gua_wealth_island.log 2>&1 # 12min

0 16 * * * node /scripts/myActions/jd_joy_reward.js >>/scripts/logs/jd_joy_reward.log 2>&1
20 16 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                # 2min
31 16 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1 # 24s
35 16 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1                 # 1min
36 16 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1     # 10s

1 17 * * * node /scripts/myActions/jd_bean_sign.js >>/scripts/logs/jd_bean_sign.log 2>&1 # 4s
5 17 * * * node /scripts/myActions/jd_NewSign.js >>/scripts/logs/jd_NewSign.log 2>&1
10 17 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1      # 2min
12 17 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1 # 1min
15 17 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1
20 17 * * * node /scripts/myActions/jd_DrawEntrance.js >>/scripts/logs/jd_DrawEntrance.log 2>&1
22 17 * * * node /scripts/myActions/jd_club_lottery.js >>/scripts/logs/jd_club_lottery.log 2>&1 # 4min ~ 1min
27 17 * * * node /scripts/myActions/jd_dwapp.js >>/scripts/logs/jd_dwapp.log 2>&1               # 1min
# 28 17 * * * node /scripts/myActions/jd_price.js >>/scripts/logs/jd_price.log 2>&1               # 2min

1 18 * * * node /scripts/myActions/jd_lotteryMachine.js >>/scripts/logs/jd_lotteryMachine.log 2>&1
6 18 * * * node /scripts/myActions/jd_jddj_bean.js >>/scripts/logs/jd_jddj_bean.log 2>&1
15 18 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1
30 18 * * * node /scripts/myActions/jd_jxnc.js >>/scripts/logs/jd_jxnc.log 2>&1
38 18 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1 # 2min
42 18 * * * node /scripts/myActions/jd_cfd_loop.js >/scripts/logs/jd_cfd_loop.log 2>&1    # 28min ~ 40min

0 19 * * * node /scripts/myActions/jd_mdou.js >>/scripts/logs/jd_ljd.log 2>&1             # 1min
1 19 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1              # 10min ~ 1min
4 19 * * * node /scripts/myActions/jd_ms.js >>/scripts/logs/jd_ms.log 2>&1                # 3min
8 19 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1             # 2min
10 19 * * * node /scripts/myActions/jd_plantBean.js >>/scripts/logs/jd_plantBean.log 2>&1 # 13min

2 20 * * * node /scripts/myActions/jd_jddj_fruit.js >>/scripts/logs/jd_jddj_fruit.log 2>&1 # 3min
15 20 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1  # 2min
20 20 * * * node /scripts/myActions/jd_bean_home.js >>/scripts/logs/jd_bean_home.log 2>&1
24 20 * * * node /scripts/myActions/jd_dreamFactory.js >/scripts/logs/jd_dreamFactory.log 2>&1     # 1min
31 20 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1      # 24s
40 20 * * * node /scripts/myActions/gua_wealth_island.js >/scripts/logs/gua_wealth_island.log 2>&1 # 12min
52 20 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1          # 10s

5 21 * * * node /scripts/myActions/jd_flipcards.js >>/scripts/logs/jd_flipcards.log 2>&1             # 1min
6 21 * * * node /scripts/myActions/jd_jddj_plantBeans.js >>/scripts/logs/jd_jddj_plantBeans.log 2>&1 # 4min
11 21 * * * node /scripts/myActions/jd_cfd.js >/scripts/logs/jd_cfd.log 2>&1                         # 7min
18 21 * * * node /scripts/myActions/jd_pet.js >>/scripts/logs/jd_pet.log 2>&1                        # 1min
19 21 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                       # 2min
25 21 * * * node /scripts/myActions/jd_fruit.js >>/scripts/logs/jd_fruit.log 2>&1                    # 6min
26 21 * * * node /scripts/myActions/jd_joy.js >>/scripts/logs/jd_joy.log 2>&1                        # 10min ~ 1min
33 21 * * * node /scripts/myActions/jd_wish.js >/scripts/logs/jd_wish.log 2>&1                       # 7min
35 21 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1            # 2min
37 21 * * * node /scripts/myActions/jd_wxFans.js >/scripts/logs/jd_wxFans.log 2>&1                   #1 min
38 21 * * * node /scripts/myActions/jd_speed_sign.js >>/scripts/logs/jd_speed_sign.log 2>&1          # long time
19 22 * * * node /scripts/myActions/jd_moneyTree.js >>/scripts/logs/jd_moneyTree.log 2>&1            # 10s
20 22 * * * node /scripts/myActions/jd_cfd_loop.js >/scripts/logs/jd_cfd_loop.log 2>&1               # 28min ~ 40min
35 22 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1            # 2min
37 22 3-13 9 * node /scripts/myActions/gua_opencard22.js >>/scripts/logs/gua_opencard22.log 2>&1     # 6min

55 22 * * * node /scripts/myActions/jd_z_health_energy.js >>/scripts/logs/jd_z_health_energy.log 2>&1 # 1min
56 22 9-16 9 * node /scripts/myActions/gua_opencard27.js >>/scripts/logs/gua_opencard27.log 2>&1      # 6min 9月9号 ~ 9月16号

16 23 * * * node /scripts/myActions/jd_speed_redpocke.js >>/scripts/logs/jd_speed_redpocke.log 2>&1
18 23 * * * node /scripts/myActions/gua_wealth_island.js >/scripts/logs/gua_wealth_island.log 2>&1 # 12min
30 23 * * * node /scripts/myActions/jd_jxmc.js >/scripts/logs/jd_jxmc.log 2>&1                     # 2min
32 23 * * * node /scripts/myActions/jd_superMarket.js >>/scripts/logs/jd_superMarket.log 2>&1      # 1min
33 23 * * * node /scripts/myActions/jd_small_home.js >>/scripts/logs/jd_small_home.log 2>&1        # 7min
40 23 * * * node /scripts/myActions/jd_jdfactory.js >>/scripts/logs/jd_jdfactory.log 2>&1          # 2min
42 23 * * * node /scripts/myActions/gua_wealth_island.js >/scripts/logs/gua_wealth_island.log 2>&1 # 12min

59 23 * * * node /scripts/myActions/jd_joy_reward.js >>/scripts/logs/jd_joy_reward.log 2>&1
59 23 * * * node /scripts/myActions/jd_blueCoin.js >>/scripts/logs/jd_blueCoin.log 2>&1

# 汪汪乐园每日任务
#

# 喜马拉雅极速版 (# sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add --no-cache python3 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && pip install requests rsa)
31 */1 * * * python3 /scripts/myActions/xmly_speed.py

# 10 15,16,23 * * * node /scripts/myActions/jd_shake.js >>/scripts/logs/jd_shake.log 2>&1

# 天天提鹅
# 28 0 * * * node /scripts/myActions/jd_daily_egg.js >>/scripts/logs/jd_daily_egg.log 2>&1
# 美丽研究院
# 41 5,12 * * * node /scripts/myActions/jd_beauty.js >>/scripts/logs/jd_beauty.log 2>&1
# 口袋书店
# 34 7,12,19 * * * node /scripts/myActions/jd_bookshop.js >>/scripts/logs/jd_bookshop.log 2>&1

# 京豆*1888
# 13 5 * * * node /scripts/myActions/jd_ddaixiaochu.js >>/scripts/logs/jd_ddaixiaochu.log 2>&1
# 东东电竞经理

# 10 10 * * * node /scripts/myActions/jd_djjl.js >>/scripts/logs/jd_djjl.log 2>&1
# 柠檬大牌闪购红包雨
# 30 20 * * * node /scripts/myActions/jd_dphby.js >>/scripts/logs/jd_dphby.log 2>&1

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
