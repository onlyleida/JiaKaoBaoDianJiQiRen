package cn.mucang.sundial.library.sdk.coach.logic;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewGroupKt;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityCoachLoginBinding;
import cn.mucang.sundial.library.databinding.TtLayoutLoginCardBinding;
import cn.mucang.sundial.library.databinding.TtLayoutLoginScanBinding;
import cn.mucang.sundial.library.sdk.coach.CoachLoginActivity;
import cn.mucang.sundial.library.sdk.coach.LoginType;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b)\u0010*J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0010J\u0019\u0010\u0015\u001a\u00020\u00062\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u0019R\u0019\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR:\u0010\"\u001a&\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u0006\u0012\u0002\b\u00030 0\u001fj\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u0006\u0012\u0002\b\u00030 `!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0019\u0010%\u001a\u00020$8\u0006@\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006+"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;", "Landroid/view/View$OnClickListener;", "Lcn/mucang/sundial/library/sdk/coach/LoginType;", "loginMethod", "", "fromUser", "Lkotlin/v;", "select", "(Lcn/mucang/sundial/library/sdk/coach/LoginType;Z)V", "createLogic", "(Lcn/mucang/sundial/library/sdk/coach/LoginType;)V", "", "loginType", "init", "(Ljava/util/List;)V", "onResume", "()V", "onPause", "onDestroy", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "selectType", "Lcn/mucang/sundial/library/sdk/coach/LoginType;", "Ljava/util/List;", "Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;", "activity", "Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;", "getActivity", "()Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;", "Ljava/util/HashMap;", "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;", "Lkotlin/collections/HashMap;", "logicList", "Ljava/util/HashMap;", "Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;", "viewBinding", "Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;", "getViewBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;", "<init>", "(Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class LoginTabLogic implements View.OnClickListener {
    private final CoachLoginActivity activity;
    private final HashMap<LoginType, BaseLogic<?>> logicList;
    private List<? extends LoginType> loginType;
    private LoginType selectType;
    private final TtActivityCoachLoginBinding viewBinding;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 1, 15})
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginType.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[LoginType.QR_CODE.ordinal()] = 1;
        }
    }

    public LoginTabLogic(CoachLoginActivity activity, TtActivityCoachLoginBinding viewBinding) {
        r.e(activity, "activity");
        r.e(viewBinding, "viewBinding");
        this.activity = activity;
        this.viewBinding = viewBinding;
        this.logicList = new HashMap<>();
    }

    private final void createLogic(LoginType loginMethod) {
        BaseLogic<?> scanLoginLogic;
        if (WhenMappings.$EnumSwitchMapping$0[loginMethod.ordinal()] != 1) {
            TtLayoutLoginCardBinding ttLayoutLoginCardBinding = this.viewBinding.cardLayout;
            r.d(ttLayoutLoginCardBinding, "viewBinding.cardLayout");
            scanLoginLogic = new CardLoginLogic(ttLayoutLoginCardBinding);
        } else {
            TtLayoutLoginScanBinding ttLayoutLoginScanBinding = this.viewBinding.scanLayout;
            r.d(ttLayoutLoginScanBinding, "viewBinding.scanLayout");
            scanLoginLogic = new ScanLoginLogic(ttLayoutLoginScanBinding);
        }
        scanLoginLogic.init();
        this.logicList.put(loginMethod, scanLoginLogic);
    }

    private final void select(LoginType loginMethod, boolean fromUser) {
        LinearLayout linearLayout = this.viewBinding.tabLl;
        r.d(linearLayout, "viewBinding.tabLl");
        Iterator<View> it = ViewGroupKt.getChildren(linearLayout).iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            View next = it.next();
            Object tag = next.getTag();
            if (!(tag instanceof LoginType)) {
                tag = null;
            }
            if (loginMethod != ((LoginType) tag)) {
                z = false;
            }
            next.setSelected(z);
        }
        BaseLogic<?> baseLogic = this.logicList.get(this.selectType);
        if (baseLogic != null) {
            baseLogic.stop(true);
        }
        BaseLogic<?> baseLogic2 = this.logicList.get(loginMethod);
        if (baseLogic2 != null) {
            baseLogic2.start(fromUser);
        }
        this.selectType = loginMethod;
    }

    static /* synthetic */ void select$default(LoginTabLogic loginTabLogic, LoginType loginType, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        loginTabLogic.select(loginType, z);
    }

    public final CoachLoginActivity getActivity() {
        return this.activity;
    }

    public final TtActivityCoachLoginBinding getViewBinding() {
        return this.viewBinding;
    }

    public final void init(List<? extends LoginType> loginType) {
        r.e(loginType, "loginType");
        LinearLayout linearLayout = this.viewBinding.tabLl;
        r.d(linearLayout, "viewBinding.tabLl");
        if (linearLayout.getChildCount() > 0) {
            return;
        }
        this.loginType = loginType;
        if (loginType.size() == 1) {
            View view = this.viewBinding.tabBg;
            r.d(view, "viewBinding.tabBg");
            view.setVisibility(8);
            LinearLayout linearLayout2 = this.viewBinding.tabLl;
            r.d(linearLayout2, "viewBinding.tabLl");
            linearLayout2.setVisibility(8);
            TextView textView = this.viewBinding.singleTv;
            r.d(textView, "viewBinding.singleTv");
            textView.setVisibility(0);
            TextView textView2 = this.viewBinding.singleTv;
            r.d(textView2, "viewBinding.singleTv");
            textView2.setText(((LoginType) s.c0(loginType)).getDesc());
            createLogic((LoginType) s.c0(loginType));
        } else {
            View view2 = this.viewBinding.tabBg;
            r.d(view2, "viewBinding.tabBg");
            view2.setVisibility(0);
            LinearLayout linearLayout3 = this.viewBinding.tabLl;
            r.d(linearLayout3, "viewBinding.tabLl");
            linearLayout3.setVisibility(0);
            TextView textView3 = this.viewBinding.singleTv;
            r.d(textView3, "viewBinding.singleTv");
            textView3.setVisibility(8);
            for (LoginType loginType2 : loginType) {
                View viewInflate = LayoutInflater.from(this.activity).inflate(R.layout.tt__layout_login_tab, (ViewGroup) this.viewBinding.tabLl, false);
                Objects.requireNonNull(viewInflate, "null cannot be cast to non-null type android.widget.TextView");
                TextView textView4 = (TextView) viewInflate;
                textView4.setText(loginType2.getDesc());
                textView4.setTag(loginType2);
                textView4.setOnClickListener(this);
                this.viewBinding.tabLl.addView(textView4);
                createLogic(loginType2);
            }
        }
        select$default(this, (LoginType) s.c0(loginType), false, 2, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        LoginType loginType = this.selectType;
        Object tag = v != null ? v.getTag() : null;
        if (!(tag instanceof LoginType)) {
            tag = null;
        }
        if (loginType == ((LoginType) tag)) {
            return;
        }
        Object tag2 = v != null ? v.getTag() : null;
        Objects.requireNonNull(tag2, "null cannot be cast to non-null type cn.mucang.sundial.library.sdk.coach.LoginType");
        select((LoginType) tag2, true);
    }

    public final void onDestroy() {
        Collection<BaseLogic<?>> collectionValues = this.logicList.values();
        r.d(collectionValues, "logicList.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((BaseLogic) it.next()).release();
        }
    }

    public final void onPause() {
        BaseLogic<?> baseLogic = this.logicList.get(this.selectType);
        if (baseLogic != null) {
            baseLogic.stop(false);
        }
    }

    public final void onResume() {
        BaseLogic<?> baseLogic = this.logicList.get(this.selectType);
        if (baseLogic != null) {
            BaseLogic.start$default(baseLogic, false, 1, null);
        }
    }
}
