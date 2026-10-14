package cn.mucang.jiakaoyi.uilib.ui.login;

import cn.mucang.android.core.config.MucangConfig;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogLoginBinding;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.login.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u0000 '2\u00020\u0001:\u0001'B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\b\u0010\u001e\u001a\u00020\bH\u0002J\b\u0010\u001f\u001a\u00020\bH\u0002J\b\u0010 \u001a\u00020!H\u0002J\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0006\u0010$\u001a\u00020!J\u0006\u0010%\u001a\u00020!J\u0006\u0010&\u001a\u00020!R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0010R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006("}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter;", "", "loginBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;", "isLogout", "", "isCoach", "coachAuthToken", "", "toLogin", "Landroid/view/View$OnClickListener;", "needSmsLogin", "(Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;ZZLjava/lang/String;Landroid/view/View$OnClickListener;Z)V", "getCoachAuthToken", "()Ljava/lang/String;", "isCanSwitch", "()Z", "setCanSwitch", "(Z)V", "getLoginBinding", "()Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogLoginBinding;", "loginMode", "", "getLoginMode", "()I", "setLoginMode", "(I)V", "getNeedSmsLogin", "getToLogin", "()Landroid/view/View$OnClickListener;", "getBaoDianLoginUrl", "getWeiXinLoginUrl", "initView", "", "onCreated", "onDestroy", "onPause", "onResume", "switchMode", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginPresenter {
    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        return MucangConfig.v() ? "https://share-m.ttt.kakamobi.com/activity.kakamobi.com/jiakaobaodian-hy-scan-login" : "https://share-m.kakamobi.com/activity.kakamobi.com/jiakaobaodian-hy-scan-login";
    }

    public final DialogLoginBinding c() {
        throw null;
    }
}
