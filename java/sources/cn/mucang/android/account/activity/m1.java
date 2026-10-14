package cn.mucang.android.account.activity;

import android.app.Activity;
import android.content.Intent;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.webview.HtmlExtra;

/* JADX INFO: loaded from: classes.dex */
public class m1 {
    static void a(Activity activity) {
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.J("https://laofuzi.kakamobi.com/jiakaobaodian-newH5/verified.html");
        LoginHtml5Activity.m(activity, 0, bVar.y());
    }

    static void b(Activity activity, int i, boolean z) {
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.J("https://laofuzi.kakamobi.com/jiakaobaodian-newH5/?isEdit=" + z);
        LoginHtml5Activity.m(activity, i, bVar.y());
    }

    static void c(Activity activity, int i) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ChangePasswordActivity.class), i);
    }

    static void d(Activity activity) {
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.J("https://laofuzi.kakamobi.com/jiakaobaodian-newH5/tickling.html?category=account");
        LoginHtml5Activity.m(activity, 0, bVar.y());
    }

    public static void e(Activity activity, int i, String str) {
        Intent intent = new Intent(activity, (Class<?>) ForgotPasswordActivity.class);
        intent.putExtra("__extra_phone_number__", str);
        activity.startActivityForResult(intent, i);
    }

    static void f(Activity activity, int i, String str, int i2) {
        ValidationActivity.a aVar = new ValidationActivity.a(activity);
        CheckSmsResponse checkSmsResponse = new CheckSmsResponse();
        checkSmsResponse.setCheckType(CheckType.FALSE);
        aVar.b(checkSmsResponse);
        aVar.c("绑定手机号，您的新号码将正式启用");
        aVar.f("绑定手机");
        aVar.d(3);
        Intent intentA = aVar.a();
        intentA.putExtra("__change_phone_session_id__", str);
        intentA.putExtra("__change_phone_type__", i2);
        activity.startActivityForResult(intentA, i);
    }

    public static void g(Activity activity, int i) {
        ValidationActivity.a aVar = new ValidationActivity.a(activity);
        aVar.c("验证手机后，你可以直接设置密码");
        aVar.f("验证手机");
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG != null) {
            aVar.e(authUserG.getPhone());
        }
        CheckSmsResponse checkSmsResponse = new CheckSmsResponse();
        checkSmsResponse.setCheckType(CheckType.TRUE);
        aVar.b(checkSmsResponse);
        aVar.d(5);
        activity.startActivityForResult(aVar.a(), i);
    }

    static void h(Activity activity, int i) {
        ValidationActivity.a aVar = new ValidationActivity.a(activity);
        aVar.c("");
        aVar.f("验证手机");
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG != null) {
            aVar.e(authUserG.getPhone());
        }
        CheckSmsResponse checkSmsResponse = new CheckSmsResponse();
        checkSmsResponse.setCheckType(CheckType.FALSE);
        aVar.b(checkSmsResponse);
        aVar.d(7);
        activity.startActivityForResult(aVar.a(), i);
    }
}
