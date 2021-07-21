/**
 * 提现金额，可选0.1 0.5 1 2 10
 * export CFD_CASHOUT_MONEY=0.1
 *
 * 解锁提现方式二选一：1.升级1个建筑（优先） 2.完成日常任务
 * 自动模拟提现token，不需要抓包
 */

import { format } from 'date-fns';
import axios from 'axios';
import { Md5 } from 'ts-md5'
import USER_AGENT, { requireConfig, TotalBean, wait } from './utils/TS_USER_AGENTS';
import * as dotenv from 'dotenv';

const CryptoJS = require('crypto-js')
const notify = require('./sendNotify')
dotenv.config()
let appId: number = 10028, fingerprint: string | number, token: string = '', enCryptMethodJD: any;
let cookie: string = '', res: any = '', UserName: string, index: number;

let money: number = process.env.CFD_CASHOUT_MONEY ? parseFloat(process.env.CFD_CASHOUT_MONEY) * 100 : 10

interface Params {
  ddwMoney?: number,
  ddwPaperMoney?: number,
  strPgtimestamp?: string,
  strPgUUNum?: string,
  strPhoneID?: string,
  strBuildIndex?: string,
  dwType?: string,
  dwFirst?: number,
  __t?: number,
  strBT?: string,
  dwIdentityType?: number,
  strBussKey?: string,
  strMyShareId?
