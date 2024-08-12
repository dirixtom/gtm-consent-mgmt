const mockData = {
  command: 'default',
  defaultSettings: [
    {
      'region':'',
      'adStorage':'denied',
      'analyticsStorage':'ignoreThisData',
    }
  ],  
};

runCode(mockData);

assertApi('gtmOnSuccess').wasCalled();
assertApi('setDefaultConsentState').wasCalledWith({
  ad_storage: 'denied',
});
