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
