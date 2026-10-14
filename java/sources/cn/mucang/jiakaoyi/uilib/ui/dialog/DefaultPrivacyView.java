package cn.mucang.jiakaoyi.uilib.ui.dialog;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.jiakaoyi.uilib.api.PrivacyAgreementApi;
import cn.mucang.jiakaoyi.uilib.model.PrivacyAgreementModel;
import cn.mucang.jiakaoyi.uilib.utils.PrivacyAgreementUtil;
import com.mucang.android.jiakaoyi.uilib.databinding.LayoutDefaultPrivacyAgreementBinding;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.dialog.j0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\b\u0010\u0013\u001a\u00020\u0003H\u0016J\b\u0010\u0014\u001a\u00020\u000bH\u0016J\b\u0010\u0015\u001a\u00020\u000bH\u0016J\b\u0010\u0016\u001a\u00020\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/dialog/DefaultPrivacyView;", "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;", "localKey", "", "deviceType", "", "privacyAgreementId", "(Ljava/lang/String;ILjava/lang/String;)V", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutDefaultPrivacyAgreementBinding;", "confirmRead", "", "createView", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "inflater", "Landroid/view/LayoutInflater;", "getCancelText", "getConfirmText", "isConfirmRead", "isRequired", "isSync", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DefaultPrivacyView implements PrivacyAgreementDialog.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9825a;
    private final int b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LayoutDefaultPrivacyAgreementBinding f9826d;

    public DefaultPrivacyView(String localKey, int i, String privacyAgreementId) {
        kotlin.jvm.internal.r.e(localKey, "localKey");
        kotlin.jvm.internal.r.e(privacyAgreementId, "privacyAgreementId");
        this.f9825a = localKey;
        this.b = i;
        this.c = privacyAgreementId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(View view) {
        AppUtils.t(view.getContext(), PrivacyAgreementUtil.f9584a.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(View view) {
        AppUtils.t(view.getContext(), PrivacyAgreementUtil.f9584a.a());
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean a() {
        return PrivacyAgreementDialog.a.C0162a.a(this);
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public String b() {
        return "同意并使用";
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean c() {
        if (!isSync()) {
            return new PrivacyAgreementApi().m(this.b, this.c);
        }
        cn.mucang.android.jiakaoyi.framework.utils.i0.i(this.f9825a, true);
        return true;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public String d() {
        return "放弃并退出";
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean e() {
        Object objM139constructorimpl;
        if (isSync()) {
            return cn.mucang.android.jiakaoyi.framework.utils.i0.b(this.f9825a, false);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(new PrivacyAgreementApi().o(this.b, this.c));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        PrivacyAgreementModel privacyAgreementModel = (PrivacyAgreementModel) objM139constructorimpl;
        if (privacyAgreementModel == null) {
            return false;
        }
        return privacyAgreementModel.confirm;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean f() {
        return true;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public View g(ViewGroup parent, LayoutInflater inflater) {
        kotlin.jvm.internal.r.e(parent, "parent");
        kotlin.jvm.internal.r.e(inflater, "inflater");
        LayoutDefaultPrivacyAgreementBinding layoutDefaultPrivacyAgreementBindingInflate = LayoutDefaultPrivacyAgreementBinding.inflate(inflater, parent, false);
        kotlin.jvm.internal.r.d(layoutDefaultPrivacyAgreementBindingInflate, "inflate(inflater, parent, false)");
        this.f9826d = layoutDefaultPrivacyAgreementBindingInflate;
        if (layoutDefaultPrivacyAgreementBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        layoutDefaultPrivacyAgreementBindingInflate.appName.setText("感谢您使用" + MucangConfig.getContext().getResources().getString(R.string.app_name) + '!');
        LayoutDefaultPrivacyAgreementBinding layoutDefaultPrivacyAgreementBinding = this.f9826d;
        if (layoutDefaultPrivacyAgreementBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        layoutDefaultPrivacyAgreementBinding.privacy.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultPrivacyView.h(view);
            }
        });
        LayoutDefaultPrivacyAgreementBinding layoutDefaultPrivacyAgreementBinding2 = this.f9826d;
        if (layoutDefaultPrivacyAgreementBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        layoutDefaultPrivacyAgreementBinding2.agreement.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.dialog.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DefaultPrivacyView.i(view);
            }
        });
        LayoutDefaultPrivacyAgreementBinding layoutDefaultPrivacyAgreementBinding3 = this.f9826d;
        if (layoutDefaultPrivacyAgreementBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        LinearLayout root = layoutDefaultPrivacyAgreementBinding3.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.root");
        return root;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean isSync() {
        return this.f9825a.length() > 0;
    }
}
