package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewGroupKt;
import cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityLoginBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginCardBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginFaceBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginScanBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginTimingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000bH\u0002J\u0014\u0010\u0016\u001a\u00020\u00142\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0018J\u0012\u0010\u0019\u001a\u00020\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0006\u0010\u001c\u001a\u00020\u0014J\u0006\u0010\u001d\u001a\u00020\u0014J\u0006\u0010\u001e\u001a\u00020\u0014J\u001a\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000b2\b\b\u0002\u0010 \u001a\u00020!H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR2\u0010\t\u001a&\u0012\u0004\u0012\u00020\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\nj\u0012\u0012\u0004\u0012\u00020\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f`\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/LoginTabLogic;", "Landroid/view/View$OnClickListener;", "activity", "Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;)V", "getActivity", "()Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;", "logicList", "Ljava/util/HashMap;", "Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;", "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;", "Lkotlin/collections/HashMap;", "loginTypeList", "", "selectType", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityLoginBinding;", "createLogic", "", "loginMethod", "init", "loginType", "", "onClick", "v", "Landroid/view/View;", "onDestroy", "onPause", "onResume", "select", "fromUser", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginTabLogic implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LoginActivity f7327a;
    private final ActivityLoginBinding b;
    private LoginType c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<LoginType, BaseLogic<?>> f7328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<LoginType> f7329e;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7330a;

        static {
            int[] iArr = new int[LoginType.values().length];
            iArr[LoginType.TAIZHOU.ordinal()] = 1;
            iArr[LoginType.FACE.ordinal()] = 2;
            iArr[LoginType.QR_CODE.ordinal()] = 3;
            f7330a = iArr;
        }
    }

    public LoginTabLogic(LoginActivity activity, ActivityLoginBinding viewBinding) {
        r.e(activity, "activity");
        r.e(viewBinding, "viewBinding");
        this.f7327a = activity;
        this.b = viewBinding;
        this.f7328d = new HashMap<>();
        this.f7329e = new ArrayList();
    }

    private final void c(LoginType loginType) {
        BaseLogic<?> timingLoginLogic;
        int i = a.f7330a[loginType.ordinal()];
        if (i == 1) {
            LayoutLoginTimingBinding layoutLoginTimingBinding = this.b.timingLayout;
            r.d(layoutLoginTimingBinding, "viewBinding.timingLayout");
            timingLoginLogic = new TimingLoginLogic(layoutLoginTimingBinding);
        } else if (i == 2) {
            LayoutLoginFaceBinding layoutLoginFaceBinding = this.b.faceLayout;
            r.d(layoutLoginFaceBinding, "viewBinding.faceLayout");
            timingLoginLogic = new FaceLoginLogic(layoutLoginFaceBinding, new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.LoginTabLogic$createLogic$logic$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    List list = this.this$0.f7329e;
                    LoginTabLogic loginTabLogic = this.this$0;
                    int i2 = 0;
                    for (Object obj : list) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            s.t();
                            throw null;
                        }
                        if (((LoginType) obj) == LoginType.FACE) {
                            LoginType loginType2 = (LoginType) s.f0(loginTabLogic.f7329e, i3);
                            if (loginType2 == null) {
                                loginType2 = (LoginType) s.c0(loginTabLogic.f7329e);
                            }
                            LoginTabLogic.k(loginTabLogic, loginType2, false, 2, null);
                            return;
                        }
                        i2 = i3;
                    }
                }
            }, new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.LoginTabLogic$createLogic$logic$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(this.this$0.c == LoginType.FACE);
                }
            });
        } else if (i != 3) {
            LayoutLoginCardBinding layoutLoginCardBinding = this.b.cardLayout;
            r.d(layoutLoginCardBinding, "viewBinding.cardLayout");
            timingLoginLogic = new CardLoginLogic(layoutLoginCardBinding);
        } else {
            LayoutLoginScanBinding layoutLoginScanBinding = this.b.scanLayout;
            r.d(layoutLoginScanBinding, "viewBinding.scanLayout");
            timingLoginLogic = new ScanLoginLogic(layoutLoginScanBinding, LoginType.QR_CODE);
        }
        timingLoginLogic.f();
        this.f7328d.put(loginType, timingLoginLogic);
    }

    private final void j(LoginType loginType, boolean z) {
        LinearLayout linearLayout = this.b.tabLl;
        r.d(linearLayout, "viewBinding.tabLl");
        Iterator<View> it = ViewGroupKt.getChildren(linearLayout).iterator();
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                break;
            }
            View next = it.next();
            Object tag = next.getTag();
            if (loginType != (tag instanceof LoginType ? (LoginType) tag : null)) {
                z2 = false;
            }
            next.setSelected(z2);
        }
        BaseLogic<?> baseLogic = this.f7328d.get(this.c);
        if (baseLogic != null) {
            baseLogic.j(true);
        }
        BaseLogic<?> baseLogic2 = this.f7328d.get(loginType);
        if (baseLogic2 != null) {
            baseLogic2.h(z);
        }
        this.c = loginType;
    }

    static /* synthetic */ void k(LoginTabLogic loginTabLogic, LoginType loginType, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        loginTabLogic.j(loginType, z);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final LoginActivity getF7327a() {
        return this.f7327a;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final ActivityLoginBinding getB() {
        return this.b;
    }

    public final void f(List<? extends LoginType> loginType) {
        r.e(loginType, "loginType");
        for (LoginType loginType2 : loginType) {
            if (loginType2 != LoginType.COACH_QR_CODE) {
                this.f7329e.add(loginType2);
            } else {
                TextView textView = getB().coachIv;
                r.d(textView, "viewBinding.coachIv");
                textView.setVisibility(0);
            }
        }
        if (this.f7329e.size() == 1) {
            this.b.tabBg.setVisibility(8);
            this.b.tabLl.setVisibility(8);
            this.b.singleTv.setVisibility(0);
            this.b.singleTv.setText(((LoginType) s.c0(this.f7329e)).getDesc());
            c((LoginType) s.c0(this.f7329e));
        } else {
            this.b.tabBg.setVisibility(0);
            this.b.tabLl.setVisibility(0);
            this.b.singleTv.setVisibility(8);
            for (LoginType loginType3 : this.f7329e) {
                View viewInflate = LayoutInflater.from(getF7327a()).inflate(R.layout.layout_login_tab, (ViewGroup) getB().tabLl, false);
                Objects.requireNonNull(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView2 = (TextView) viewInflate;
                textView2.setText(loginType3.getDesc());
                textView2.setTag(loginType3);
                textView2.setOnClickListener(this);
                getB().tabLl.addView(textView2);
                c(loginType3);
            }
        }
        LoginType loginType4 = (LoginType) s.c0(this.f7329e);
        LinearLayout linearLayout = this.b.tabLl;
        r.d(linearLayout, "viewBinding.tabLl");
        for (View view : ViewGroupKt.getChildren(linearLayout)) {
            Object tag = view.getTag();
            view.setSelected(loginType4 == (tag instanceof LoginType ? (LoginType) tag : null));
        }
        this.c = loginType4;
    }

    public final void g() {
        Collection<BaseLogic<?>> collectionValues = this.f7328d.values();
        r.d(collectionValues, "logicList.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((BaseLogic) it.next()).g();
        }
    }

    public final void h() {
        BaseLogic<?> baseLogic = this.f7328d.get(this.c);
        if (baseLogic == null) {
            return;
        }
        baseLogic.j(false);
    }

    public final void i() {
        BaseLogic<?> baseLogic = this.f7328d.get(this.c);
        if (baseLogic == null) {
            return;
        }
        BaseLogic.i(baseLogic, false, 1, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        LoginType loginType = this.c;
        Object tag = v == null ? null : v.getTag();
        if (loginType == (tag instanceof LoginType ? (LoginType) tag : null)) {
            return;
        }
        Object tag2 = v != null ? v.getTag() : null;
        Objects.requireNonNull(tag2, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.login.model.LoginType");
        j((LoginType) tag2, true);
    }
}
