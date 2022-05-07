// "Referrer" の誤字 (https://en.wikipedia.org/wiki/HTTP_referer) でややこしいので定数化しておく
const referrer = 'Referer';

// API のベース URL
const apiBaseURL = 'https://api.github.com';

// エラーメッセージ関係で複数回使用しているもの
const generalExceptionMessage = 'エラーが発生しました。';
const networkNotConnected = 'ネットワーク接続がありません。';
const responseFormatNotValid = 'レスポンスの形式が正しくありません。';
const emptyQMessage = 'GitHub の Search Repository API で検索したいキーワードを入力してください。';
