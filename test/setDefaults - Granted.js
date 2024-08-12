const mockData = {
  command: 'default',
  defaultSettings: [
    {
      'region':'',
      'adStorage':'granted',
      'analyticsStorage':'granted',
      'functionalityStorage':'granted',
      'personalizationStorage':'granted',
      'securityStorage':'granted',
      'adUserData':'granted',
      'adPersonalization':'granted',
    }
  ],  
};

// Call runCode to run the template's code.
runCode(mockData);

// Verify that the tag finished successfully.
assertApi('gtmOnSuccess').wasCalled();
assertApi('setDefaultConsentState').wasCalledWith({
  ad_storage: 'granted',
  analytics_storage: 'granted',
  functionality_storage: 'granted',
  personalization_storage: 'granted',
  security_storage: 'granted',
  ad_user_data: 'granted',
  ad_personalization: 'granted',
});
