package cn.mucang.android.jiakaoyi.teachingk2.login.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogPrivacyNonPerceiveBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.LoginHelper;
import cn.mucang.jiakaoyi.uilib.api.PrivacyAgreementApi;
import cn.mucang.jiakaoyi.uilib.login.model.DeviceType;
import cn.mucang.jiakaoyi.uilib.model.PrivacyAgreementModel;
import cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog;
import kotlin.Metadata;
import kotlin.Result;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.ui.h0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/NonPerceivePrivacyView;", "Lcn/mucang/jiakaoyi/uilib/ui/dialog/PrivacyAgreementDialog$IPrivacyView;", "()V", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogPrivacyNonPerceiveBinding;", "confirmRead", "", "createView", "Landroid/view/View;", "parent", "Landroid/view/ViewGroup;", "inflater", "Landroid/view/LayoutInflater;", "getCancelText", "", "getConfirmText", "isConfirmRead", "isRequired", "isSync", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NonPerceivePrivacyView implements PrivacyAgreementDialog.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private DialogPrivacyNonPerceiveBinding f7383a;

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean a() {
        return PrivacyAgreementDialog.a.C0162a.a(this);
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public String b() {
        String strA = k0.a(R.string.teachbase_agree_use);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_agree_use)");
        return strA;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean c() {
        LoginHelper.f7296a.f(true);
        return new PrivacyAgreementApi().m(DeviceType.ROBOT.getType(), "privacy_non_perceive_login");
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public String d() {
        String strA = k0.a(R.string.teachbase_disagree);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_disagree)");
        return strA;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean e() {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(new PrivacyAgreementApi().o(DeviceType.ROBOT.getType(), "privacy_non_perceive_login"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m145isFailureimpl(objM139constructorimpl)) {
            objM139constructorimpl = null;
        }
        PrivacyAgreementModel privacyAgreementModel = (PrivacyAgreementModel) objM139constructorimpl;
        boolean z = privacyAgreementModel == null ? false : privacyAgreementModel.confirm;
        cn.mucang.android.core.utils.t.h("www", kotlin.jvm.internal.r.m("NonPerceivePrivacyView:", Boolean.valueOf(z)));
        if (!z) {
            cn.mucang.android.jiakaoyi.framework.log.f.g("未同意无感人脸登录隐私协议");
        }
        LoginHelper.f7296a.f(z);
        return z;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean f() {
        return false;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public View g(ViewGroup parent, LayoutInflater inflater) {
        kotlin.jvm.internal.r.e(parent, "parent");
        kotlin.jvm.internal.r.e(inflater, "inflater");
        DialogPrivacyNonPerceiveBinding dialogPrivacyNonPerceiveBindingInflate = DialogPrivacyNonPerceiveBinding.inflate(inflater, parent, false);
        kotlin.jvm.internal.r.d(dialogPrivacyNonPerceiveBindingInflate, "inflate(inflater, parent, false)");
        this.f7383a = dialogPrivacyNonPerceiveBindingInflate;
        if (dialogPrivacyNonPerceiveBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        LinearLayout root = dialogPrivacyNonPerceiveBindingInflate.getRoot();
        kotlin.jvm.internal.r.d(root, "viewBinding.root");
        return root;
    }

    @Override // cn.mucang.jiakaoyi.uilib.ui.dialog.PrivacyAgreementDialog.a
    public boolean isSync() {
        return false;
    }
}
