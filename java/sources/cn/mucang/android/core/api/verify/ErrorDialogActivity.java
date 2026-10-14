package cn.mucang.android.core.api.verify;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.View;
import cn.mucang.android.core.config.n;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.framework.core.databinding.CoreApiVerifyActivityErrorDialogBinding;
import com.iflytek.cloud.SpeechConstant;
import f.a.a.a.activity.h;

/* JADX INFO: loaded from: classes.dex */
public class ErrorDialogActivity extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CoreApiVerifyActivityErrorDialogBinding f2422a;
    private a b;

    private class a extends CountDownTimer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f2423a;
        private String b;
        private String c;

        public a(long j, String str, String str2) {
            super(j, 1000L);
            boolean z = false;
            this.f2423a = false;
            this.b = str;
            this.c = str2;
            if (!n0.e(str) && str.contains("%d")) {
                z = true;
            }
            this.f2423a = z;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            h.e(this.c);
            ErrorDialogActivity.this.finish();
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            if (this.f2423a) {
                ErrorDialogActivity.this.f2422a.message.setText(String.format(this.b, Integer.valueOf((int) (j / 1000))));
            }
        }
    }

    private void h(final ErrorDialogParams errorDialogParams) {
        this.f2422a.title.setVisibility(n0.e(errorDialogParams.title) ? 8 : 0);
        this.f2422a.title.setText(errorDialogParams.title);
        this.f2422a.message.setVisibility(n0.e(errorDialogParams.message) ? 8 : 0);
        this.f2422a.message.setText(errorDialogParams.message);
        this.f2422a.ok.setVisibility(n0.e(errorDialogParams.okButton) ? 8 : 0);
        this.f2422a.ok.setText(errorDialogParams.okButton);
        this.f2422a.ok.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.api.verify.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2440a.j(errorDialogParams, view);
            }
        });
        this.f2422a.cancel.setVisibility(n0.e(errorDialogParams.cancelButton) ? 8 : 0);
        this.f2422a.cancel.setText(errorDialogParams.cancelButton);
        this.f2422a.cancel.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.core.api.verify.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2439a.l(errorDialogParams, view);
            }
        });
        if (n0.e(errorDialogParams.okButton) || n0.e(errorDialogParams.cancelButton)) {
            this.f2422a.divider.setVisibility(8);
        }
        if (errorDialogParams.countDown <= 0 || n0.e(errorDialogParams.countDownAction)) {
            return;
        }
        a aVar = new a(errorDialogParams.countDown, errorDialogParams.message, errorDialogParams.countDownAction);
        this.b = aVar;
        aVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(ErrorDialogParams errorDialogParams, View view) {
        if (!n0.e(errorDialogParams.okAction)) {
            h.e(errorDialogParams.okAction);
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(ErrorDialogParams errorDialogParams, View view) {
        if (!n0.e(errorDialogParams.cancelAction)) {
            h.e(errorDialogParams.cancelAction);
        }
        finish();
    }

    public static void m(Context context, ErrorDialogParams errorDialogParams) {
        Intent intent = new Intent(context, (Class<?>) ErrorDialogActivity.class);
        intent.putExtra(SpeechConstant.PARAMS, errorDialogParams);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "通用错误弹框";
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ErrorDialogParams errorDialogParams;
        super.onCreate(bundle);
        CoreApiVerifyActivityErrorDialogBinding coreApiVerifyActivityErrorDialogBindingInflate = CoreApiVerifyActivityErrorDialogBinding.inflate(getLayoutInflater());
        this.f2422a = coreApiVerifyActivityErrorDialogBindingInflate;
        setContentView(coreApiVerifyActivityErrorDialogBindingInflate.getRoot());
        Intent intent = getIntent();
        if (intent == null || (errorDialogParams = (ErrorDialogParams) intent.getSerializableExtra(SpeechConstant.PARAMS)) == null) {
            finish();
        } else {
            h(errorDialogParams);
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a aVar = this.b;
        if (aVar != null) {
            aVar.cancel();
        }
        this.b = null;
    }
}
