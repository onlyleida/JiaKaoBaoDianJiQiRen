package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.core.view.KeyEventDispatcher;

/* JADX INFO: loaded from: classes.dex */
public class g extends Dialog implements e {
    private f mDelegate;
    private final KeyEventDispatcher.Component mKeyDispatcher;

    class a implements KeyEventDispatcher.Component {
        a() {
        }

        @Override // androidx.core.view.KeyEventDispatcher.Component
        public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
            return g.this.superDispatchKeyEvent(keyEvent);
        }
    }

    public g(Context context) {
        this(context, 0);
    }

    private static int getThemeResId(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().b(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().r();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().h(i);
    }

    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.f(this, this);
        }
        return this.mDelegate;
    }

    public androidx.appcompat.app.a getSupportActionBar() {
        return getDelegate().m();
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().o();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getDelegate().n();
        super.onCreate(bundle);
        getDelegate().q(bundle);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        getDelegate().w();
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeFinished(androidx.appcompat.d.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public void onSupportActionModeStarted(androidx.appcompat.d.b bVar) {
    }

    @Override // androidx.appcompat.app.e
    public androidx.appcompat.d.b onWindowStartingSupportActionMode(androidx.appcompat.d.b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        getDelegate().A(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().F(charSequence);
    }

    boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().z(i);
    }

    public g(Context context, int i) {
        super(context, getThemeResId(context, i));
        this.mKeyDispatcher = new a();
        f delegate = getDelegate();
        delegate.E(getThemeResId(context, i));
        delegate.q(null);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        getDelegate().B(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().C(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        getDelegate().F(getContext().getString(i));
    }

    protected g(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.mKeyDispatcher = new a();
    }
}
