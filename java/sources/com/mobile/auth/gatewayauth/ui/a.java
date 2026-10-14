package com.mobile.auth.gatewayauth.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f13424a;
    private WeakReference<Context> b;
    private AbstractPnsViewDelegate c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13425d;

    public a(Context context, int i, AbstractPnsViewDelegate abstractPnsViewDelegate) {
        this(LayoutInflater.from(context).inflate(i, (ViewGroup) new FrameLayout(context), false), abstractPnsViewDelegate);
    }

    public a(View view, AbstractPnsViewDelegate abstractPnsViewDelegate) {
        this.f13425d = true;
        this.c = abstractPnsViewDelegate;
        this.f13424a = view;
        this.b = new WeakReference<>(view.getContext());
        AbstractPnsViewDelegate abstractPnsViewDelegate2 = this.c;
        if (abstractPnsViewDelegate2 != null) {
            abstractPnsViewDelegate2.setPnsView(this);
            this.c.onViewCreated(this.f13424a);
        }
    }

    public Context a() {
        Context context;
        try {
            WeakReference<Context> weakReference = this.b;
            return (weakReference == null || (context = weakReference.get()) == null) ? this.f13424a.getContext() : context;
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
            return null;
        }
    }

    public View a(int i) {
        try {
            return this.f13424a.findViewById(i);
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
            return null;
        }
    }

    public View b() {
        try {
            return this.f13424a;
        } catch (Throwable th) {
            com.mobile.auth.gatewayauth.a.a(th);
            return null;
        }
    }
}
