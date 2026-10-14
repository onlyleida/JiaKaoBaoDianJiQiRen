package cn.mucang.android.jiakaoyi.teachingk2.login.logic;

import android.graphics.Typeface;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.LayoutLoginCardBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.widget.NumKeyBoardView;
import cn.mucang.jiakaoyi.uilib.login.LoginManager;
import cn.mucang.jiakaoyi.uilib.login.model.AnyLoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.logic.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/CardLoginLogic;", "Lcn/mucang/android/jiakaoyi/k3setting/login/BaseLogic;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;", "binding", "(Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutLoginCardBinding;)V", "init", "", "login", TtmlNode.START, "fromUser", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CardLoginLogic extends BaseLogic<LayoutLoginCardBinding> {

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.logic.p$a */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t*\u0001\u0000\b\n\u0018\u00002\u00020\u0001JP\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0016¨\u0006\u000f¸\u0006\u0010"}, d2 = {"androidx/core/view/ViewKt$doOnNextLayout$1", "Landroid/view/View$OnLayoutChangeListener;", "onLayoutChange", "", "view", "Landroid/view/View;", TtmlNode.LEFT, "", "top", TtmlNode.RIGHT, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "core-ktx_release", "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements View.OnLayoutChangeListener {
        public a() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
            r.e(view, "view");
            view.removeOnLayoutChangeListener(this);
            CardLoginLogic.this.d().idEt.setFocusable(true);
            CardLoginLogic.this.d().idEt.setFocusableInTouchMode(true);
            CardLoginLogic.this.d().idEt.findFocus();
            CardLoginLogic.this.d().idEt.requestFocus();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardLoginLogic(LayoutLoginCardBinding binding) {
        super(binding);
        r.e(binding, "binding");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(CardLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(CardLoginLogic this$0, View view) {
        r.e(this$0, "this$0");
        this$0.d().eyeIv.setSelected(!this$0.d().eyeIv.isSelected());
        if (this$0.d().eyeIv.isSelected()) {
            this$0.d().idEt.setInputType(cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA2);
            this$0.d().idEt.setTypeface(Typeface.DEFAULT);
        } else {
            this$0.d().idEt.setInputType(129);
            this$0.d().idEt.setTypeface(Typeface.DEFAULT);
        }
        this$0.d().idEt.setSelection(this$0.d().idEt.getText().length());
    }

    private final void p() {
        String string = d().idEt.getText().toString();
        if (!n0.e(string)) {
            d().tvErrTip.setText("");
            LoginManager.i(c(), LoginType.MOBILE_OR_IDCARD, new AnyLoginData(string), new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.c
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    CardLoginLogic.q(this.f7333a, (String) obj);
                }
            });
        } else {
            TextView textView = d().tvErrTip;
            int i = R.string.teachbase_enter_account;
            textView.setText(k0.a(i));
            u.h(k0.a(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(CardLoginLogic this$0, String str) {
        r.e(this$0, "this$0");
        this$0.d().tvErrTip.setText(str);
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void f() {
        if (f0.d()) {
            d().loginTv.setBackgroundResource(R.drawable.bg_login_btn_ug);
            d().llAccount.setBackgroundResource(R.drawable.bg_login_account_edit_ug);
        }
        NumKeyBoardView numKeyBoardView = d().numKeyboard;
        EditText editText = d().idEt;
        r.d(editText, "binding.idEt");
        numKeyBoardView.bindEditText(editText);
        d().loginTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CardLoginLogic.k(this.f7331a, view);
            }
        });
        d().eyeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.login.logic.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CardLoginLogic.l(this.f7332a, view);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.login.BaseLogic
    public void h(boolean z) {
        super.h(z);
        if (z) {
            EditText editText = d().idEt;
            r.d(editText, "binding.idEt");
            if (!ViewCompat.isLaidOut(editText) || editText.isLayoutRequested()) {
                editText.addOnLayoutChangeListener(new a());
                return;
            }
            d().idEt.setFocusable(true);
            d().idEt.setFocusableInTouchMode(true);
            d().idEt.findFocus();
            d().idEt.requestFocus();
        }
    }
}
