package cn.mucang.android.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Process;
import android.system.Os;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.utils.MultiProcessBroadcastManager;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.t;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.account.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0007J\b\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/account/AccountManagerMultiProcessSupport;", "", "()V", "TAG", "", "localBroadcastReceiver", "Landroid/content/BroadcastReceiver;", "init", "", "makeFilter", "Landroid/content/IntentFilter;", "notifyListeners", "type", "Lcn/mucang/android/account/AccountManager$ActionType;", "user", "Lcn/mucang/android/account/data/AuthUser;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AccountManagerMultiProcessSupport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AccountManagerMultiProcessSupport f2150a = new AccountManagerMultiProcessSupport();
    private static final BroadcastReceiver b = new a();

    /* JADX INFO: renamed from: cn.mucang.android.account.d$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/account/AccountManagerMultiProcessSupport$localBroadcastReceiver$1", "Landroid/content/BroadcastReceiver;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            r.e(context, "context");
            r.e(intent, "intent");
            String action = intent.getAction();
            Serializable serializableExtra = intent.getSerializableExtra("__user__");
            AuthUser authUser = serializableExtra instanceof AuthUser ? (AuthUser) serializableExtra : null;
            if (authUser == null) {
                return;
            }
            AccountManager.h().B(authUser);
            if (r.a("cn.mucang.android.account.ACTION_LOGINED", action)) {
                AccountManagerMultiProcessSupport.f2150a.d(AccountManager.ActionType.LOGIN_SUCCEED, authUser);
                return;
            }
            if (r.a("cn.mucang.android.account.ACTION_LOGOUT", action)) {
                AccountManager.h().B(null);
                AccountManagerMultiProcessSupport.f2150a.d(AccountManager.ActionType.LOGOUT, authUser);
            } else if (r.a("cn.mucang.android.account.ACTION_VERIFIED", action)) {
                AccountManagerMultiProcessSupport.f2150a.d(AccountManager.ActionType.ACCOUNT_VERIFIED, authUser);
            } else if (r.a("cn.mucang.android.account.ACTION_PROFILE_UPDATE", action)) {
                AccountManagerMultiProcessSupport.f2150a.d(AccountManager.ActionType.UPDATE_USER, authUser);
            } else if (r.a("cn.mucang.android.account.ACTION_LOGIN_CANCELED", action)) {
                AccountManagerMultiProcessSupport.f2150a.d(AccountManager.ActionType.LOGIN_FAILED, authUser);
            }
        }
    }

    private AccountManagerMultiProcessSupport() {
    }

    public static final void b() {
        AccountManagerMultiProcessSupport accountManagerMultiProcessSupport = f2150a;
        t.d("multiProcessAccount", "进程" + Process.myPid() + " sp user:" + AccountManager.h().g());
        MultiProcessBroadcastManager.d(b, accountManagerMultiProcessSupport.c());
    }

    private final IntentFilter c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("cn.mucang.android.account.ACTION_LOGINED");
        intentFilter.addAction("cn.mucang.android.account.ACTION_LOGOUT");
        intentFilter.addAction("cn.mucang.android.account.ACTION_VERIFIED");
        intentFilter.addAction("cn.mucang.android.account.ACTION_PROFILE_UPDATE");
        intentFilter.addAction("cn.mucang.android.account.ACTION_LOGIN_CANCELED");
        return intentFilter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(AccountManager.ActionType actionType, AuthUser authUser) {
        AccountManager.h().n(authUser, actionType);
        t.d("multiProcessAccount", '[' + Os.getpid() + '/' + a0.e() + "] " + actionType);
    }
}
