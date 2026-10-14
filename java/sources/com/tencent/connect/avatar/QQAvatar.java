package com.tencent.connect.avatar;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.Toast;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.a.d;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.f;
import com.tencent.open.utils.i;
import com.tencent.open.utils.l;
import com.tencent.tauth.IUiListener;

/* JADX INFO: loaded from: classes6.dex */
public class QQAvatar extends BaseApi {
    public static final String FROM_SDK_AVATAR_SET_IMAGE = "FROM_SDK_AVATAR_SET_IMAGE";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IUiListener f14004a;

    public QQAvatar(QQToken qQToken) {
        super(qQToken);
    }

    private Intent a(Activity activity) {
        Intent intent = new Intent();
        intent.setClass(activity, ImageActivity.class);
        return intent;
    }

    public void setAvatar(Activity activity, Uri uri, IUiListener iUiListener, int i) {
        IUiListener iUiListener2 = this.f14004a;
        if (iUiListener2 != null) {
            iUiListener2.onCancel();
        }
        this.f14004a = iUiListener;
        Bundle bundle = new Bundle();
        bundle.putString("picture", uri.toString());
        bundle.putInt(Constant.LOGIN_ACTIVITY_EXIT_ANIM, i);
        bundle.putString("appid", this.c.getAppId());
        bundle.putString(Constants.PARAM_ACCESS_TOKEN, this.c.getAccessToken());
        bundle.putLong(Constants.PARAM_EXPIRES_IN, this.c.getExpireTimeInSecond());
        bundle.putString("openid", this.c.getOpenId());
        Intent intentA = a(activity);
        if (!a(intentA)) {
            d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SET_AVATAR, Constants.VIA_REPORT_TYPE_SET_AVATAR, "18", "1");
        } else {
            a(activity, bundle, intentA);
            d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SET_AVATAR, Constants.VIA_REPORT_TYPE_SET_AVATAR, "18", "0");
        }
    }

    public void setAvatarByQQ(Activity activity, Uri uri, IUiListener iUiListener) {
        IUiListener iUiListener2 = this.f14004a;
        if (iUiListener2 != null) {
            iUiListener2.onCancel();
        }
        this.f14004a = iUiListener;
        if (!i.b(activity)) {
            Toast.makeText(activity.getApplicationContext(), "当前手机未安装QQ，请安装最新版QQ后再试。", 1).show();
            return;
        }
        if (i.c(activity, "8.0.0") < 0) {
            Toast.makeText(activity.getApplicationContext(), "当前手机QQ版本过低，不支持设置头像功能。", 1).show();
            return;
        }
        String strA = l.a(activity);
        StringBuffer stringBuffer = new StringBuffer("mqqapi://profile/sdk_avatar_edit?");
        if (!TextUtils.isEmpty(strA)) {
            if (strA.length() > 20) {
                strA = strA.substring(0, 20) + "...";
            }
            stringBuffer.append("&app_name=" + Base64.encodeToString(l.i(strA), 2));
        }
        String appId = this.c.getAppId();
        String openId = this.c.getOpenId();
        if (!TextUtils.isEmpty(appId)) {
            stringBuffer.append("&share_id=" + appId);
        }
        if (!TextUtils.isEmpty(openId)) {
            stringBuffer.append("&open_id=" + Base64.encodeToString(l.i(openId), 2));
        }
        String strA2 = l.a(activity, uri);
        if (!TextUtils.isEmpty(strA2)) {
            try {
                activity.grantUriPermission("com.tencent.mobileqq", uri, 3);
                stringBuffer.append("&set_uri=" + Base64.encodeToString(l.i(uri.toString()), 2));
            } catch (Exception e2) {
                SLog.e("QQAvatar", "Exception", e2);
            }
        }
        if (!TextUtils.isEmpty(strA2)) {
            stringBuffer.append("&set_path=" + Base64.encodeToString(l.i(strA2), 2));
        }
        stringBuffer.append("&sdk_version=" + Base64.encodeToString(l.i(Constants.SDK_VERSION), 2));
        SLog.v("QQAVATAR", "-->set avatar, url: " + stringBuffer.toString());
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("FROM_WHERE", FROM_SDK_AVATAR_SET_IMAGE);
        intent.putExtra("pkg_name", activity.getPackageName());
        intent.setData(Uri.parse(stringBuffer.toString()));
        if (a(intent)) {
            UIListenerManager.getInstance().setListenerWithRequestcode(10108, iUiListener);
            a(activity, 10108, intent, false);
        }
    }

    public void setDynamicAvatar(Activity activity, Uri uri, IUiListener iUiListener) {
        IUiListener iUiListener2 = this.f14004a;
        if (iUiListener2 != null) {
            iUiListener2.onCancel();
        }
        this.f14004a = iUiListener;
        if (!i.b(activity)) {
            Toast.makeText(activity.getApplicationContext(), "当前手机未安装QQ，请安装最新版QQ后再试。", 1).show();
            return;
        }
        if (i.c(activity, "8.0.5") < 0) {
            Toast.makeText(activity.getApplicationContext(), "当前手机QQ版本过低，不支持设置头像功能。", 1).show();
            return;
        }
        String strA = l.a(activity);
        StringBuffer stringBuffer = new StringBuffer("mqqapi://profile/sdk_dynamic_avatar_edit?");
        if (!TextUtils.isEmpty(strA)) {
            if (strA.length() > 20) {
                strA = strA.substring(0, 20) + "...";
            }
            stringBuffer.append("&app_name=" + Base64.encodeToString(l.i(strA), 2));
        }
        String appId = this.c.getAppId();
        String openId = this.c.getOpenId();
        if (!TextUtils.isEmpty(appId)) {
            stringBuffer.append("&share_id=" + appId);
        }
        if (!TextUtils.isEmpty(openId)) {
            stringBuffer.append("&open_id=" + Base64.encodeToString(l.i(openId), 2));
        }
        String strA2 = l.a(activity, uri);
        if (!TextUtils.isEmpty(strA2)) {
            try {
                activity.grantUriPermission("com.tencent.mobileqq", uri, 3);
                stringBuffer.append("&video_uri=");
                stringBuffer.append(Base64.encodeToString(l.i(uri.toString()), 2));
            } catch (Exception e2) {
                SLog.e("QQAvatar", "Exception", e2);
            }
        }
        if (!TextUtils.isEmpty(strA2)) {
            stringBuffer.append("&video_path=" + Base64.encodeToString(l.i(strA2), 2));
        }
        stringBuffer.append("&sdk_version=" + Base64.encodeToString(l.i(Constants.SDK_VERSION), 2));
        SLog.v("QQAVATAR", "-->set dynamic avatar, url: " + stringBuffer.toString());
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("FROM_WHERE", FROM_SDK_AVATAR_SET_IMAGE);
        intent.putExtra("pkg_name", activity.getPackageName());
        intent.setData(Uri.parse(stringBuffer.toString()));
        if (a(intent)) {
            UIListenerManager.getInstance().setListenerWithRequestcode(10110, iUiListener);
            a(activity, 10110, intent, false);
        }
    }

    private void a(Activity activity, Bundle bundle, Intent intent) {
        a(bundle);
        intent.putExtra(Constants.KEY_ACTION, "action_avatar");
        intent.putExtra(Constants.KEY_PARAMS, bundle);
        UIListenerManager.getInstance().setListenerWithRequestcode(11102, this.f14004a);
        a(activity, intent, 11102);
    }

    private void a(Bundle bundle) {
        QQToken qQToken = this.c;
        if (qQToken != null) {
            bundle.putString("appid", qQToken.getAppId());
            if (this.c.isSessionValid()) {
                bundle.putString(Constants.PARAM_KEY_STR, this.c.getAccessToken());
                bundle.putString(Constants.PARAM_KEY_TYPE, "0x80");
            }
            String openId = this.c.getOpenId();
            if (openId != null) {
                bundle.putString("hopenid", openId);
            }
            bundle.putString(Constants.PARAM_PLATFORM, "androidqz");
            try {
                bundle.putString(Constants.PARAM_PLATFORM_ID, f.a().getSharedPreferences(Constants.PREFERENCE_PF, 0).getString(Constants.PARAM_PLATFORM_ID, Constants.DEFAULT_PF));
            } catch (Exception e2) {
                e2.printStackTrace();
                bundle.putString(Constants.PARAM_PLATFORM_ID, Constants.DEFAULT_PF);
            }
        }
        bundle.putString("sdkv", Constants.SDK_VERSION);
        bundle.putString("sdkp", "a");
    }
}
