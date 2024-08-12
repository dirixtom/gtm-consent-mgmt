const setDefaultConsentState = require('setDefaultConsentState');
const mockData = {
  command: 'update',
  adStorageUpdate: 'granted',
  analyticsStorageUpdate: 'granted',
  adUserDataUpdate: 'granted',
  adPersonalizationUpdate: 'granted',
};
setDefaultConsentState({
  'ad_storage': 'denied',
  'analytics_storage': 'denied',
  'ad_user_data': 'denied',
  'ad_personalization': 'denied',
});
runCode(mockData);
assertApi('gtmOnSuccess').wasCalled();
assertApi('updateConsentState').wasCalledWith({
  ad_storage: 'granted',
  analytics_storage: 'granted',
  ad_user_data: 'granted',
  ad_personalization: 'granted',
});
