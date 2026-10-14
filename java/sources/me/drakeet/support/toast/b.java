package me.drakeet.support.toast;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Toast;

/* JADX INFO: loaded from: classes6.dex */
final class b extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Toast f16136a;
    private me.drakeet.support.toast.a b;

    /* JADX INFO: renamed from: me.drakeet.support.toast.b$b, reason: collision with other inner class name */
    private final class C0369b extends ContextWrapper {
        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            return "window".equals(str) ? new c((WindowManager) getBaseContext().getSystemService(str)) : super.getSystemService(str);
        }

        private C0369b(Context context) {
            super(context);
        }
    }

    private final class c implements WindowManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WindowManager f16138a;

        @Override // android.view.ViewManager
        public void addView(View view, ViewGroup.LayoutParams layoutParams) {
            try {
                Log.d("WindowManagerWrapper", "WindowManager's addView(view, params) has been hooked.");
                this.f16138a.addView(view, layoutParams);
            } catch (WindowManager.BadTokenException e2) {
                Log.i("WindowManagerWrapper", e2.getMessage());
                if (b.this.b != null) {
                    b.this.b.a(b.this.f16136a);
                }
            } catch (Throwable th) {
                Log.e("WindowManagerWrapper", "[addView]", th);
            }
        }

        @Override // android.view.WindowManager
        public Display getDefaultDisplay() {
            return this.f16138a.getDefaultDisplay();
        }

        @Override // android.view.ViewManager
        public void removeView(View view) {
            this.f16138a.removeView(view);
        }

        @Override // android.view.WindowManager
        public void removeViewImmediate(View view) {
            this.f16138a.removeViewImmediate(view);
        }

        @Override // android.view.ViewManager
        public void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
            this.f16138a.updateViewLayout(view, layoutParams);
        }

        private c(WindowManager windowManager) {
            this.f16138a = windowManager;
        }
    }

    b(Context context, Toast toast) {
        super(context);
        this.f16136a = toast;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Context getApplicationContext() {
        return new C0369b(getBaseContext().getApplicationContext());
    }
}
