const question = 'ゲーム市場、最も売れたゲーム機は？';
const answers = [
  'スーファミ',
  'プレステ',
  '任天堂スイッチ',
  '任天堂DS'
];

const correct = '任天堂DS';

console.log();
document.getElementById ('js-question').textContent = question;
document.getElementsByTagName('button')[0].textContent = answers[0];
document.getElementsByTagName('button')[1].textContent = answers[1];
document.getElementsByTagName('button')[2].textContent = answers[2];
document.getElementsByTagName('button')[3].textContent = answers[3];
