const mockData = {
  command: 'default',
  defaultSettings: [
    {
      'region':'',
      'adStorage':'granted',
      'analyticsStorage':'granted',
      'adUserData':'granted',
      'adPersonalization':'granted',
    }
  ], 
  'waitForUpdate': 500,
  'adsDataRedaction': true,
};

// Call runCode to run the template's code.
runCode(mockData);

// Verify that the tag finished successfully.
assertApi('gtmOnSuccess').wasCalled();
assertApi('gtagSet').wasCalledWith('ads_data_redaction',true);
