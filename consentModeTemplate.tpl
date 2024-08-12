___TERMS_OF_SERVICE___

This template is free to use for personal or commercial use.

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Consent Mode Template",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "commandGroup",
    "displayName": "Consent Command",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
        {
        "type": "SELECT",
        "name": "command",
        "displayName": "",
        "macrosInSelect": false,
        "selectItems": [
            {
            "value": "default",
            "displayValue": "Default Command"
            },
            {
            "value": "update",
            "displayValue": "Update Command"
            }
        ],
        "simpleValueType": true,
        "defaultValue": "default",
        "alwaysInSummary": true,
        "subParams": [],
        "help": ""
        }
    ],
    "help": "Choose which Consent Mode command this instance of the template should fire"
    },
    {
    "type": "GROUP",
    "name": "defaultGroup",
    "displayName": "Default Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
        {
        "type": "PARAM_TABLE",
        "name": "defaultSettings",
        "displayName": "",
        "paramTableColumns": [
            {
            "param": {
                "type": "TEXT",
                "name": "region",
                "displayName": "",
                "simpleValueType": true
            },
            "isUnique": true
            },
            {
            "param": {
                "type": "SELECT",
                "name": "adStorage",
                "displayName": "ad_storage",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            },
            {
            "param": {
                "type": "SELECT",
                "name": "analyticsStorage",
                "displayName": "analytics_storage",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            },
            {
            "param": {
                "type": "SELECT",
                "name": "functionalityStorage",
                "displayName": "functionality_storage",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            },
            {
            "param": {
                "type": "SELECT",
                "name": "personalizationStorage",
                "displayName": "personalization_storage",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            },
            {
            "param": {
                "type": "SELECT",
                "name": "securityStorage",
                "displayName": "security_storage",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            },
            {
            "param": {
                "type": "SELECT",
                "name": "adUserData",
                "displayName": "ad_user_data",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            },
            {
            "param": {
                "type": "SELECT",
                "name": "adPersonalization",
                "displayName": "ad_personalization",
                "macrosInSelect": true,
                "selectItems": [
                {
                    "value": "granted",
                    "displayValue": "Granted"
                },
                {
                    "value": "denied",
                    "displayValue": "Denied"
                },
                {
                    "value": "",
                    "displayValue": "(not set)"
                }
                ],
                "simpleValueType": true,
                "defaultValue": "granted"
            },
            "isUnique": false
            }
        ],
        "valueValidators": [
            {
            "type": "TABLE_ROW_COUNT",
            "args": [
                1
            ]
            }
        ]
        },
        {
        "type": "LABEL",
        "name": "defaultLabel",
        "displayName": "IMPORTANT: This tag should be fired using the Consent Initialization trigger to ensure default consent settings are in place before any tags fire. Make sure you have configured a separate instance of this template which uses the \"Update\" command. Failure to properly configure both tags will result in undesirable tag behavior."
        },
        {
        "type": "GROUP",
        "name": "settingsGroup",
        "displayName": "Additional Settings",
        "groupStyle": "ZIPPY_OPEN",
        "subParams": [
            {
            "type": "CHECKBOX",
            "name": "adsDataRedaction",
            "checkboxText": "Redact Ads Data",
            "simpleValueType": true
            },
            {
            "type": "TEXT",
            "name": "waitForUpdate",
            "displayName": "Wait For Update",
            "simpleValueType": true,
            "valueUnit": "ms",
            "help": "Time to wait for update command before firing consent-aware tags",
            "defaultValue": 500
            }
        ]
        }
    ],
    "enablingConditions": [
        {
        "paramName": "command",
        "paramValue": "default",
        "type": "EQUALS"
        }
    ]
    },
    {
    "type": "GROUP",
    "name": "updateGroup",
    "displayName": "Update Settings",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
        {
        "type": "SELECT",
        "name": "adStorageUpdate",
        "displayName": "ad_storage",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "defaultValue": "-",
        "notSetText": ""
        },
        {
        "type": "SELECT",
        "name": "analyticsStorageUpdate",
        "displayName": "analytics_storage",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": "-"
        },
        {
        "type": "SELECT",
        "name": "functionalityStorageUpdate",
        "displayName": "functionality_storage",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": "-"
        },
        {
        "type": "SELECT",
        "name": "personalizationStorageUpdate",
        "displayName": "personalization_storage",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": "-"
        },
        {
        "type": "SELECT",
        "name": "securityStorageUpdate",
        "displayName": "security_storage",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": "-"
        },
        {
        "type": "SELECT",
        "name": "adUserDataUpdate",
        "displayName": "ad_user_data",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": "-"
        },
        {
        "type": "SELECT",
        "name": "adPersonalizationUpdate",
        "displayName": "ad_personalization",
        "macrosInSelect": true,
        "selectItems": [
            {
            "value": "granted",
            "displayValue": "Granted"
            },
            {
            "value": "denied",
            "displayValue": "Denied"
            },
            {
            "value": "",
            "displayValue": "(not set)"
            }
        ],
        "simpleValueType": true,
        "notSetText": "",
        "defaultValue": "-"
        },
        {
        "type": "LABEL",
        "name": "updateLabel",
        "displayName": "This tag should be fired on a trigger that executes when consent changes. Select a variable in each of the above dropdowns that is set to \"granted\" when consent is granted and \"denied\" when consent is not granted for the row\u0027s consent type."
        }
    ],
    "enablingConditions": [
        {
        "paramName": "command",
        "paramValue": "update",
        "type": "EQUALS"
        }
    ],
    "help": "This tag should be fired through a custom event trigger that accepts or denies tracking/data storage consent - DO NOT FORGET to set the default stats in a separate tag which fires when the page loads."
    }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const gtagSet = require('gtagSet');

const splitInput = input => input.split(',').map(entry => entry.trim()).filter(entry => entry !== '');

const parseSettings = settings => {
    const commandData = {};
    const storageFields = {
        adStorage: 'ad_storage',
        analyticsStorage: 'analytics_storage',
        functionalityStorage: 'functionality_storage',
        personalizationStorage: 'personalization_storage',
        securityStorage: 'security_storage',
        adUserData: 'ad_user_data',
        adPersonalization: 'ad_personalization'
    };

    if (settings.region) commandData.region = splitInput(settings.region);

    for (const field in storageFields) {
        if (settings[field] === 'granted' || settings[field] === 'denied') {
            commandData[storageFields[field]] = settings[field];
        }
    }

    return commandData;
};

const parseDefaultCommandData = settings => {
    return parseSettings(settings);
};

const processData = () => {
    if (data.command === 'default') {
        data.defaultSettings.forEach(settings => {
            const commandData = parseDefaultCommandData(settings);
            if (data.waitForUpdate > 0) {
                commandData.wait_for_update = data.waitForUpdate;
            }
            setDefaultConsentState(commandData);
        });
        gtagSet('ads_data_redaction', data.adsDataRedaction);
    } else if (data.command === 'update') {
        const commandData = {};
        const updates = [
            { key: 'adStorageUpdate', commandKey: 'ad_storage' },
            { key: 'analyticsStorageUpdate', commandKey: 'analytics_storage' },
            { key: 'functionalityStorageUpdate', commandKey: 'functionality_storage' },
            { key: 'personalizationStorageUpdate', commandKey: 'personalization_storage' },
            { key: 'securityStorageUpdate', commandKey: 'security_storage' },
            { key: 'adUserDataUpdate', commandKey: 'ad_user_data' },
            { key: 'adPersonalizationUpdate', commandKey: 'ad_personalization' }
        ];

        for (let i = 0; i < updates.length; i++) {
            const update = updates[i];
            if (data[update.key] === 'granted' || data[update.key] === 'denied') {
                commandData[update.commandKey] = data[update.key];
            }
        }

        updateConsentState(commandData);
    }
};

processData();
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "wait_for_update"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: setDefaults - Granted
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'granted',\n      'analyticsStorage':'granted',\n\
    \      'functionalityStorage':'granted',\n      'personalizationStorage':'granted',\n\
    \      'securityStorage':'granted',\n      'adUserData':'granted',\n      'adPersonalization':'granted',\n\
    \    }\n  ],  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'granted',\n\
    \  analytics_storage: 'granted',\n  functionality_storage: 'granted',\n  personalization_storage:\
    \ 'granted',\n  security_storage: 'granted',\n  ad_user_data: 'granted',\n  ad_personalization:\
    \ 'granted',\n});"
- name: setDefaults - Denied
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'denied',\n\
    \      'functionalityStorage':'denied',\n      'personalizationStorage':'denied',\n\
    \      'securityStorage':'denied',\n      'adUserData':'denied',\n      'adPersonalization':'denied',\n\
    \    }\n  ], \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    \  analytics_storage: 'denied',\n  functionality_storage: 'denied',\n  personalization_storage:\
    \ 'denied',\n  security_storage: 'denied',\n  ad_user_data: 'denied',\n  ad_personalization:\
    \ 'denied',\n});"
- name: updateDenied - Granted
  code: |-
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
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'granted',
      analytics_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
    });
- name: updateGranted - Denied
  code: |-
    const setDefaultConsentState = require('setDefaultConsentState');
    const mockData = {
      command: 'update',
      adStorageUpdate: 'denied',
      analyticsStorageUpdate: 'denied',
      adUserDataUpdate: 'denied',
      adPersonalizationUpdate: 'denied',
    };
    setDefaultConsentState({
      'ad_storage': 'granted',
      'analytics_storage': 'granted',
      'ad_user_data': 'granted',
      'ad_personalization': 'granted',
    });
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('updateConsentState').wasCalledWith({
      ad_storage: 'denied',
      analytics_storage: 'denied',
      ad_user_data: 'denied',
      ad_personalization: 'denied',
    });
- name: wait
  code: |-
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
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
    assertApi('setDefaultConsentState').wasCalledWith({
      ad_storage: 'granted',
      analytics_storage: 'granted',
      ad_user_data: 'granted',
      ad_personalization: 'granted',
      wait_for_update: 500,
    });
- name: adsDataRedaction
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'granted',\n      'analyticsStorage':'granted',\n\
    \      'adUserData':'granted',\n      'adPersonalization':'granted',\n    }\n\
    \  ], \n  'waitForUpdate': 500,\n  'adsDataRedaction': true,\n};\n\n// Call runCode\
    \ to run the template's code.\nrunCode(mockData);\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();\nassertApi('gtagSet').wasCalledWith('ads_data_redaction',true);"
- name: badData - Analytics Storage
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'badValue',\n\
    \    }\n  ],  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    });"
- name: badData - adUserData
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'denied',\n\
    \      'adUserData':'ignoreThisValue',\n      'adPersonalization':'denied',\n    }\n  ],\
    \  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\n\
    // Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    \  analytics_storage: 'denied',\n  ad_personalization: 'denied',\n});"
- name: badData - adPersonalization
  code: "const mockData = {\n  command: 'default',\n  defaultSettings: [\n    {\n\
    \      'region':'',\n      'adStorage':'denied',\n      'analyticsStorage':'denied',\n\
    \      'adUserData':'denied',\n      'adPersonalization':'ignoreThisValue',\n    }\n  ],\
    \  \n};\n\n// Call runCode to run the template's code.\nrunCode(mockData);\n\n\
    // Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();\n\
    assertApi('setDefaultConsentState').wasCalledWith({\n  ad_storage: 'denied',\n\
    \  analytics_storage: 'denied',\n  ad_user_data: 'denied',\n});"


___NOTES___

Updated on 12/08/2024 - 14:24
