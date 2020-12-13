set -e;

THIS_SCRIPT_DIR=`dirname "${BASH_SOURCE[0]}"`;
echo "This script is $THIS_SCRIPT_DIR";
THIS_SCRIPT_DIR=`realpath "${THIS_SCRIPT_DIR}"`;
echo "This script is $THIS_SCRIPT_DIR";
ACTIONS_DIR=`realpath "$THIS_SCRIPT_DIR/../../.."`;
ARTIFACT_ACTION_REPO=actions/upload-artifact;
ARTIFACT_ACTION_DIR=$ACTIONS_DIR/$ARTIFACT_ACTION_REPO/master;
artifactUploadCmd="env INPUT_IF-NO-FILES-FOUND=warn INPUT_RETENTION-DAYS=90 node $ARTIFACT_ACTION_DIR/dist/index.js";
testCmd="env INPUT_IF-NO-FILES-FOUND=warn INPUT_RETENTION-DAYS=90 node $THIS_SCRIPT_DIR/test.js";
echo 10

$testCmd;
echo 11;
exit 1;
