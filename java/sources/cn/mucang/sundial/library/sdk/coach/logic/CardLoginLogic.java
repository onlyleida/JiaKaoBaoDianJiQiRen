package cn.mucang.sundial.library.sdk.coach.logic;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import cn.mucang.sundial.android.PersonMode;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.upload.EventType;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.databinding.TtLayoutLoginCardBinding;
import cn.mucang.sundial.library.entity.CheckMode;
import cn.mucang.sundial.library.entity.ExtraKey;
import cn.mucang.sundial.library.sdk.coach.CoachFaceCheckActivity;
import cn.mucang.sundial.library.tts.Tts;
import cn.mucang.sundial.library.util.ToastUtil;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.blankj.utilcode.util.Utils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\t\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;", "Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;", "Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;", "Lkotlin/v;", "login", "()V", "", "interruptToRegister", "()Z", "init", "fromUser", TtmlNode.START, "(Z)V", "binding", "<init>", "(Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class CardLoginLogic extends BaseLogic<TtLayoutLoginCardBinding> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardLoginLogic(TtLayoutLoginCardBinding binding) {
        super(binding);
        r.e(binding, "binding");
    }

    private final boolean interruptToRegister() {
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        boolean zIsRegister = sundialManager.isRegister();
        if (!zIsRegister) {
            Application applicationD = Utils.d();
            r.d(applicationD, "Utils.getApp()");
            Resources resources = applicationD.getResources();
            int i = R.string.tt_please_register_device;
            SundialLog.normal(resources.getText(i));
            ToastUtil.INSTANCE.showToastOnce(i);
            String string = Utils.d().getString(i);
            r.d(string, "Utils.getApp().getString…t_please_register_device)");
            Tts.speak$default(string, null, 2, null);
        }
        return !zIsRegister;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void login() {
        EditText editText = getBinding().idEt;
        r.d(editText, "binding.idEt");
        String string = editText.getText().toString();
        if (n0.e(string)) {
            TextView textView = getBinding().tvErrTip;
            r.d(textView, "binding.tvErrTip");
            textView.setText("请输入登录账号");
            u.h("请输入登录账号");
            return;
        }
        TextView textView2 = getBinding().tvErrTip;
        r.d(textView2, "binding.tvErrTip");
        textView2.setText("");
        SundialLog.normal("点击登录按钮");
        if (interruptToRegister()) {
            return;
        }
        Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
        String string2 = StringsKt__StringsKt.J0(string).toString();
        if (string2.length() == 0) {
            Application applicationD = Utils.d();
            r.d(applicationD, "Utils.getApp()");
            Resources resources = applicationD.getResources();
            int i = R.string.tt_please_input_id;
            SundialLog.normal(resources.getText(i));
            ToastUtil.INSTANCE.showToastOnce(i);
            return;
        }
        if (!DeviceUtils.hasNetWork()) {
            Application applicationD2 = Utils.d();
            r.d(applicationD2, "Utils.getApp()");
            Resources resources2 = applicationD2.getResources();
            int i2 = R.string.tt_net_error;
            SundialLog.normal(resources2.getText(i2));
            String string3 = Utils.d().getString(i2);
            r.d(string3, "Utils.getApp().getString(R.string.tt_net_error)");
            Tts.speak$default(string3, null, 2, null);
            return;
        }
        Activity activityI = MucangConfig.i();
        Intent intent = new Intent(activityI, (Class<?>) CoachFaceCheckActivity.class);
        intent.putExtra(ExtraKey.personMode, PersonMode.COACH.ordinal());
        intent.putExtra(ExtraKey.checkMode, CheckMode.SIGN_IN.ordinal());
        intent.putExtra(ExtraKey.uploadEventType, EventType.COACH_SIGN_IN.valueOf());
        intent.putExtra(ExtraKey.idNum, string2);
        intent.putExtra(ExtraKey.authToken, "");
        v vVar = v.f15822a;
        activityI.startActivityForResult(intent, 1);
    }

    @Override // cn.mucang.sundial.library.sdk.coach.logic.BaseLogic
    public void init() {
        SundialNumKeyBoardView sundialNumKeyBoardView = getBinding().numKeyboard;
        EditText editText = getBinding().idEt;
        r.d(editText, "binding.idEt");
        sundialNumKeyBoardView.bindEditText(editText);
        getBinding().loginTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.logic.CardLoginLogic.init.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CardLoginLogic.this.login();
            }
        });
        getBinding().eyeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.sdk.coach.logic.CardLoginLogic.init.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImageView imageView = CardLoginLogic.this.getBinding().eyeIv;
                r.d(imageView, "binding.eyeIv");
                ImageView imageView2 = CardLoginLogic.this.getBinding().eyeIv;
                r.d(imageView2, "binding.eyeIv");
                imageView.setSelected(!imageView2.isSelected());
                ImageView imageView3 = CardLoginLogic.this.getBinding().eyeIv;
                r.d(imageView3, "binding.eyeIv");
                if (imageView3.isSelected()) {
                    EditText editText2 = CardLoginLogic.this.getBinding().idEt;
                    r.d(editText2, "binding.idEt");
                    editText2.setInputType(l.Receive_GEAR_DATA2);
                    EditText editText3 = CardLoginLogic.this.getBinding().idEt;
                    r.d(editText3, "binding.idEt");
                    editText3.setTypeface(Typeface.DEFAULT);
                } else {
                    EditText editText4 = CardLoginLogic.this.getBinding().idEt;
                    r.d(editText4, "binding.idEt");
                    editText4.setInputType(129);
                    EditText editText5 = CardLoginLogic.this.getBinding().idEt;
                    r.d(editText5, "binding.idEt");
                    editText5.setTypeface(Typeface.DEFAULT);
                }
                EditText editText6 = CardLoginLogic.this.getBinding().idEt;
                EditText editText7 = CardLoginLogic.this.getBinding().idEt;
                r.d(editText7, "binding.idEt");
                editText6.setSelection(editText7.getText().length());
            }
        });
        if (MucangConfig.v()) {
            new Thread(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.logic.CardLoginLogic.init.3
                @Override // java.lang.Runnable
                public final void run() {
                    SundialManager sundialManager = SundialManager.getInstance();
                    r.d(sundialManager, "SundialManager.getInstance()");
                    CoachInfo lastCoach = sundialManager.getLastCoach();
                    final String idCard = lastCoach != null ? lastCoach.getIdCard() : null;
                    u.c(new Runnable() { // from class: cn.mucang.sundial.library.sdk.coach.logic.CardLoginLogic.init.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            String str = idCard;
                            if (str == null || t.r(str)) {
                                return;
                            }
                            CardLoginLogic.this.getBinding().idEt.setText(idCard);
                        }
                    });
                }
            }).start();
        }
    }

    @Override // cn.mucang.sundial.library.sdk.coach.logic.BaseLogic
    public void start(boolean fromUser) {
        super.start(fromUser);
        if (fromUser) {
            EditText editText = getBinding().idEt;
            r.d(editText, "binding.idEt");
            if (!ViewCompat.isLaidOut(editText) || editText.isLayoutRequested()) {
                editText.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: cn.mucang.sundial.library.sdk.coach.logic.CardLoginLogic$start$$inlined$doOnLayout$1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                        r.e(view, "view");
                        view.removeOnLayoutChangeListener(this);
                        EditText editText2 = this.this$0.getBinding().idEt;
                        r.d(editText2, "binding.idEt");
                        editText2.setFocusable(true);
                        EditText editText3 = this.this$0.getBinding().idEt;
                        r.d(editText3, "binding.idEt");
                        editText3.setFocusableInTouchMode(true);
                        this.this$0.getBinding().idEt.findFocus();
                        this.this$0.getBinding().idEt.requestFocus();
                    }
                });
                return;
            }
            EditText editText2 = getBinding().idEt;
            r.d(editText2, "binding.idEt");
            editText2.setFocusable(true);
            EditText editText3 = getBinding().idEt;
            r.d(editText3, "binding.idEt");
            editText3.setFocusableInTouchMode(true);
            getBinding().idEt.findFocus();
            getBinding().idEt.requestFocus();
        }
    }
}
