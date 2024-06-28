const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.onUserDeleted = functions.auth.user().onDelete(async (user) => {
  let firestore = admin.firestore();
  let userRef = firestore.doc("user/" + user.uid);
});
const OneSignal = require("@onesignal/node-onesignal");

const kUserKey = "*********************************************OTk5";
const kAPIKey = "NmM1OTkzNTctZjM4MC00MTg3LWE5ZDUtMTdjNzFlMzY1N2M1";

const configuration = OneSignal.createConfiguration({
  userKey: kUserKey,
  appKey: kAPIKey,
});
const client = new OneSignal.DefaultApi(configuration);
const user = new OneSignal.User();

exports.addUser = functions.https.onCall(async (data, context) => {
  if (context.auth.uid != data.user_id) {
    return "Unauthenticated calls are not allowed.";
  }
  try {
    user.identity = {
      external_id: data.user_id,
    };
    user.properties = {
      tags: data.tags,
    };
    user.subscriptions = data.subscriptions;
    const createdUser = await client.createUser(
      "80842d92-448f-4789-bbeb-81c48779708d",
      user,
    );
    if (createdUser.identity["onesignal_id"] == null) {
      throw new functions.https.HttpsError(
        "aborted",
        "Could not create OneSignal user",
      );
    }
    return createdUser;
  } catch (err) {
    console.error(
      `Unable to create user ${context.auth.uid}.
            Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not create OneSignal user",
    );
  }
});

exports.deleteUser = functions.https.onCall(async (data, context) => {
  if (context.auth.uid != data.user_id) {
    return "Unauthenticated calls are not allowed.";
  }
  try {
    await client.deleteUser(
      "80842d92-448f-4789-bbeb-81c48779708d",
      "external_id",
      data.user_id,
    );
    return "User deleted";
  } catch (err) {
    console.error(
      `Unable to delete user ${context.auth.uid}.
            Error ${err}`,
    );
    throw new functions.https.HttpsError(
      "aborted",
      "Could not delete OneSignal user",
    );
  }
});
