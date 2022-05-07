// "Referrer" の誤字 (https://en.wikipedia.org/wiki/HTTP_referer) でややこしいので定数化しておく
const referrer = 'Referer';

// API のベース URL
const apiBaseURL = 'https://api.github.com';

// エラーメッセージ関係で複数回使用しているもの
const networkNotConnected = 'ネットワーク接続がありません。';
const generalExceptionMessage = 'エラーが発生しました。';
const apiExceptionMessage = 'サーバとの通信に失敗しました。';
const apiTimeoutExceptionMessage = 'API 通信がタイムアウトしました。通信環境をご確認のうえ、再度実行してください。';
const unauthorizedExceptionMessage = '指定した操作を行う権限がありません。';
const apiNotFoundExceptionMessage = 'リクエストした API が見つかりませんでした。';
const networkNotConnectedExceptionMessage = 'ネットワーク接続がありません。';

//
const emptyQMessage = 'GitHub の Search Repository API で検索したいキーワードを入力してください。';
