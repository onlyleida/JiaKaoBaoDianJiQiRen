package cn.mucang.jiakaoyi.uilib.sso;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a0;
import androidx.lifecycle.m0;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import com.mucang.android.jiakaoyi.uilib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.DialogSsoLoginBinding;
import kotlin.Metadata;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginFragment;", "Landroidx/fragment/app/DialogFragment;", "()V", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "ssoLoginViewModel", "Lcn/mucang/jiakaoyi/uilib/sso/SsoLoginViewModel;", "viewBinding", "Lcom/mucang/android/jiakaoyi/uilib/databinding/DialogSsoLoginBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onViewCreated", "view", "scanFinish", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/jiakaoyi/uilib/sso/SsoUserModel;", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SsoLoginFragment extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.framework.h.b<String> f9738a;
    private DialogSsoLoginBinding b;
    private SsoLoginViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private JLoadingDialog f9739d;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f9740a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f9740a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(SsoLoginFragment this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SsoLoginViewModel ssoLoginViewModel = this$0.c;
        if (ssoLoginViewModel != null) {
            ssoLoginViewModel.p();
        } else {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(SsoLoginFragment this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(SsoLoginFragment this$0, SsoUserModel result) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int status = result.getStatus();
        if (status == 0) {
            DialogSsoLoginBinding dialogSsoLoginBinding = this$0.b;
            if (dialogSsoLoginBinding != null) {
                dialogSsoLoginBinding.tipTv.setText("请使用微信或钉钉扫码");
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (status == 1) {
            DialogSsoLoginBinding dialogSsoLoginBinding2 = this$0.b;
            if (dialogSsoLoginBinding2 != null) {
                dialogSsoLoginBinding2.tipTv.setText("请在钉钉或微信上确认登录");
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (status == 3) {
            DialogSsoLoginBinding dialogSsoLoginBinding3 = this$0.b;
            if (dialogSsoLoginBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            dialogSsoLoginBinding3.qrCodeErrorFl.setVisibility(0);
            DialogSsoLoginBinding dialogSsoLoginBinding4 = this$0.b;
            if (dialogSsoLoginBinding4 != null) {
                dialogSsoLoginBinding4.tipTv.setText("二维码已过期，请点击生成二维码");
                return;
            } else {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
        }
        if (status != 4) {
            kotlin.jvm.internal.r.d(result, "result");
            this$0.G(result);
            return;
        }
        DialogSsoLoginBinding dialogSsoLoginBinding5 = this$0.b;
        if (dialogSsoLoginBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSsoLoginBinding5.qrCodeErrorFl.setVisibility(0);
        DialogSsoLoginBinding dialogSsoLoginBinding6 = this$0.b;
        if (dialogSsoLoginBinding6 != null) {
            dialogSsoLoginBinding6.tipTv.setText("已取消登录，请点击生成二维码");
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(SsoLoginFragment this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : a.f9740a[loadingState.ordinal()];
        if (i == 1) {
            Context context = this$0.getContext();
            if (context == null) {
                return;
            }
            JLoadingDialog jLoadingDialog = new JLoadingDialog(context);
            this$0.f9739d = jLoadingDialog;
            if (jLoadingDialog != null) {
                jLoadingDialog.b("");
                return;
            } else {
                kotlin.jvm.internal.r.u("loadingDialog");
                throw null;
            }
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog2 = this$0.f9739d;
            if (jLoadingDialog2 != null) {
                jLoadingDialog2.dismiss();
                return;
            } else {
                kotlin.jvm.internal.r.u("loadingDialog");
                throw null;
            }
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog3 = this$0.f9739d;
        if (jLoadingDialog3 != null) {
            jLoadingDialog3.dismiss();
        } else {
            kotlin.jvm.internal.r.u("loadingDialog");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(SsoLoginFragment this$0, ErrorStatus errorStatus) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogSsoLoginBinding dialogSsoLoginBinding = this$0.b;
        if (dialogSsoLoginBinding != null) {
            dialogSsoLoginBinding.qrCodeErrorFl.setVisibility(0);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(SsoLoginFragment this$0, SsoLoginModel ssoLoginModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new SsoLoginFragment$onViewCreated$7$1(ssoLoginModel, this$0, null), 3, null);
    }

    private final void G(SsoUserModel ssoUserModel) {
        cn.mucang.android.jiakaoyi.framework.h.b<String> bVar = this.f9738a;
        if (bVar == null) {
            return;
        }
        bVar.callback(ssoUserModel.getUserToken());
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(SsoLoginFragment this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SsoLoginViewModel ssoLoginViewModel = this$0.c;
        if (ssoLoginViewModel != null) {
            ssoLoginViewModel.p();
        } else {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(2, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        DialogSsoLoginBinding dialogSsoLoginBindingInflate = DialogSsoLoginBinding.inflate(inflater);
        kotlin.jvm.internal.r.d(dialogSsoLoginBindingInflate, "inflate(inflater)");
        this.b = dialogSsoLoginBindingInflate;
        if (dialogSsoLoginBindingInflate != null) {
            return dialogSsoLoginBindingInflate.getRoot();
        }
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        androidx.lifecycle.j0 j0VarA = new m0(this).a(SsoLoginViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this).…ginViewModel::class.java)");
        this.c = (SsoLoginViewModel) j0VarA;
        DialogSsoLoginBinding dialogSsoLoginBinding = this.b;
        if (dialogSsoLoginBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSsoLoginBinding.qrCodeErrorFl.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SsoLoginFragment.z(this.f9760a, view2);
            }
        });
        DialogSsoLoginBinding dialogSsoLoginBinding2 = this.b;
        if (dialogSsoLoginBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSsoLoginBinding2.refresh.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SsoLoginFragment.A(this.f9761a, view2);
            }
        });
        DialogSsoLoginBinding dialogSsoLoginBinding3 = this.b;
        if (dialogSsoLoginBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogSsoLoginBinding3.closeDialog.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.jiakaoyi.uilib.sso.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SsoLoginFragment.B(this.f9757a, view2);
            }
        });
        SsoLoginViewModel ssoLoginViewModel = this.c;
        if (ssoLoginViewModel == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel.p();
        SsoLoginViewModel ssoLoginViewModel2 = this.c;
        if (ssoLoginViewModel2 == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel2.o().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SsoLoginFragment.C(this.f9755a, (SsoUserModel) obj);
            }
        });
        SsoLoginViewModel ssoLoginViewModel3 = this.c;
        if (ssoLoginViewModel3 == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel3.a().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.m
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SsoLoginFragment.D(this.f9759a, (LoadingState) obj);
            }
        });
        SsoLoginViewModel ssoLoginViewModel4 = this.c;
        if (ssoLoginViewModel4 == null) {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
        ssoLoginViewModel4.m().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.l
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                SsoLoginFragment.E(this.f9758a, (ErrorStatus) obj);
            }
        });
        SsoLoginViewModel ssoLoginViewModel5 = this.c;
        if (ssoLoginViewModel5 != null) {
            ssoLoginViewModel5.n().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.jiakaoyi.uilib.sso.j
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    SsoLoginFragment.F(this.f9756a, (SsoLoginModel) obj);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("ssoLoginViewModel");
            throw null;
        }
    }
}
