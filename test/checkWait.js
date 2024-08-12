const mockData = {
  command: 'default',
  defaultSettings: [
    {
      'region':'',
      'adStorage':'granted',
      'analyticsStorage':'granted',
      'adUserData': 'granted',
      'adPersonalization': 'granted',
    }
  ],
  'waitForUpdate': 500,
};
runCode(mockData);
assertApi('gtmOnSuccess').wasCalled();
assertApi('setDefaultConsentState').wasCalledWith({
  ad_storage: 'granted',
  analytics_storage: 'granted',
  ad_user_data: 'granted',
  ad_personalization: 'granted',
  wait_for_update: 500,
});
