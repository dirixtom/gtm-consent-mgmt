const mockData = {
  command: 'default',
  defaultSettings: [
    {
      'region':'',
      'adStorage':'denied',
      'analyticsStorage':'denied',
      'adUserData':'ignoreThisData',
      'adPersonalization':'denied',
    }
  ],  
};

runCode(mockData);

assertApi('gtmOnSuccess').wasCalled();
assertApi('setDefaultConsentState').wasCalledWith({
  ad_storage: 'denied',
  analytics_storage: 'denied',
  ad_personalization: 'denied',
});
