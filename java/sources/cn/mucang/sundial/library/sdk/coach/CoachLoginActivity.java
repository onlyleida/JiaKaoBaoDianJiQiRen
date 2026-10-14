package cn.mucang.sundial.library.sdk.coach;

import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.a.a;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtActivityCoachLoginBinding;
import cn.mucang.sundial.library.sdk.coach.logic.LoginTabLogic;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ClickController;
import cn.mucang.sundial.library.util.KtxsKt;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import f.a.a.a.viewbinding.ViewBindingLazy;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.u;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u0019\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J)\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/CoachLoginActivity;", "Lcn/mucang/sundial/library/sdk/coach/TopBaseActivity;", "Lkotlin/v;", "initView", "()V", "", "isSoftShowing", "()Z", "initData", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/os/Bundle;)Landroid/view/View;", "onResume", "onPause", "onDestroy", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "", Constant.LOGIN_ACTIVITY_REQUEST_CODE, "resultCode", "data", "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;", "binding$delegate", "Lkotlin/f;", "getBinding", "()Lcn/mucang/sundial/library/databinding/TtActivityCoachLoginBinding;", "binding", "Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;", "loginTabLogic", "Lcn/mucang/sundial/library/sdk/coach/logic/LoginTabLogic;", "<init>", "library_release"}, k = 1, mv = {1, 1, 15})
public class CoachLoginActivity extends TopBaseActivity {

    /* JADX INFO: renamed from: binding$delegate, reason: from kotlin metadata */
    private final Lazy binding = new ViewBindingLazy(TtActivityCoachLoginBinding.class, new ViewBindingLazy.a() { // from class: cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$$special$$inlined$viewBinding$1
        @Override // f.a.a.a.viewbinding.ViewBindingLazy.a
        public LayoutInflater get() {
            LayoutInflater layoutInflater = this.getLayoutInflater();
            r.d(layoutInflater, "layoutInflater");
            return layoutInflater;
        }
    });
    private LoginTabLogic loginTabLogic;

    private final TtActivityCoachLoginBinding getBinding() {
        return (TtActivityCoachLoginBinding) this.binding.getValue();
    }

    private final void initView() {
        View decorView;
        Window window = getWindow();
        if (window != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(2822);
        }
        TtActivityCoachLoginBinding binding = getBinding();
        binding.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$$inlined$with$lambda$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        TextView closeIv = binding.closeIv;
        r.d(closeIv, "closeIv");
        KtxsKt.setDrawableLeft(closeIv, R.drawable.tt__guide_ic_back, (int) getResources().getDimension(R.dimen.rpx_38));
        binding.skipped.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.CoachLoginActivity$initView$$inlined$with$lambda$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.this$0.finish();
            }
        });
        binding.titleIv.setOnClickListener(new CoachLoginActivity$initView$$inlined$with$lambda$3(binding, new ClickController(5), this));
        LoginTabLogic loginTabLogic = new LoginTabLogic(this, getBinding());
        this.loginTabLogic = loginTabLogic;
        if (loginTabLogic != null) {
            loginTabLogic.init(u.m(LoginType.QR_CODE, LoginType.ID_CARD));
        }
        SundialLog.normal("教练员登录");
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        if (sundialManager.isRegister()) {
            return;
        }
        Tts.speak$default("请先注册终端", null, 2, null);
        cn.mucang.android.core.utils.u.h("请先注册终端");
    }

    private final boolean isSoftShowing() {
        Window window = getWindow();
        r.d(window, "this.window");
        View decorView = window.getDecorView();
        r.d(decorView, "this.window.decorView");
        int height = decorView.getHeight();
        Rect rect = new Rect();
        Window window2 = getWindow();
        r.d(window2, "this.window");
        window2.getDecorView().getWindowVisibleDisplayFrame(rect);
        return (height * 2) / 3 > rect.bottom;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        InputMethodManager inputMethodManager;
        r.e(ev, "ev");
        if (ev.getAction() == 0 && isSoftShowing() && (inputMethodManager = (InputMethodManager) a.i(this, InputMethodManager.class)) != null) {
            ConstraintLayout root = getBinding().getRoot();
            r.d(root, "binding.root");
            inputMethodManager.hideSoftInputFromWindow(root.getWindowToken(), 0);
        }
        return super.dispatchTouchEvent(ev);
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public void initData() {
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public void initViewModel() {
    }

    @Override // androidx.fragment.app.d, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        boolean z = true;
        if (requestCode != 1) {
            if (requestCode == 3) {
                setResult(resultCode);
                if (resultCode == -1) {
                    SundialLog.normal("关闭登录页面");
                    setResult(-1);
                    finish();
                    return;
                }
                return;
            }
            return;
        }
        if (resultCode == -1) {
            SundialLog.normal("跳转教练页面");
            setResult(-1);
            finish();
            return;
        }
        String stringExtra = data != null ? data.getStringExtra(SocialConstants.PARAM_SEND_MSG) : null;
        if (stringExtra != null && stringExtra.length() != 0) {
            z = false;
        }
        if (z) {
            return;
        }
        TextView textView = getBinding().cardLayout.tvErrTip;
        r.d(textView, "binding.cardLayout.tvErrTip");
        textView.setText(stringExtra);
    }

    @Override // cn.mucang.sundial.library.sdk.coach.TopBaseActivity
    public View onCreateView(Bundle savedInstanceState) {
        initView();
        ConstraintLayout root = getBinding().getRoot();
        r.d(root, "binding.root");
        return root;
    }

    @Override // androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LoginTabLogic loginTabLogic = this.loginTabLogic;
        if (loginTabLogic != null) {
            loginTabLogic.onDestroy();
        }
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            initView();
        }
    }

    @Override // cn.mucang.sundial.library.activity.TopActivity, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        LoginTabLogic loginTabLogic = this.loginTabLogic;
        if (loginTabLogic != null) {
            loginTabLogic.onPause();
        }
    }

    @Override // androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        LoginTabLogic loginTabLogic = this.loginTabLogic;
        if (loginTabLogic != null) {
            loginTabLogic.onResume();
        }
    }
}
