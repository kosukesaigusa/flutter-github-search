/// API通信タイムアウトまでの時間（ミリ秒）
const connectionTimeoutMilliSeconds = 100000;

/// APIレスポンスタイムアウトまでの時間（ミリ秒）
const receiveTimeoutMilliSeconds = 100000;

/// GitHub Search Repository API をコールする最低周期の Duration（ミリ秒）
const minSearchApiCallPeriodDuration = Duration(milliseconds: 1000);
