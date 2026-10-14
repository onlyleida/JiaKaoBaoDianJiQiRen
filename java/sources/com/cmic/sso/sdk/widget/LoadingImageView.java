package com.cmic.sso.sdk.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import com.mobile.auth.k.n;

/* JADX INFO: loaded from: classes5.dex */
public class LoadingImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f11650a;
    private LinearInterpolator b;

    public LoadingImageView(Context context) {
        super(context);
        this.f11650a = null;
        this.b = null;
        a();
    }

    public LoadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11650a = null;
        this.b = null;
        a();
    }

    public LoadingImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11650a = null;
        this.b = null;
        a();
    }

    protected void a() {
        this.f11650a = AnimationUtils.loadAnimation(getContext(), n.c(getContext(), "umcsdk_anim_loading"));
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        this.b = linearInterpolator;
        this.f11650a.setInterpolator(linearInterpolator);
    }
}
