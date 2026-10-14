package com.mobile.auth.w;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.AuthUIConfig;
import com.mobile.auth.gatewayauth.utils.h;
import com.nirvana.tools.core.AppUtils;

/* JADX INFO: loaded from: classes5.dex */
public class a extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13606a;
    private Animation b;
    private ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AuthUIConfig f13607d;

    public a(Context context, int i) {
        super(context, i);
        this.f13606a = context;
    }

    public a(Context context, AuthUIConfig authUIConfig) {
        this(context, AppUtils.getResID(context, "authsdk_loading_dialog", TtmlNode.TAG_STYLE));
        this.f13607d = authUIConfig;
    }

    private void a() {
        try {
            setContentView(AppUtils.getResID(getContext(), "authsdk_loading_dialog_layout", TtmlNode.TAG_LAYOUT));
            setCancelable(false);
            this.c = (ImageView) findViewById(AppUtils.getResID(getContext(), "authsdk_iv_loading", TtmlNode.ATTR_ID));
            Drawable loadingImgDrawable = this.f13607d.getLoadingImgDrawable();
            if (loadingImgDrawable != null) {
                this.c.setImageDrawable(loadingImgDrawable);
                return;
            }
            Drawable drawableC = h.c(getContext(), this.f13607d.getLoadingImgPath());
            if (drawableC != null) {
                this.c.setImageDrawable(drawableC);
            }
            this.b = AnimationUtils.loadAnimation(this.f13606a, AppUtils.getResID(getContext(), "authsdk_anim_loading", "anim"));
            this.b.setInterpolator(new LinearInterpolator());
            this.c.startAnimation(this.b);
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            Animation animation = this.b;
            if (animation != null) {
                animation.cancel();
            }
            super.dismiss();
            this.f13607d = null;
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            a();
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            Animation animation = this.b;
            if (animation != null) {
                animation.start();
                this.c.startAnimation(this.b);
            }
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
        }
    }
}
