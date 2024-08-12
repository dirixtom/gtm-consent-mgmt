const mockData = {
  command: 'default',
  defaultSettings: [
    {
      'region':'',
      'adStorage':'denied',
      'analyticsStorage':'denied',
      'functionalityStorage':'denied',
      'personalizationStorage':'denied',
      'securityStorage':'denied',
      'adUserData':'denied',
      'adPersonalization':'denied',
    }
  ], 
};

// Call runCode to run the template's code.
runCode(mockData);

// Verify that the tag finished successfully.
assertApi('gtmOnSuccess').wasCalled();
assertApi('setDefaultConsentState').wasCalledWith({
  ad_storage: 'denied',
  analytics_storage: 'denied',
  functionality_storage: 'denied',
  personalization_storage: 'denied',
  security_storage: 'denied',
  ad_user_data: 'denied',
  ad_personalization: 'denied',
});
