package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.view.View;
import cn.mucang.android.account.p001qrcode.model.QrAuthUser;
import cn.mucang.android.account.p001qrcode.model.QrCodeModel;
import cn.mucang.android.account.qrcode.QrCodeHelper;
import cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginScanBinding;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.QrCodeLoginData;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.j0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0002J\u001a\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/ScanLoginLogic;", "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;", "Lcn/mucang/android/account/qrcode/listener/ScanLoginStatusListener;", "binding", "loginType", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginScanBinding;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V", "getLoginType", "()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "init", "", "loadQrCode", "onCallback", "scanLoginStatus", "", "qrAuthUser", "Lcn/mucang/android/account/qrcode/model/QrAuthUser;", TtmlNode.START, "fromUser", "", "stop", "switch", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ScanLoginLogic extends BaseLogic<LayoutLoginScanBinding> implements ScanLoginStatusListener {
    private final LoginType b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScanLoginLogic(LayoutLoginScanBinding binding, LoginType loginType) {
        super(binding);
        r.e(binding, "binding");
        r.e(loginType, "loginType");
        this.b = loginType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ScanLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.q();
    }

    private final void q() {
        QrCodeHelper.f2245f.a().i();
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.l
            @Override // java.lang.Runnable
            public final void run() {
                ScanLoginLogic.r(this.f7342a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(final ScanLoginLogic this$0) {
        r.e(this$0, "this$0");
        QrCodeModel qrCodeModelB = QrCodeHelper.f2245f.a().b();
        final Bitmap bitmapB = cn.mucang.android.jiakaoyi.framework.i.a.b(qrCodeModelB == null ? null : qrCodeModelB.getProtocolUrl(), (int) this$0.c().getResources().getDimension(R.dimen.rpx_380));
        if (bitmapB == null) {
            return;
        }
        u.c(new SafeRunnable(this$0.c(), new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.k
            @Override // java.lang.Runnable
            public final void run() {
                ScanLoginLogic.s(this.f7341a, bitmapB);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(ScanLoginLogic this$0, Bitmap bitmap) {
        r.e(this$0, "this$0");
        r.e(bitmap, "$bitmap");
        this$0.d().qrCodeErrorFl.setVisibility(8);
        this$0.d().qrCodeIv.setImageBitmap(bitmap);
        kotlinx.coroutines.g.b(j0.b(), null, null, new ScanLoginLogic$loadQrCode$1$1$1(this$0, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(int i, ScanLoginLogic this$0, QrAuthUser qrAuthUser) {
        r.e(this$0, "this$0");
        if (i == 0) {
            this$0.d().qrCodeErrorFl.setVisibility(8);
            return;
        }
        if (i == 1) {
            this$0.d().qrCodeErrorFl.setVisibility(8);
            return;
        }
        if (i == 2) {
            this$0.d().qrCodeErrorFl.setVisibility(0);
            LoginManager.j(this$0.c(), this$0.getB(), new QrCodeLoginData(qrAuthUser == null ? null : qrAuthUser.getAuthToken()), null, 8, null);
        } else if (i == 3 || i == 20040) {
            this$0.d().qrCodeErrorFl.setVisibility(0);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void f() {
        d().qrCodeErrorFl.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ScanLoginLogic.l(this.f7343a, view);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void h(boolean z) {
        super.h(z);
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void j(boolean z) {
        super.j(z);
        QrCodeHelper.f2245f.a().i();
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final LoginType getB() {
        return this.b;
    }

    @Override // cn.mucang.android.account.qrcode.listener.ScanLoginStatusListener
    @SuppressLint({"SetTextI18n"})
    public void onCallback(final int scanLoginStatus, final QrAuthUser qrAuthUser) {
        u.c(new SafeRunnable(c(), new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.n
            @Override // java.lang.Runnable
            public final void run() {
                ScanLoginLogic.t(scanLoginStatus, this, qrAuthUser);
            }
        }));
    }
}
