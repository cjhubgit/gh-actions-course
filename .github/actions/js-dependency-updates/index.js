const core = require('@actions/core');

async function run() {
    try {
        core.info('Checking for dependency updates...');
    } catch (error) {
        core.setFailed(`Action failed with error: ${error.message}`);
    }
}

run();

