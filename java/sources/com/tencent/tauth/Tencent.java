package com.tencent.tauth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.auth.c;
import com.tencent.connect.avatar.QQAvatar;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.connect.emotion.QQEmotion;
import com.tencent.connect.share.QQShare;
import com.tencent.connect.share.QzonePublish;
import com.tencent.connect.share.QzoneShare;
import com.tencent.open.im.IM;
import com.tencent.open.log.SLog;
import com.tencent.open.log.Tracer;
import com.tencent.open.miniapp.MiniApp;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.f;
import com.tencent.open.utils.g;
import com.tencent.open.utils.i;
import com.tencent.open.utils.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class Tencent {
    public static final int REQUEST_LOGIN = 10001;
    private static Tencent c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f14181a;
    private String b;

    private Tencent(String str, Context context) {
        this.f14181a = c.a(str, context);
    }

    private static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity"), 128);
            try {
                context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.connect.common.AssistActivity"), 128);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                SLog.e("openSDK_LOG.Tencent", "AndroidManifest.xml 没有检测到com.tencent.connect.common.AssistActivity\n" + ("没有在AndroidManifest.xml中检测到com.tencent.connect.common.AssistActivity,请加上com.tencent.connect.common.AssistActivity,详细信息请查看官网文档.\n配置示例如下: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"));
                return false;
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            SLog.e("openSDK_LOG.Tencent", "AndroidManifest.xml 没有检测到com.tencent.tauth.AuthActivity" + (("没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.tauth.AuthActivity,并配置<data android:scheme=\"tencent" + str + "\" />,详细信息请查看官网文档.") + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent" + str + "\" />\n</intent-filter>\n</activity>"));
            return false;
        }
    }

    public static synchronized Tencent createInstance(String str, Context context, String str2) {
        Tencent tencentCreateInstance;
        tencentCreateInstance = createInstance(str, context);
        SLog.i("openSDK_LOG.Tencent", "createInstance()  -- start, appId = " + str + ", authorities=" + str2);
        if (tencentCreateInstance != null) {
            tencentCreateInstance.b = str2;
        } else {
            SLog.i("openSDK_LOG.Tencent", "null == tencent set mAuthorities fail");
        }
        return tencentCreateInstance;
    }

    public static synchronized String getAuthorities(String str) {
        if (TextUtils.isEmpty(str)) {
            SLog.i("openSDK_LOG.Tencent", "TextUtils.isEmpty(appId)");
            return null;
        }
        Tencent tencent = c;
        if (tencent != null) {
            return str.equals(tencent.getAppId()) ? c.b : "";
        }
        SLog.i("openSDK_LOG.Tencent", "sInstance == null");
        return null;
    }

    public static void handleResultData(Intent intent, IUiListener iUiListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("handleResultData() data = null ? ");
        sb.append(intent == null);
        sb.append(", listener = null ? ");
        sb.append(iUiListener == null);
        SLog.i("openSDK_LOG.Tencent", sb.toString());
        UIListenerManager.getInstance().handleDataToListener(intent, iUiListener);
    }

    public static boolean isSupportPushToQZone(Context context) {
        boolean z = i.c(context, "5.9.5") >= 0 || i.a(context, Constants.PACKAGE_QQ_SPEED) != null;
        SLog.i("openSDK_LOG.Tencent", "isSupportPushToQZone() support=" + z);
        return z;
    }

    public static boolean isSupportShareToQQ(Context context) {
        SLog.i("openSDK_LOG.Tencent", "isSupportShareToQQ()");
        boolean z = true;
        if (l.c(context) && i.a(context, Constants.PACKAGE_QQ_PAD) != null) {
            return true;
        }
        if (i.c(context, "4.1") < 0 && i.a(context, Constants.PACKAGE_TIM) == null && i.a(context, Constants.PACKAGE_QQ_SPEED) == null) {
            z = false;
        }
        SLog.i("openSDK_LOG.Tencent", "isSupportShareToQQ() support=" + z);
        return z;
    }

    public static boolean onActivityResultData(int i, int i2, Intent intent, IUiListener iUiListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("onActivityResultData() reqcode = ");
        sb.append(i);
        sb.append(", resultcode = ");
        sb.append(i2);
        sb.append(", data = null ? ");
        sb.append(intent == null);
        sb.append(", listener = null ? ");
        sb.append(iUiListener == null);
        SLog.i("openSDK_LOG.Tencent", sb.toString());
        return UIListenerManager.getInstance().onActivityResult(i, i2, intent, iUiListener);
    }

    public static Map<String, String> parseMiniParameters(Intent intent) {
        HashMap map = new HashMap();
        if (intent == null) {
            SLog.e("openSDK_LOG.Tencent", "parseMiniParameters null == intent");
            return map;
        }
        try {
            String stringExtra = intent.getStringExtra("appParameter");
            if (!TextUtils.isEmpty(stringExtra)) {
                SLog.d("openSDK_LOG.Tencent", "parseMiniParameters appParameter=" + stringExtra);
                JSONObject jSONObject = new JSONObject(stringExtra);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    map.put(next, jSONObject.getString(next));
                }
                return map;
            }
            Uri data = intent.getData();
            if (data == null) {
                SLog.d("openSDK_LOG.Tencent", "parseMiniParameters uri==null");
                return map;
            }
            String string = data.toString();
            if (TextUtils.isEmpty(string)) {
                SLog.d("openSDK_LOG.Tencent", "parseMiniParameters uriStr isEmpty");
                return map;
            }
            String strSubstring = string.substring(string.lastIndexOf(63) + 1);
            if (TextUtils.isEmpty(strSubstring)) {
                SLog.d("openSDK_LOG.Tencent", "parseMiniParameters uriParam is empty");
                return map;
            }
            SLog.d("openSDK_LOG.Tencent", "parseMiniParameters uriParam=" + strSubstring);
            for (String str : strSubstring.split("&")) {
                String[] strArrSplit = str.split("=");
                if (strArrSplit.length == 2) {
                    map.put(strArrSplit[0], strArrSplit[1]);
                }
            }
            return map;
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.Tencent", "parseMiniParameters Exception", e2);
        }
    }

    public static void setCustomLogger(Tracer tracer) {
        SLog.i("openSDK_LOG.Tencent", "setCustomLogger");
        SLog.getInstance().setCustomLogger(tracer);
    }

    public void checkLogin(IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "checkLogin()");
        this.f14181a.a(iUiListener);
    }

    public String getAccessToken() {
        String accessToken = this.f14181a.b().getAccessToken();
        SLog.i("openSDK_LOG.Tencent", "getAccessToken() accessToken = " + accessToken);
        return accessToken;
    }

    public String getAppId() {
        String appId = this.f14181a.b().getAppId();
        SLog.i("openSDK_LOG.Tencent", "getAppId() appid =" + appId);
        return appId;
    }

    public long getExpiresIn() {
        long expireTimeInSecond = this.f14181a.b().getExpireTimeInSecond();
        SLog.i("openSDK_LOG.Tencent", "getExpiresIn() expiresin= " + expireTimeInSecond);
        return expireTimeInSecond;
    }

    public String getOpenId() {
        String openId = this.f14181a.b().getOpenId();
        SLog.i("openSDK_LOG.Tencent", "getOpenId() openid= " + openId);
        return openId;
    }

    public QQToken getQQToken() {
        SLog.i("openSDK_LOG.Tencent", "getQQToken()");
        return this.f14181a.b();
    }

    @Deprecated
    public void handleLoginData(Intent intent, IUiListener iUiListener) {
        StringBuilder sb = new StringBuilder();
        sb.append("handleLoginData() data = null ? ");
        sb.append(intent == null);
        sb.append(", listener = null ? ");
        sb.append(iUiListener == null);
        SLog.i("openSDK_LOG.Tencent", sb.toString());
        UIListenerManager.getInstance().handleDataToListener(intent, iUiListener);
    }

    public void initSessionCache(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString(Constants.PARAM_ACCESS_TOKEN);
            String string2 = jSONObject.getString(Constants.PARAM_EXPIRES_IN);
            String string3 = jSONObject.getString("openid");
            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                setAccessToken(string, string2);
                setOpenId(string3);
            }
            SLog.i("openSDK_LOG.Tencent", "initSessionCache()");
        } catch (Exception e2) {
            SLog.i("QQToken", "initSessionCache " + e2.toString());
        }
    }

    public boolean isQQInstalled(Context context) {
        boolean zB = i.b(context);
        SLog.i("openSDK_LOG.Tencent", "isQQInstalled() installed=" + zB);
        return zB;
    }

    public boolean isReady() {
        boolean z = isSessionValid() && getOpenId() != null;
        SLog.i("openSDK_LOG.Tencent", "isReady() --ready=" + z);
        return z;
    }

    public boolean isSessionValid() {
        boolean zC = this.f14181a.c();
        SLog.i("openSDK_LOG.Tencent", "isSessionValid() isvalid =" + zC);
        return zC;
    }

    public boolean isSupportSSOLogin(Activity activity) {
        SLog.i("openSDK_LOG.Tencent", "isSupportSSOLogin()");
        boolean z = true;
        if (l.c(activity) && i.a((Context) activity, Constants.PACKAGE_QQ_PAD) != null) {
            return true;
        }
        if (i.c(activity, "4.1") < 0 && i.d(activity, "1.1") < 0 && i.e(activity, "4.0.0") < 0) {
            z = false;
        }
        SLog.i("openSDK_LOG.Tencent", "isSupportSSOLogin() support=" + z);
        return z;
    }

    public JSONObject loadSession(String str) {
        JSONObject jSONObjectLoadSession = this.f14181a.b().loadSession(str);
        StringBuilder sb = new StringBuilder();
        sb.append("loadSession() appid ");
        sb.append(str);
        sb.append(", length=");
        sb.append(jSONObjectLoadSession != null ? jSONObjectLoadSession.length() : 0);
        SLog.i("openSDK_LOG.Tencent", sb.toString());
        return jSONObjectLoadSession;
    }

    public int login(Activity activity, String str, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "login() with activity, scope is " + str);
        return this.f14181a.a(activity, str, iUiListener);
    }

    public int loginServerSide(Activity activity, String str, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "loginServerSide() with activity, scope = " + str + ",server_side");
        return this.f14181a.a(activity, str + ",server_side", iUiListener);
    }

    public int loginWithOEM(Activity activity, String str, IUiListener iUiListener, boolean z, String str2, String str3, String str4) {
        SLog.i("openSDK_LOG.Tencent", "loginWithOEM() with activity, scope = " + str);
        return this.f14181a.a(activity, str, iUiListener, z, str2, str3, str4);
    }

    public void logout(Context context) {
        SLog.i("openSDK_LOG.Tencent", "logout()");
        this.f14181a.b().setAccessToken(null, "0");
        this.f14181a.b().setOpenId(null);
        this.f14181a.b().removeSession(this.f14181a.b().getAppId());
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        SLog.i("openSDK_LOG.Tencent", "onActivityResult() deprecated, will do nothing");
        return false;
    }

    public void publishToQzone(Activity activity, Bundle bundle, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "publishToQzone()");
        new QzonePublish(activity, this.f14181a.b()).publishToQzone(activity, bundle, iUiListener);
    }

    public int reAuth(Activity activity, String str, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "reAuth() with activity, scope = " + str);
        return this.f14181a.b(activity, str, iUiListener);
    }

    public void releaseResource() {
    }

    public void reportDAU() {
        SLog.i("openSDK_LOG.Tencent", "reportDAU() ");
        this.f14181a.a();
    }

    public JSONObject request(String str, Bundle bundle, String str2) throws JSONException, IOException, HttpUtils.NetworkUnavailableException, HttpUtils.HttpStatusException {
        SLog.i("openSDK_LOG.Tencent", "request()");
        return HttpUtils.request(this.f14181a.b(), f.a(), str, bundle, str2);
    }

    public void requestAsync(String str, Bundle bundle, String str2, IRequestListener iRequestListener) {
        SLog.i("openSDK_LOG.Tencent", "requestAsync()");
        HttpUtils.requestAsync(this.f14181a.b(), f.a(), str, bundle, str2, iRequestListener);
    }

    public void saveSession(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder();
        sb.append("saveSession() length=");
        sb.append(jSONObject != null ? jSONObject.length() : 0);
        SLog.i("openSDK_LOG.Tencent", sb.toString());
        this.f14181a.b().saveSession(jSONObject);
    }

    public void setAccessToken(String str, String str2) {
        SLog.i("openSDK_LOG.Tencent", "setAccessToken(), expiresIn = " + str2 + "");
        this.f14181a.a(str, str2);
    }

    public void setAvatar(Activity activity, Bundle bundle, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "setAvatar()");
        String string = bundle.getString("picture");
        new QQAvatar(this.f14181a.b()).setAvatar(activity, Uri.parse(string), iUiListener, bundle.getInt(Constant.LOGIN_ACTIVITY_EXIT_ANIM));
    }

    public void setAvatarByQQ(Activity activity, Uri uri, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "setAvatarByQQ()");
        new QQAvatar(this.f14181a.b()).setAvatarByQQ(activity, uri, iUiListener);
    }

    public void setDynamicAvatar(Activity activity, Uri uri, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "setDynamicAvatar()");
        new QQAvatar(this.f14181a.b()).setDynamicAvatar(activity, uri, iUiListener);
    }

    public void setEmotions(Activity activity, ArrayList<Uri> arrayList, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "saveQQEmotions()");
        new QQEmotion(this.f14181a.b()).setEmotions(activity, arrayList, iUiListener);
    }

    public void setOpenId(String str) {
        SLog.i("openSDK_LOG.Tencent", "setOpenId() --start");
        this.f14181a.b(f.a(), str);
        SLog.i("openSDK_LOG.Tencent", "setOpenId() --end");
    }

    public void shareToQQ(Activity activity, Bundle bundle, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "shareToQQ()");
        if (TextUtils.isEmpty(this.b)) {
            iUiListener.onWarning(-19);
        }
        new QQShare(activity, this.f14181a.b()).shareToQQ(activity, bundle, iUiListener);
    }

    public void shareToQzone(Activity activity, Bundle bundle, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "shareToQzone()");
        new QzoneShare(activity, this.f14181a.b()).shareToQzone(activity, bundle, iUiListener);
    }

    public int startIMAio(Activity activity, String str, String str2) {
        SLog.i("openSDK_LOG.Tencent", "startIMAio()");
        return startIMConversation(activity, IM.CHAT_TYPE_AIO, str, str2);
    }

    public int startIMAudio(Activity activity, String str, String str2) {
        SLog.i("openSDK_LOG.Tencent", "startIMAudio()");
        return startIMConversation(activity, IM.CHAT_TYPE_AUDIO_CHAT, str, str2);
    }

    public int startIMConversation(Activity activity, String str, String str2, String str3) {
        return new IM(getQQToken()).startIMConversation(activity, str, str2, str3);
    }

    public int startIMVideo(Activity activity, String str, String str2) {
        SLog.i("openSDK_LOG.Tencent", "startIMVideo()");
        return startIMConversation(activity, IM.CHAT_TYPE_VIDEO_CHAT, str, str2);
    }

    public int startMiniApp(Activity activity, String str, String str2, String str3) {
        SLog.i("openSDK_LOG.Tencent", "startMiniApp()");
        return new MiniApp(getQQToken()).startMiniApp(activity, MiniApp.MINIAPP_TYPE_NORMAL, str, "21", str2, str3);
    }

    public int login(Activity activity, IUiListener iUiListener, Map<String, Object> map) {
        SLog.i("openSDK_LOG.Tencent", "login activity with params");
        return this.f14181a.a(activity, iUiListener, map);
    }

    public int loginServerSide(Fragment fragment, String str, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "loginServerSide() with fragment, scope = " + str + ",server_side");
        return this.f14181a.a(fragment, str + ",server_side", iUiListener, "");
    }

    public int login(Activity activity, String str, IUiListener iUiListener, boolean z) {
        SLog.i("openSDK_LOG.Tencent", "login() with activity, scope is " + str);
        return this.f14181a.a(activity, str, iUiListener, z);
    }

    public static synchronized Tencent createInstance(String str, Context context) {
        f.a(context.getApplicationContext());
        SLog.i("openSDK_LOG.Tencent", "createInstance()  -- start, appId = " + str);
        if (TextUtils.isEmpty(str)) {
            SLog.e("openSDK_LOG.Tencent", "appId should not be empty!");
            return null;
        }
        Tencent tencent = c;
        if (tencent == null) {
            c = new Tencent(str, context);
        } else if (!str.equals(tencent.getAppId())) {
            c.logout(context);
            c = new Tencent(str, context);
        }
        if (!a(context, str)) {
            return null;
        }
        g.a(context, str);
        SLog.i("openSDK_LOG.Tencent", "createInstance()  -- end");
        return c;
    }

    public void setAvatar(Activity activity, Bundle bundle, IUiListener iUiListener, int i, int i2) {
        SLog.i("openSDK_LOG.Tencent", "setAvatar()");
        bundle.putInt(Constant.LOGIN_ACTIVITY_EXIT_ANIM, i2);
        activity.overridePendingTransition(i, 0);
        setAvatar(activity, bundle, iUiListener);
    }

    public int login(Fragment fragment, String str, IUiListener iUiListener) {
        SLog.i("openSDK_LOG.Tencent", "login() with fragment, scope is " + str);
        return this.f14181a.a(fragment, str, iUiListener, "");
    }

    public int login(Fragment fragment, String str, IUiListener iUiListener, boolean z) {
        SLog.i("openSDK_LOG.Tencent", "login() with fragment, scope is " + str);
        return this.f14181a.a(fragment, str, iUiListener, "", z);
    }
}
