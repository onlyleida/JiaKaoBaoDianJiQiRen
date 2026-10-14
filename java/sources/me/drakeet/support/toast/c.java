package me.drakeet.support.toast;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.widget.Toast;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends Toast {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Toast f16139a;

    private c(Context context, Toast toast) {
        super(context);
        this.f16139a = toast;
    }

    public static c a(Context context, CharSequence charSequence, int i) {
        Toast toastMakeText = Toast.makeText(context, charSequence, i);
        b(toastMakeText.getView(), new b(context, toastMakeText));
        return new c(context, toastMakeText);
    }

    private static void b(View view, Context context) {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                Field declaredField = View.class.getDeclaredField("mContext");
                declaredField.setAccessible(true);
                declaredField.set(view, context);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // android.widget.Toast
    public int getDuration() {
        return this.f16139a.getDuration();
    }

    @Override // android.widget.Toast
    public int getGravity() {
        return this.f16139a.getGravity();
    }

    @Override // android.widget.Toast
    public float getHorizontalMargin() {
        return this.f16139a.getHorizontalMargin();
    }

    @Override // android.widget.Toast
    public float getVerticalMargin() {
        return this.f16139a.getVerticalMargin();
    }

    @Override // android.widget.Toast
    public View getView() {
        return this.f16139a.getView();
    }

    @Override // android.widget.Toast
    public int getXOffset() {
        return this.f16139a.getXOffset();
    }

    @Override // android.widget.Toast
    public int getYOffset() {
        return this.f16139a.getYOffset();
    }

    @Override // android.widget.Toast
    public void setDuration(int i) {
        this.f16139a.setDuration(i);
    }

    @Override // android.widget.Toast
    public void setGravity(int i, int i2, int i3) {
        this.f16139a.setGravity(i, i2, i3);
    }

    @Override // android.widget.Toast
    public void setMargin(float f2, float f3) {
        this.f16139a.setMargin(f2, f3);
    }

    @Override // android.widget.Toast
    public void setText(int i) {
        this.f16139a.setText(i);
    }

    @Override // android.widget.Toast
    public void setView(View view) {
        this.f16139a.setView(view);
        b(view, new b(view.getContext(), this));
    }

    @Override // android.widget.Toast
    public void show() {
        this.f16139a.show();
    }

    @Override // android.widget.Toast
    public void setText(CharSequence charSequence) {
        this.f16139a.setText(charSequence);
    }
}
