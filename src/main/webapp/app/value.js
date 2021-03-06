fcsApp.constant('TypeAndStatus', {
  demoTypes: [{
    id: 'MANUAL',
    text: '人工'
  }, {
    id: 'MONTHLY',
    text: '月结'
  }, {
    id: 'PROGRESS',
    text: '进度'
  }, {
    id: 'TELEGRAPHIC',
    text: '电汇'
  }, {
    id: 'FIRST',
    text: '首款'
  }, {
    id: 'REMAIN',
    text: '余款'
  }],
  demoStatus: [{
    id: 'INIT',
    text: '新建'
  }, {
    id: 'SIGN_IN',
    text: '签发'
  }, {
    id: 'CONFIRM',
    text: '确认'
  }, {
    id: 'INVOICE',
    text: '开票中'
  }, {
    id: 'INVOICE_DONE',
    text: '开票成功'
  }, {
    id: 'INVOICE_FAIL',
    text: '开票失败'
  }]
});

fcsApp.constant('CodeNames', {
  AAA: {
    MANUAL: '人工',
    MONTHLY: '月结',
    PROGRESS: '进度'
  },
  BBB: {
    INIT: '新建',
    SIGN_IN: '签发',
    CONFIRM: '确认'
  }
});
