package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public class c extends g implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AlertController f116a;

    public static class a {
        private final AlertController.f P;
        private final int mTheme;

        public a(Context context) {
            this(context, c.b(context, 0));
        }

        public c create() {
            c cVar = new c(this.P.f74a, this.mTheme);
            this.P.a(cVar.f116a);
            cVar.setCancelable(this.P.r);
            if (this.P.r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.P.s);
            cVar.setOnDismissListener(this.P.t);
            DialogInterface.OnKeyListener onKeyListener = this.P.u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }

        public Context getContext() {
            return this.P.f74a;
        }

        public a setAdapter(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.w = listAdapter;
            fVar.x = onClickListener;
            return this;
        }

        public a setCancelable(boolean z) {
            this.P.r = z;
            return this;
        }

        public a setCursor(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            AlertController.f fVar = this.P;
            fVar.K = cursor;
            fVar.L = str;
            fVar.x = onClickListener;
            return this;
        }

        public a setCustomTitle(View view) {
            this.P.f78g = view;
            return this;
        }

        public a setIcon(int i) {
            this.P.c = i;
            return this;
        }

        public a setIconAttribute(int i) {
            TypedValue typedValue = new TypedValue();
            this.P.f74a.getTheme().resolveAttribute(i, typedValue, true);
            this.P.c = typedValue.resourceId;
            return this;
        }

        @Deprecated
        public a setInverseBackgroundForced(boolean z) {
            this.P.N = z;
            return this;
        }

        public a setItems(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.v = fVar.f74a.getResources().getTextArray(i);
            this.P.x = onClickListener;
            return this;
        }

        public a setMessage(int i) {
            AlertController.f fVar = this.P;
            fVar.f79h = fVar.f74a.getText(i);
            return this;
        }

        public a setMultiChoiceItems(int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.P;
            fVar.v = fVar.f74a.getResources().getTextArray(i);
            AlertController.f fVar2 = this.P;
            fVar2.J = onMultiChoiceClickListener;
            fVar2.F = zArr;
            fVar2.G = true;
            return this;
        }

        public a setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.l = fVar.f74a.getText(i);
            this.P.n = onClickListener;
            return this;
        }

        public a setNegativeButtonIcon(Drawable drawable) {
            this.P.m = drawable;
            return this;
        }

        public a setNeutralButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.o = fVar.f74a.getText(i);
            this.P.q = onClickListener;
            return this;
        }

        public a setNeutralButtonIcon(Drawable drawable) {
            this.P.p = drawable;
            return this;
        }

        public a setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.P.s = onCancelListener;
            return this;
        }

        public a setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.P.t = onDismissListener;
            return this;
        }

        public a setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.P.O = onItemSelectedListener;
            return this;
        }

        public a setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
            this.P.u = onKeyListener;
            return this;
        }

        public a setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.i = fVar.f74a.getText(i);
            this.P.k = onClickListener;
            return this;
        }

        public a setPositiveButtonIcon(Drawable drawable) {
            this.P.j = drawable;
            return this;
        }

        public a setRecycleOnMeasureEnabled(boolean z) {
            this.P.Q = z;
            return this;
        }

        public a setSingleChoiceItems(int i, int i2, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.v = fVar.f74a.getResources().getTextArray(i);
            AlertController.f fVar2 = this.P;
            fVar2.x = onClickListener;
            fVar2.I = i2;
            fVar2.H = true;
            return this;
        }

        public a setTitle(int i) {
            AlertController.f fVar = this.P;
            fVar.f77f = fVar.f74a.getText(i);
            return this;
        }

        public a setView(int i) {
            AlertController.f fVar = this.P;
            fVar.z = null;
            fVar.y = i;
            fVar.E = false;
            return this;
        }

        public c show() {
            c cVarCreate = create();
            cVarCreate.show();
            return cVarCreate;
        }

        public a(Context context, int i) {
            this.P = new AlertController.f(new ContextThemeWrapper(context, c.b(context, i)));
            this.mTheme = i;
        }

        public a setIcon(Drawable drawable) {
            this.P.f75d = drawable;
            return this;
        }

        public a setMessage(CharSequence charSequence) {
            this.P.f79h = charSequence;
            return this;
        }

        public a setTitle(CharSequence charSequence) {
            this.P.f77f = charSequence;
            return this;
        }

        public a setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.v = charSequenceArr;
            fVar.x = onClickListener;
            return this;
        }

        public a setNegativeButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.l = charSequence;
            fVar.n = onClickListener;
            return this;
        }

        public a setNeutralButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.o = charSequence;
            fVar.q = onClickListener;
            return this;
        }

        public a setPositiveButton(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.i = charSequence;
            fVar.k = onClickListener;
            return this;
        }

        public a setView(View view) {
            AlertController.f fVar = this.P;
            fVar.z = view;
            fVar.y = 0;
            fVar.E = false;
            return this;
        }

        public a setMultiChoiceItems(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.P;
            fVar.v = charSequenceArr;
            fVar.J = onMultiChoiceClickListener;
            fVar.F = zArr;
            fVar.G = true;
            return this;
        }

        public a setSingleChoiceItems(Cursor cursor, int i, String str, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.K = cursor;
            fVar.x = onClickListener;
            fVar.I = i;
            fVar.L = str;
            fVar.H = true;
            return this;
        }

        @Deprecated
        public a setView(View view, int i, int i2, int i3, int i4) {
            AlertController.f fVar = this.P;
            fVar.z = view;
            fVar.y = 0;
            fVar.E = true;
            fVar.A = i;
            fVar.B = i2;
            fVar.C = i3;
            fVar.D = i4;
            return this;
        }

        public a setMultiChoiceItems(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.f fVar = this.P;
            fVar.K = cursor;
            fVar.J = onMultiChoiceClickListener;
            fVar.M = str;
            fVar.L = str2;
            fVar.G = true;
            return this;
        }

        public a setSingleChoiceItems(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.v = charSequenceArr;
            fVar.x = onClickListener;
            fVar.I = i;
            fVar.H = true;
            return this;
        }

        public a setSingleChoiceItems(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.f fVar = this.P;
            fVar.w = listAdapter;
            fVar.x = onClickListener;
            fVar.I = i;
            fVar.H = true;
            return this;
        }
    }

    protected c(Context context, int i) {
        super(context, b(context, i));
        this.f116a = new AlertController(getContext(), this, getWindow());
    }

    static int b(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView a() {
        return this.f116a.d();
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f116a.e();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f116a.g(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f116a.h(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.g, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f116a.q(charSequence);
    }
}
