package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;

/* JADX INFO: loaded from: classes.dex */
public class f extends CheckedTextView {
    private static final int[] b = {R.attr.checkMark};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final u f419a;

    public f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f419a;
        if (uVar != null) {
            uVar.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        i.a(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(androidx.appcompat.a.a.a.d(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.s(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        u uVar = this.f419a;
        if (uVar != null) {
            uVar.q(context, i);
        }
    }

    public f(Context context, AttributeSet attributeSet, int i) {
        super(n0.b(context), attributeSet, i);
        l0.a(this, getContext());
        u uVar = new u(this);
        this.f419a = uVar;
        uVar.m(attributeSet, i);
        uVar.b();
        q0 q0VarV = q0.v(getContext(), attributeSet, b, i, 0);
        setCheckMarkDrawable(q0VarV.g(0));
        q0VarV.w();
    }
}
