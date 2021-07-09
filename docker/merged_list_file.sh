# 默认定时任务
52 */1 * * * docker_entrypoint.sh |ts >> /scripts/logs/default_task.log 2>&1
# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs -i rm -rf {}
# 取关京东店铺商品
30 11,23 * * * node /scripts/myActions/jd_unsubscribe.js |ts >>/scripts/logs/jd_unsubscribe.log 2>&1

#收集助力码
30 * * * * sh +x /scripts/myActions/docker/auto_help.sh collect |ts >>/scripts/logs/auto_help_collect.log 2>&1
# 导到所有互助码
23 7 * * * node /scripts/myActions/jd_get_share_code.js >/scripts/logs/jd_get_share_code.log 2>&1

# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/myActions/jd_delCoupon.js |ts >> /scripts/logs/jd_delCoupon.log 2>&1
# 新品试用
0 10 * * * node /scripts/myActions/jd_try.js |ts >>/scripts/logs/jd_try.log 2>&1
# 京东保价
41 0,11 * * * node /scripts/myActions/jd_priceProtect.js |ts >>/scripts/logs/jd_priceProtect.log 2>&1

# 京喜牧场
20 0-23/3 * * * node /scripts/myActions/jd_jxmc.js |ts >>/scripts/logs/jd_jxmc.log 2>&1
# 京喜农场
30 9,12,18 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_jxnc.js |ts >>/scripts/logs/jd_jxnc.log 2>&1
# 财富岛提现
0 0 * * * node /scripts/myActions/jx_cfdtx.js |ts >>/scripts/logs/jx_cfdtx.log 2>&1
# 京喜工厂
50 * * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_dreamFactory.js |ts >>/scripts/logs/jd_dreamFactory.log 2>&1
# 京喜工厂开团
# 20 1,6,22 * * * node /scripts/myActions/jd_dreamFactorytuan.js |ts >>/scripts/logs/jd_dreamFactorytuan.log 2>&1
# 京喜财富岛
5 7,12,18 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_cfd.js |ts >>/scripts/logs/jd_cfd.log 2>&1
# 京喜领88元红包(6.31到期)
30 1,6,12,21 * * * node /scripts/myActions/jd_jxlhb.js |ts >>/scripts/logs/jd_jxlhb.log 2>&1

# 东东乐园
30 7 * * * node /scripts/myActions/jd_ddly.js |ts >>/scripts/logs/jd_ddly.log 2>&1
# 东东农场 - 活动入口：京东APP我的-更多工具-东东农场
15 6-21/3 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_fruit.js |ts >>/scripts/logs/jd_fruit.log 2>&1
# 东东工厂
26 * * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_jdfactory.js |ts >>/scripts/logs/jd_jdfactory.log 2>&1
# 东东萌宠
35 0-21/6 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_pet.js |ts >>/scripts/logs/jd_pet.log 2>&1
# 东东小窝
46 6,23 * * * node /scripts/myActions/jd_small_home.js |ts >>/scripts/logs/jd_small_home.log 2>&1
# 东东超市
31 0,1-23/2 * * * node /scripts/myActions/jd_superMarket.js |ts >>/scripts/logs/jd_superMarket.log 2>&1

# 监控crazyJoy分红
10 12 * * * node /scripts/myActions/jd_crazy_joy_bonus.js |ts >>/scripts/logs/jd_crazy_joy_bonus.log 2>&1
# 挂机领金币/宝箱专用
# 10 1,12 * * * node /scripts/myActions/jd_crazy_joy_coin.js |ts >>/scripts/logs/jd_crazy_joy_coin.log 2>&1
# crazyJoy自动每日任务
30 13 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_crazy_joy.js |ts >>/scripts/logs/jd_crazy_joy.log 2>&1

# 宠汪汪
45 */2,23 * * * node /scripts/myActions/jd_joy.js |ts >>/scripts/logs/jd_joy.log 2>&1
# 宠汪汪积分兑换京豆
0 0-16/8 * * * node /scripts/myActions/jd_joy_reward.js |ts >>/scripts/logs/jd_joy_reward.log 2>&1
# 宠汪汪喂食
35 */1 * * * node /scripts/myActions/jd_joy_feedPets.js |ts >>/scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪邀请助力
10 13-20/1 * * * node /scripts/myActions/jd_joy_run.js |ts >>/scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪偷狗粮🐕
10 0-21/3 * * * node /scripts/myActions/jd_joy_steal.js |ts >>/scripts/logs/jd_joy_steal.log 2>&1

# 汪汪乐园开工位
50 7 * * * node /scripts/myActions/jd_joy_park_open.js |ts >>/scripts/logs/jd_joy_park_open.log 2>&1
# 汪汪乐园每日任务
40 9 * * * node /scripts/myActions/jd_joy_park_task.js |ts >>/scripts/logs/jd_joy_park_task.log 2>&1

#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * node /scripts/myActions/jd_speed_redpocke.js |ts >>/scripts/logs/jd_speed_redpocke.log 2>&1
#京东极速版签到+赚现金任务 - 活动入口：京东极速版app-现金签到
21 1,6 * * * node /scripts/myActions/jd_speed_sign.js |ts >>/scripts/logs/jd_speed_sign.log 2>&1

# 喜马拉雅极速版 (# sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add --no-cache python3 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && pip install requests rsa)
*/31 * * * * python3 /scripts/myActions/xmly_speed.py
# 店铺签到，各类店铺签到，有新的店铺直接添加token即可
1 0 * * * node /scripts/myActions/jd_dpqd.js |ts >>/scripts/logs/jd_dpqd.log 2>&1
# 京豆变动通知【昨日收益】
20 10 * * * node /scripts/myActions/jd_bean_change.js |ts >>/scripts/logs/jd_bean_change.log 2>&1
# 进店领豆
5 0 * * * node /scripts/myActions/jd_shop.js |ts >>/scripts/logs/jd_shop.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * node /scripts/myActions/jd_bean_home.js |ts >>/scripts/logs/jd_bean_home.log 2>&1
# 签到
7 0,7,18 * * * node /scripts/myActions/jd_bean_sign.js >/scripts/logs/jd_bean_sign.log 2>&1
# 京东签到图形验证
0 1 * * * node /scripts/myActions/jd_NewSign.js >/scripts/logs/jd_NewSign.log 2>&1
# 点点券二代目
40 0,7,14,21 * * * node /scripts/myActions/jd_necklace_new.js |ts >>/scripts/logs/jd_necklace_new.log 2>&1
# 京东种豆得豆
10 0-22/1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_plantBean.js |ts >>/scripts/logs/jd_plantBean.log 2>&1
# 东东超市兑换奖品
0 0 * * * node /scripts/myActions/jd_blueCoin.js |ts >>/scripts/logs/jd_blueCoin.log 2>&1
# 签到领现金
10 */4 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_cash.js |ts >>/scripts/logs/jd_cash.log 2>&1
# 摇京豆
10 15,16,23 * * * node /scripts/myActions/jd_club_lottery.js |ts >>/scripts/logs/jd_club_lottery.log 2>&1
# 10 15,16,23 * * * node /scripts/myActions/jd_shake.js |ts >>/scripts/logs/jd_shake.log 2>&1
# 领金贴
5 0 * * * node /scripts/myActions/jd_jin_tie.js |ts >>/scripts/logs/jd_jin_tie.log 2>&1
# 跳跳乐瓜分京豆
15 0,12,22 * * * node /scripts/myActions/jd_jump.js |ts >>/scripts/logs/jd_jump.log 2>&1
# 天天提鹅
28 * * * * node /scripts/myActions/jd_daily_egg.js |ts >>/scripts/logs/jd_daily_egg.log 2>&1
#美丽研究院
41 7,12,19 * * * node /scripts/myActions/jd_beauty.js |ts >>/scripts/logs/jd_beauty.log 2>&1
# 省钱大赢家之翻翻乐
25 0-23/2 * 6 * node /scripts/myActions/jd_big_winner.js |ts >>/scripts/logs/jd_big_winner.log 2>&1
# 口袋书店
34 8,12,18 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_bookshop.js |ts >>/scripts/logs/jd_bookshop.log 2>&1
# 摇钱树
23 */2 * * * node /scripts/myActions/jd_moneyTree.js |ts >>/scripts/logs/jd_moneyTree.log 2>&1
# 闪购盲盒
47 8,22 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_sgmh.js |ts >>/scripts/logs/jd_sgmh.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /scripts/myActions/jd_car.js |ts >>/scripts/logs/jd_car.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /scripts/myActions/jd_car_exchange.js |ts >>/scripts/logs/jd_car_exchange.log 2>&1
# 天天优惠大乐透 - 活动入口：京东app首页-券后9.9-顶部球球
0 16 * * * node /scripts/myActions/jd_daydlt.js |ts >>/scripts/logs/jd_daydlt.log 2>&1
20 16 * * * node /scripts/myActions/jd_DrawEntrance.js |ts >>/scripts/logs/jd_DrawEntrance.log 2>&1
# 每日抽奖(活动时间：2021-05-01至2021-05-31)
13 1,22,23 * * * node /scripts/myActions/jd_daily_lottery.js |ts >>/scripts/logs/jd_daily_lottery.log 2>&1
# 京豆*1888
13 5 * * * node /scripts/myActions/jd_ddaixiaochu.js |ts >>/scripts/logs/jd_ddaixiaochu.log 2>&1
# 东东电竞经理
10 10 * * * node /scripts/myActions/jd_djjl.js |ts >>/scripts/logs/jd_djjl.log 2>&1
# 柠檬大牌闪购红包雨
30 20 * * * node /scripts/myActions/jd_dphby.js |ts >>/scripts/logs/jd_dphby.log 2>&1
# 金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * node /scripts/myActions/jd_gold_creator.js |ts >>/scripts/logs/jd_gold_creator.log 2>&1
# 早起福利
30 6 * * * node /scripts/myActions/jd_goodMorning.js |ts >>/scripts/logs/jd_goodMorning.log 2>&1
# 京东健康社区
14 0-23/4 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_health.js |ts >>/scripts/logs/jd_health.log 2>&1
# 京东健康社区收集健康能量
*/35 5-23/2 * * * node /scripts/myActions/jd_health_collect.js |ts >>/scripts/logs/jd_health_collect.log 2>&1
# 京东众筹 - 抽奖红包在我的钱包查看
40 10 * * * node /scripts/myActions/jd_hwsx.js |ts >>/scripts/logs/jd_hwsx.log 2>&1
# 微信小程序京东赚赚
6 0-5/1,11 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_jdzz.js |ts >>/scripts/logs/jd_jdzz.log 2>&1
# 京东快递签到
47 1 * * * node /scripts/myActions/jd_kd.js |ts >>/scripts/logs/jd_kd.log 2>&1
# 超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
# 1,31 0-23/1 * * * node /scripts/myActions/jd_live_redrain.js |ts >>/scripts/logs/jd_live_redrain.log 2>&1
#京东直播
30-50/5 12,23 * * * node /scripts/myActions/jd_live.js |ts >>/scripts/logs/jd_live.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /scripts/myActions/jd_lotteryMachine.js |ts >>/scripts/logs/jd_lotteryMachine.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/myActions/jd_market_lottery.js |ts >>/scripts/logs/jd_market_lottery.log 2>&1
# 京东零食街 - 入口 京东 频道 美食馆 / 零食街自动兑换变量
0 7 * * * node /scripts/myActions/jd_lsj.js |ts >>/scripts/logs/jd_lsj.log 2>&1
# 新潮品牌狂欢
30 1,8 1-18 6 * node /scripts/myActions/jd_mcxhd_brandcity.js |ts >>/scripts/logs/jd_mcxhd_brandcity.log 2>&1
# 京东秒秒币
10 6,21 * * * node /scripts/myActions/jd_ms.js |ts >>/scripts/logs/jd_ms.log 2>&1
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 0-23/4 * * * node /scripts/myActions/jd_mohe.js |ts >>/scripts/logs/jd_mohe.log 2>&1
# 0 0-23/4 * * * node /scripts/myActions/jd_super5g.js |ts >>/scripts/logs/jd_super5g.log 2>&1
#女装盲盒
35 1,22 * * * node /scripts/myActions/jd_nzmh.js |ts >>/scripts/logs/jd_nzmh.log 2>&1
# 京东金融养猪猪
32 0-23/6 * * * node /scripts/myActions/jd_pigPet.js |ts >>/scripts/logs/jd_pigPet.log 2>&1
# 泡泡大战
30 0 1-6 6 * node /scripts/myActions/jd_ppdz.js |ts >>/scripts/logs/jd_ppdz.log 2>&1
# 全民抢京豆 - 活动地址: 京东-领京豆-抢京豆 [活动时间：7.2-7.15]
0 12 * * * node /scripts/myActions/jd_qjd.js |ts >>/scripts/logs/jd_qjd.log 2>&1
# 京东全民开红包
12 0-23/4 * * * node /scripts/myActions/jd_redPacket.js |ts >>/scripts/logs/jd_redPacket.log 2>&1
# 店铺大转盘
57 15 * * * node /scripts/myActions/jd_shop_lottery.js |ts >>/scripts/logs/jd_shop_lottery.log 2>&1
# 特物ZX联想
30 3 * * * node /scripts/myActions/jd_superBrand.js |ts >>/scripts/logs/jd_superBrand.log 2>&1
# 赚京豆 - 活动入口：赚京豆(微信小程序)-赚京豆-签到领京豆
17 * * * * node /scripts/myActions/jd_syj.js |ts >>/scripts/logs/jd_syj.log 2>&1
# 柠檬省钱大赢家
2 0 * * * node /scripts/myActions/jd_sqdyj.js |ts >>/scripts/logs/jd_sqdyj.log 2>&1
# 全民挖现金
30 9 * * * node /scripts/myActions/jd_wxj.js |ts >>/scripts/logs/jd_wxj.log 2>&1
# 燃动夏季
57 5-23/2 * * * node /scripts/myActions/jd_summer_movement.js |ts >>/scripts/logs/jd_summer_movement.log 2>&1
# 燃动夏季_SH助力
57 5-23/2 * * * node /scripts/myActions/jd_summer_movement_help.js |ts >>/scripts/logs/jd_summer_movement_help.log 2>&1

###################################
###################################
###################################

# #蒙牛有机牧场
# 0 0,1-22/2 1-31 4-7 * node /scripts/myActions/jd_monk_pasture.js |ts >>/scripts/logs/jd_monk_pasture.log 2>&1
# #直播间抽奖(全局)
# 30 0,6,12 * * * node /scripts/myActions/jd_live_lottery_social.js |ts >>/scripts/logs/jd_live_lottery_social.log 2>&1
# #店铺加购有礼
# 15 4 * * * node /scripts/myActions/monk_shop_add_to_car.js |ts >>/scripts/logs/monk_shop_add_to_car.log 2>&1

# # 店铺签到+interCenter渠道店铺签到
# 1 0 * * * node /scripts/myActions/jd_ShopSign.js |ts >>/scripts/logs/jd_ShopSign.log 2>&1
# # 飞利浦电视成长记
# 15 5 * 5,6 * node /scripts/myActions/adolf_flp.js |ts >>/scripts/logs/adolf_flp.log 2>&1
# # 京喜阶梯红包
# 15 1 * 5,6 * node /scripts/myActions/adolf_jxhb.js |ts >>/scripts/logs/adolf_jxhb.log 2>&1
# # 618大势新品赏
# 15 1,12 * 5,6 * node /scripts/myActions/adolf_newInteraction.js |ts >>/scripts/logs/adolf_newInteraction.log 2>&1
# # 赢一加新品手机
# 25 1 * 5,6 * node /scripts/myActions/adolf_oneplus.js |ts >>/scripts/logs/adolf_oneplus.log 2>&1
# # 京东超级盒子
# 15 1,12 * 5,6 * node /scripts/myActions/adolf_superbox.js |ts >>/scripts/logs/adolf_superbox.log 2>&1
# # 京享值pk
# 15 1,12 * 5,6 * node /scripts/myActions/jd_pk.js |ts >>/scripts/logs/jd_pk.log 2>&1

# # 粉丝互动
# 21 20 * * * node /scripts/myActions/jd_fanslove.js |ts >>/scripts/logs/jd_fanslove.log 2>&1
# # 京东特物国创IP
# 0 18,23 * * * node /scripts/myActions/jd_gcip.js |ts >>/scripts/logs/jd_gcip.log 2>&1
# # 京贴小程序
# 10 19 * * * node /scripts/myActions/jd_jintie_wx.js |ts >>/scripts/logs/jd_jintie_wx.log 2>&1
# # joy总动员(手动运行一次即可，430豆)
# 30 1 * * * node /scripts/myActions/jd_joy_zdy.js |ts >>/scripts/logs/jd_joy_zdy.log 2>&1
# # 京小兑
# 1 0 * * * node /scripts/myActions/jd_jxd.js |ts >>/scripts/logs/jd_jxd.log 2>&1

# # 关注有礼
# 15 7 * * * node /scripts/myActions/jd_shop_follow_sku.js |ts >>/scripts/logs/jd_shop_follow_sku.log 2>&1

# # 京喜签到+京东成长分+京东特权值
# 30 0 * * * node /scripts/myActions/jx_sign.js |ts >>/scripts/logs/jx_sign.log 2>&1
# 32 0 * * * node /scripts/myActions/jdczf.js |ts >>/scripts/logs/jdczf.log 2>&1
# 34 0 * * * node /scripts/myActions/jdtqz.js |ts >>/scripts/logs/jdtqz.log 2>&1

# # 618手机狂欢城
# 0 16,22,4,10 * * * node /scripts/myActions/z_carnivalcity.js |ts >>/scripts/logs/z_carnivalcity.log 2>&1
# # 京东保洁消消乐
# 18 3 1-18 6 * node /scripts/myActions/zooBaojiexiaoxiaole.js |ts >>/scripts/logs/zooBaojiexiaoxiaole.log 2>&1
# # 与“粽”不同
# 15 5 1-18 6 * node /scripts/myActions/zooLongzhou.js |ts >>/scripts/logs/zooLongzhou.log 2>&1
# # 整点京豆雨
# 1 0-23/1 * * * node /scripts/myActions/jd_super_redrain.js |ts >>/scripts/logs/jd_super_redrain.log 2>&1
# # 半点京豆雨
# 30 16-23/1 * * * node /scripts/myActions/jd_half_redrain.js |ts >>/scripts/logs/jd_half_redrain.log 2>&1

# # 送豆得豆
# 07 1,11,22 * * * node /scripts/myActions/jd_sendBeans.js |ts >>/scripts/logs/jd_sendBeans.log 2>&1

# ##############短期活动##############
# #金口碑奖投票
# 1 0,8 * * * node /scripts/myActions/jd_mgold.js |ts >>/scripts/logs/jd_mgold.log 2>&1

# #手机狂欢城
# 0 0,12,18,21 * * * node /scripts/myActions/jd_carnivalcity.js |ts >>/scripts/logs/jd_carnivalcity.log 2>&1

# #明星小店(星店长，2021-06-10)
# 0 1,21 * * * node /scripts/myActions/jd_star_shop.js >/scripts/logs/jd_star_shop.log 2>&1

# ##############长期活动##############

# 10,0 0 * * * node /scripts/myActions/jd_blueCoin20.js |ts >>/scripts/logs/jd_blueCoin20.log 2>&1

# # 京东排行榜
# 21 9 * * * node /scripts/myActions/jd_rankingList.js |ts >>/scripts/logs/jd_rankingList.log 2>&1

# #家庭号
# 10 6,7 * * * node /scripts/myActions/jd_family.js |ts >>/scripts/logs/jd_family.log 2>&1

# # 天天加速
# 8 0-23/3 * * * node /scripts/myActions/jd_speed.js |ts >>/scripts/logs/jd_speed.log 2>&1

# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /scripts/logs -name '*.log' | grep -v 'sharecodeCollection' | xargs -i rm -rf {}
# 取关京东店铺商品
30 11,23 * * * node /scripts/myActions/jd_unsubscribe.js |ts >>/scripts/logs/jd_unsubscribe.log 2>&1

#收集助力码
30 * * * * sh +x /scripts/myActions/docker/auto_help.sh collect |ts >>/scripts/logs/auto_help_collect.log 2>&1
# 导到所有互助码
23 7 * * * node /scripts/myActions/jd_get_share_code.js >/scripts/logs/jd_get_share_code.log 2>&1

# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /scripts/myActions/jd_delCoupon.js |ts >> /scripts/logs/jd_delCoupon.log 2>&1
# 新品试用
0 10 * * * node /scripts/myActions/jd_try.js |ts >>/scripts/logs/jd_try.log 2>&1
# 京东保价
41 0,11 * * * node /scripts/myActions/jd_priceProtect.js |ts >>/scripts/logs/jd_priceProtect.log 2>&1

# 京喜牧场
20 0-23/3 * * * node /scripts/myActions/jd_jxmc.js |ts >>/scripts/logs/jd_jxmc.log 2>&1
# 京喜农场
30 9,12,18 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_jxnc.js |ts >>/scripts/logs/jd_jxnc.log 2>&1
# 财富岛提现
0 0 * * * node /scripts/myActions/jx_cfdtx.js |ts >>/scripts/logs/jx_cfdtx.log 2>&1
# 京喜工厂
50 * * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_dreamFactory.js |ts >>/scripts/logs/jd_dreamFactory.log 2>&1
# 京喜工厂开团
# 20 1,6,22 * * * node /scripts/myActions/jd_dreamFactorytuan.js |ts >>/scripts/logs/jd_dreamFactorytuan.log 2>&1
# 京喜财富岛
5 7,12,18 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_cfd.js |ts >>/scripts/logs/jd_cfd.log 2>&1
# 京喜领88元红包(6.31到期)
30 1,6,12,21 * * * node /scripts/myActions/jd_jxlhb.js |ts >>/scripts/logs/jd_jxlhb.log 2>&1

# 东东乐园
30 7 * * * node /scripts/myActions/jd_ddly.js |ts >>/scripts/logs/jd_ddly.log 2>&1
# 东东农场 - 活动入口：京东APP我的-更多工具-东东农场
15 6-21/3 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_fruit.js |ts >>/scripts/logs/jd_fruit.log 2>&1
# 东东工厂
26 * * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_jdfactory.js |ts >>/scripts/logs/jd_jdfactory.log 2>&1
# 东东萌宠
35 0-21/6 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_pet.js |ts >>/scripts/logs/jd_pet.log 2>&1
# 东东小窝
46 6,23 * * * node /scripts/myActions/jd_small_home.js |ts >>/scripts/logs/jd_small_home.log 2>&1
# 东东超市
31 0,1-23/2 * * * node /scripts/myActions/jd_superMarket.js |ts >>/scripts/logs/jd_superMarket.log 2>&1

# 监控crazyJoy分红
10 12 * * * node /scripts/myActions/jd_crazy_joy_bonus.js |ts >>/scripts/logs/jd_crazy_joy_bonus.log 2>&1
# 挂机领金币/宝箱专用
# 10 1,12 * * * node /scripts/myActions/jd_crazy_joy_coin.js |ts >>/scripts/logs/jd_crazy_joy_coin.log 2>&1
# crazyJoy自动每日任务
30 13 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_crazy_joy.js |ts >>/scripts/logs/jd_crazy_joy.log 2>&1

# 宠汪汪
45 */2,23 * * * node /scripts/myActions/jd_joy.js |ts >>/scripts/logs/jd_joy.log 2>&1
# 宠汪汪积分兑换京豆
0 0-16/8 * * * node /scripts/myActions/jd_joy_reward.js |ts >>/scripts/logs/jd_joy_reward.log 2>&1
# 宠汪汪喂食
35 */1 * * * node /scripts/myActions/jd_joy_feedPets.js |ts >>/scripts/logs/jd_joy_feedPets.log 2>&1
# 宠汪汪邀请助力
10 13-20/1 * * * node /scripts/myActions/jd_joy_run.js |ts >>/scripts/logs/jd_joy_run.log 2>&1
# 宠汪汪偷狗粮🐕
10 0-21/3 * * * node /scripts/myActions/jd_joy_steal.js |ts >>/scripts/logs/jd_joy_steal.log 2>&1

# 汪汪乐园开工位
50 7 * * * node /scripts/myActions/jd_joy_park_open.js |ts >>/scripts/logs/jd_joy_park_open.log 2>&1
# 汪汪乐园每日任务
40 9 * * * node /scripts/myActions/jd_joy_park_task.js |ts >>/scripts/logs/jd_joy_park_task.log 2>&1

#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * node /scripts/myActions/jd_speed_redpocke.js |ts >>/scripts/logs/jd_speed_redpocke.log 2>&1
#京东极速版签到+赚现金任务 - 活动入口：京东极速版app-现金签到
21 1,6 * * * node /scripts/myActions/jd_speed_sign.js |ts >>/scripts/logs/jd_speed_sign.log 2>&1

# 喜马拉雅极速版 (# sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk add --no-cache python3 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && pip install requests rsa)
*/31 * * * * python3 /scripts/myActions/xmly_speed.py
# 店铺签到，各类店铺签到，有新的店铺直接添加token即可
1 0 * * * node /scripts/myActions/jd_dpqd.js |ts >>/scripts/logs/jd_dpqd.log 2>&1
# 京豆变动通知【昨日收益】
20 10 * * * node /scripts/myActions/jd_bean_change.js |ts >>/scripts/logs/jd_bean_change.log 2>&1
# 进店领豆
5 0 * * * node /scripts/myActions/jd_shop.js |ts >>/scripts/logs/jd_shop.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * node /scripts/myActions/jd_bean_home.js |ts >>/scripts/logs/jd_bean_home.log 2>&1
# 签到
7 0,7,18 * * * node /scripts/myActions/jd_bean_sign.js >/scripts/logs/jd_bean_sign.log 2>&1
# 京东签到图形验证
0 1 * * * node /scripts/myActions/jd_NewSign.js >/scripts/logs/jd_NewSign.log 2>&1
# 点点券二代目
40 0,7,14,21 * * * node /scripts/myActions/jd_necklace_new.js |ts >>/scripts/logs/jd_necklace_new.log 2>&1
# 京东种豆得豆
10 0-22/1 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_plantBean.js |ts >>/scripts/logs/jd_plantBean.log 2>&1
# 东东超市兑换奖品
0 0 * * * node /scripts/myActions/jd_blueCoin.js |ts >>/scripts/logs/jd_blueCoin.log 2>&1
# 签到领现金
10 */4 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_cash.js |ts >>/scripts/logs/jd_cash.log 2>&1
# 摇京豆
10 15,16,23 * * * node /scripts/myActions/jd_club_lottery.js |ts >>/scripts/logs/jd_club_lottery.log 2>&1
# 10 15,16,23 * * * node /scripts/myActions/jd_shake.js |ts >>/scripts/logs/jd_shake.log 2>&1
# 领金贴
5 0 * * * node /scripts/myActions/jd_jin_tie.js |ts >>/scripts/logs/jd_jin_tie.log 2>&1
# 跳跳乐瓜分京豆
15 0,12,22 * * * node /scripts/myActions/jd_jump.js |ts >>/scripts/logs/jd_jump.log 2>&1
# 天天提鹅
28 * * * * node /scripts/myActions/jd_daily_egg.js |ts >>/scripts/logs/jd_daily_egg.log 2>&1
#美丽研究院
41 7,12,19 * * * node /scripts/myActions/jd_beauty.js |ts >>/scripts/logs/jd_beauty.log 2>&1
# 省钱大赢家之翻翻乐
25 0-23/2 * 6 * node /scripts/myActions/jd_big_winner.js |ts >>/scripts/logs/jd_big_winner.log 2>&1
# 口袋书店
34 8,12,18 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_bookshop.js |ts >>/scripts/logs/jd_bookshop.log 2>&1
# 摇钱树
23 */2 * * * node /scripts/myActions/jd_moneyTree.js |ts >>/scripts/logs/jd_moneyTree.log 2>&1
# 闪购盲盒
47 8,22 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_sgmh.js |ts >>/scripts/logs/jd_sgmh.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /scripts/myActions/jd_car.js |ts >>/scripts/logs/jd_car.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /scripts/myActions/jd_car_exchange.js |ts >>/scripts/logs/jd_car_exchange.log 2>&1
# 天天优惠大乐透 - 活动入口：京东app首页-券后9.9-顶部球球
0 16 * * * node /scripts/myActions/jd_daydlt.js |ts >>/scripts/logs/jd_daydlt.log 2>&1
20 16 * * * node /scripts/myActions/jd_DrawEntrance.js |ts >>/scripts/logs/jd_DrawEntrance.log 2>&1
# 每日抽奖(活动时间：2021-05-01至2021-05-31)
13 1,22,23 * * * node /scripts/myActions/jd_daily_lottery.js |ts >>/scripts/logs/jd_daily_lottery.log 2>&1
# 京豆*1888
13 5 * * * node /scripts/myActions/jd_ddaixiaochu.js |ts >>/scripts/logs/jd_ddaixiaochu.log 2>&1
# 东东电竞经理
10 10 * * * node /scripts/myActions/jd_djjl.js |ts >>/scripts/logs/jd_djjl.log 2>&1
# 柠檬大牌闪购红包雨
30 20 * * * node /scripts/myActions/jd_dphby.js |ts >>/scripts/logs/jd_dphby.log 2>&1
# 金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * node /scripts/myActions/jd_gold_creator.js |ts >>/scripts/logs/jd_gold_creator.log 2>&1
# 早起福利
30 6 * * * node /scripts/myActions/jd_goodMorning.js |ts >>/scripts/logs/jd_goodMorning.log 2>&1
# 京东健康社区
14 0-23/4 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_health.js |ts >>/scripts/logs/jd_health.log 2>&1
# 京东健康社区收集健康能量
*/35 5-23/2 * * * node /scripts/myActions/jd_health_collect.js |ts >>/scripts/logs/jd_health_collect.log 2>&1
# 京东众筹 - 抽奖红包在我的钱包查看
40 10 * * * node /scripts/myActions/jd_hwsx.js |ts >>/scripts/logs/jd_hwsx.log 2>&1
# 微信小程序京东赚赚
6 0-5/1,11 * * * . /scripts/docker/auto_help.sh export > /scripts/logs/auto_help_export.log && node /scripts/myActions/jd_jdzz.js |ts >>/scripts/logs/jd_jdzz.log 2>&1
# 京东快递签到
47 1 * * * node /scripts/myActions/jd_kd.js |ts >>/scripts/logs/jd_kd.log 2>&1
# 超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
# 1,31 0-23/1 * * * node /scripts/myActions/jd_live_redrain.js |ts >>/scripts/logs/jd_live_redrain.log 2>&1
#京东直播
30-50/5 12,23 * * * node /scripts/myActions/jd_live.js |ts >>/scripts/logs/jd_live.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /scripts/myActions/jd_lotteryMachine.js |ts >>/scripts/logs/jd_lotteryMachine.log 2>&1
# 幸运大转盘
10 10,23 * * * node /scripts/myActions/jd_market_lottery.js |ts >>/scripts/logs/jd_market_lottery.log 2>&1
# 京东零食街 - 入口 京东 频道 美食馆 / 零食街自动兑换变量
0 7 * * * node /scripts/myActions/jd_lsj.js |ts >>/scripts/logs/jd_lsj.log 2>&1
# 新潮品牌狂欢
30 1,8 1-18 6 * node /scripts/myActions/jd_mcxhd_brandcity.js |ts >>/scripts/logs/jd_mcxhd_brandcity.log 2>&1
# 京东秒秒币
10 6,21 * * * node /scripts/myActions/jd_ms.js |ts >>/scripts/logs/jd_ms.log 2>&1
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 0-23/4 * * * node /scripts/myActions/jd_mohe.js |ts >>/scripts/logs/jd_mohe.log 2>&1
# 0 0-23/4 * * * node /scripts/myActions/jd_super5g.js |ts >>/scripts/logs/jd_super5g.log 2>&1
#女装盲盒
35 1,22 * * * node /scripts/myActions/jd_nzmh.js |ts >>/scripts/logs/jd_nzmh.log 2>&1
# 京东金融养猪猪
32 0-23/6 * * * node /scripts/myActions/jd_pigPet.js |ts >>/scripts/logs/jd_pigPet.log 2>&1
# 泡泡大战
30 0 1-6 6 * node /scripts/myActions/jd_ppdz.js |ts >>/scripts/logs/jd_ppdz.log 2>&1
# 全民抢京豆 - 活动地址: 京东-领京豆-抢京豆 [活动时间：7.2-7.15]
0 12 * * * node /scripts/myActions/jd_qjd.js |ts >>/scripts/logs/jd_qjd.log 2>&1
# 京东全民开红包
12 0-23/4 * * * node /scripts/myActions/jd_redPacket.js |ts >>/scripts/logs/jd_redPacket.log 2>&1
# 店铺大转盘
57 15 * * * node /scripts/myActions/jd_shop_lottery.js |ts >>/scripts/logs/jd_shop_lottery.log 2>&1
# 特物ZX联想
30 3 * * * node /scripts/myActions/jd_superBrand.js |ts >>/scripts/logs/jd_superBrand.log 2>&1
# 赚京豆 - 活动入口：赚京豆(微信小程序)-赚京豆-签到领京豆
17 * * * * node /scripts/myActions/jd_syj.js |ts >>/scripts/logs/jd_syj.log 2>&1
# 柠檬省钱大赢家
2 0 * * * node /scripts/myActions/jd_sqdyj.js |ts >>/scripts/logs/jd_sqdyj.log 2>&1
# 全民挖现金
30 9 * * * node /scripts/myActions/jd_wxj.js |ts >>/scripts/logs/jd_wxj.log 2>&1
# 燃动夏季
57 5-23/2 * * * node /scripts/myActions/jd_summer_movement.js |ts >>/scripts/logs/jd_summer_movement.log 2>&1
# 燃动夏季_SH助力
57 5-23/2 * * * node /scripts/myActions/jd_summer_movement_help.js |ts >>/scripts/logs/jd_summer_movement_help.log 2>&1

###################################
###################################
###################################

# #蒙牛有机牧场
# 0 0,1-22/2 1-31 4-7 * node /scripts/myActions/jd_monk_pasture.js |ts >>/scripts/logs/jd_monk_pasture.log 2>&1
# #直播间抽奖(全局)
# 30 0,6,12 * * * node /scripts/myActions/jd_live_lottery_social.js |ts >>/scripts/logs/jd_live_lottery_social.log 2>&1
# #店铺加购有礼
# 15 4 * * * node /scripts/myActions/monk_shop_add_to_car.js |ts >>/scripts/logs/monk_shop_add_to_car.log 2>&1

# # 店铺签到+interCenter渠道店铺签到
# 1 0 * * * node /scripts/myActions/jd_ShopSign.js |ts >>/scripts/logs/jd_ShopSign.log 2>&1
# # 飞利浦电视成长记
# 15 5 * 5,6 * node /scripts/myActions/adolf_flp.js |ts >>/scripts/logs/adolf_flp.log 2>&1
# # 京喜阶梯红包
# 15 1 * 5,6 * node /scripts/myActions/adolf_jxhb.js |ts >>/scripts/logs/adolf_jxhb.log 2>&1
# # 618大势新品赏
# 15 1,12 * 5,6 * node /scripts/myActions/adolf_newInteraction.js |ts >>/scripts/logs/adolf_newInteraction.log 2>&1
# # 赢一加新品手机
# 25 1 * 5,6 * node /scripts/myActions/adolf_oneplus.js |ts >>/scripts/logs/adolf_oneplus.log 2>&1
# # 京东超级盒子
# 15 1,12 * 5,6 * node /scripts/myActions/adolf_superbox.js |ts >>/scripts/logs/adolf_superbox.log 2>&1
# # 京享值pk
# 15 1,12 * 5,6 * node /scripts/myActions/jd_pk.js |ts >>/scripts/logs/jd_pk.log 2>&1

# # 粉丝互动
# 21 20 * * * node /scripts/myActions/jd_fanslove.js |ts >>/scripts/logs/jd_fanslove.log 2>&1
# # 京东特物国创IP
# 0 18,23 * * * node /scripts/myActions/jd_gcip.js |ts >>/scripts/logs/jd_gcip.log 2>&1
# # 京贴小程序
# 10 19 * * * node /scripts/myActions/jd_jintie_wx.js |ts >>/scripts/logs/jd_jintie_wx.log 2>&1
# # joy总动员(手动运行一次即可，430豆)
# 30 1 * * * node /scripts/myActions/jd_joy_zdy.js |ts >>/scripts/logs/jd_joy_zdy.log 2>&1
# # 京小兑
# 1 0 * * * node /scripts/myActions/jd_jxd.js |ts >>/scripts/logs/jd_jxd.log 2>&1

# # 关注有礼
# 15 7 * * * node /scripts/myActions/jd_shop_follow_sku.js |ts >>/scripts/logs/jd_shop_follow_sku.log 2>&1

# # 京喜签到+京东成长分+京东特权值
# 30 0 * * * node /scripts/myActions/jx_sign.js |ts >>/scripts/logs/jx_sign.log 2>&1
# 32 0 * * * node /scripts/myActions/jdczf.js |ts >>/scripts/logs/jdczf.log 2>&1
# 34 0 * * * node /scripts/myActions/jdtqz.js |ts >>/scripts/logs/jdtqz.log 2>&1

# # 618手机狂欢城
# 0 16,22,4,10 * * * node /scripts/myActions/z_carnivalcity.js |ts >>/scripts/logs/z_carnivalcity.log 2>&1
# # 京东保洁消消乐
# 18 3 1-18 6 * node /scripts/myActions/zooBaojiexiaoxiaole.js |ts >>/scripts/logs/zooBaojiexiaoxiaole.log 2>&1
# # 与“粽”不同
# 15 5 1-18 6 * node /scripts/myActions/zooLongzhou.js |ts >>/scripts/logs/zooLongzhou.log 2>&1
# # 整点京豆雨
# 1 0-23/1 * * * node /scripts/myActions/jd_super_redrain.js |ts >>/scripts/logs/jd_super_redrain.log 2>&1
# # 半点京豆雨
# 30 16-23/1 * * * node /scripts/myActions/jd_half_redrain.js |ts >>/scripts/logs/jd_half_redrain.log 2>&1

# # 送豆得豆
# 07 1,11,22 * * * node /scripts/myActions/jd_sendBeans.js |ts >>/scripts/logs/jd_sendBeans.log 2>&1

# ##############短期活动##############
# #金口碑奖投票
# 1 0,8 * * * node /scripts/myActions/jd_mgold.js |ts >>/scripts/logs/jd_mgold.log 2>&1

# #手机狂欢城
# 0 0,12,18,21 * * * node /scripts/myActions/jd_carnivalcity.js |ts >>/scripts/logs/jd_carnivalcity.log 2>&1

# #明星小店(星店长，2021-06-10)
# 0 1,21 * * * node /scripts/myActions/jd_star_shop.js >/scripts/logs/jd_star_shop.log 2>&1

# ##############长期活动##############

# 10,0 0 * * * node /scripts/myActions/jd_blueCoin20.js |ts >>/scripts/logs/jd_blueCoin20.log 2>&1

# # 京东排行榜
# 21 9 * * * node /scripts/myActions/jd_rankingList.js |ts >>/scripts/logs/jd_rankingList.log 2>&1

# #家庭号
# 10 6,7 * * * node /scripts/myActions/jd_family.js |ts >>/scripts/logs/jd_family.log 2>&1

# # 天天加速
# 8 0-23/3 * * * node /scripts/myActions/jd_speed.js |ts >>/scripts/logs/jd_speed.log 2>&1
