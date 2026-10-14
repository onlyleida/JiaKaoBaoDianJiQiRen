package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.core.view.TintableBackgroundView;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {
    private static final int[] i = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.appcompat.widget.d f323a;
    private final Context b;
    private c0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SpinnerAdapter f324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private f f326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f327g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Rect f328h;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f329a;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f329a ? (byte) 1 : (byte) 0);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.f329a = parcel.readByte() != 0;
        }
    }

    class a extends c0 {
        final /* synthetic */ e j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(View view, e eVar) {
            super(view);
            this.j = eVar;
        }

        @Override // androidx.appcompat.widget.c0
        public androidx.appcompat.view.menu.p b() {
            return this.j;
        }

        @Override // androidx.appcompat.widget.c0
        @SuppressLint({"SyntheticAccessor"})
        public boolean c() {
            if (AppCompatSpinner.this.getInternalPopup().a()) {
                return true;
            }
            AppCompatSpinner.this.b();
            return true;
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!AppCompatSpinner.this.getInternalPopup().a()) {
                AppCompatSpinner.this.b();
            }
            ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    class c implements f, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.appcompat.app.c f331a;
        private ListAdapter b;
        private CharSequence c;

        c() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public boolean a() {
            androidx.appcompat.app.c cVar = this.f331a;
            if (cVar != null) {
                return cVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public int b() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void d(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void dismiss() {
            androidx.appcompat.app.c cVar = this.f331a;
            if (cVar != null) {
                cVar.dismiss();
                this.f331a = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public CharSequence e() {
            return this.c;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public Drawable f() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void g(CharSequence charSequence) {
            this.c = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void h(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void i(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void j(int i, int i2) {
            if (this.b == null) {
                return;
            }
            androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(AppCompatSpinner.this.getPopupContext());
            CharSequence charSequence = this.c;
            if (charSequence != null) {
                aVar.setTitle(charSequence);
            }
            androidx.appcompat.app.c cVarCreate = aVar.setSingleChoiceItems(this.b, AppCompatSpinner.this.getSelectedItemPosition(), this).create();
            this.f331a = cVarCreate;
            ListView listViewA = cVarCreate.a();
            if (Build.VERSION.SDK_INT >= 17) {
                listViewA.setTextDirection(i);
                listViewA.setTextAlignment(i2);
            }
            this.f331a.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public int k() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void l(ListAdapter listAdapter) {
            this.b = listAdapter;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner.this.setSelection(i);
            if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                AppCompatSpinner.this.performItemClick(null, i, this.b.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void setBackgroundDrawable(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }
    }

    private static class d implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private SpinnerAdapter f333a;
        private ListAdapter b;

        public d(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f333a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (Build.VERSION.SDK_INT >= 23 && (spinnerAdapter instanceof ThemedSpinnerAdapter)) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                        themedSpinnerAdapter.setDropDownViewTheme(theme);
                        return;
                    }
                    return;
                }
                if (spinnerAdapter instanceof m0) {
                    m0 m0Var = (m0) spinnerAdapter;
                    if (m0Var.getDropDownViewTheme() == null) {
                        m0Var.setDropDownViewTheme(theme);
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            SpinnerAdapter spinnerAdapter = this.f333a;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f333a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f333a;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f333a;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f333a;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.b;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f333a;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f333a;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    class e extends d0 implements f {
        private CharSequence I;
        ListAdapter K;
        private final Rect M;
        private int N;

        class a implements AdapterView.OnItemClickListener {
            a(AppCompatSpinner appCompatSpinner) {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                AppCompatSpinner.this.setSelection(i);
                if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                    e eVar = e.this;
                    AppCompatSpinner.this.performItemClick(view, i, eVar.K.getItemId(i));
                }
                e.this.dismiss();
            }
        }

        class b implements ViewTreeObserver.OnGlobalLayoutListener {
            b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                e eVar = e.this;
                if (!eVar.T(AppCompatSpinner.this)) {
                    e.this.dismiss();
                } else {
                    e.this.R();
                    e.super.show();
                }
            }
        }

        class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f336a;

            c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f336a = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f336a);
                }
            }
        }

        public e(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.M = new Rect();
            B(AppCompatSpinner.this);
            I(true);
            N(0);
            K(new a(AppCompatSpinner.this));
        }

        void R() {
            Drawable drawableF = f();
            int i = 0;
            if (drawableF != null) {
                drawableF.getPadding(AppCompatSpinner.this.f328h);
                i = w0.b(AppCompatSpinner.this) ? AppCompatSpinner.this.f328h.right : -AppCompatSpinner.this.f328h.left;
            } else {
                Rect rect = AppCompatSpinner.this.f328h;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = AppCompatSpinner.this.getPaddingLeft();
            int paddingRight = AppCompatSpinner.this.getPaddingRight();
            int width = AppCompatSpinner.this.getWidth();
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int i2 = appCompatSpinner.f327g;
            if (i2 == -2) {
                int iA = appCompatSpinner.a((SpinnerAdapter) this.K, f());
                int i3 = AppCompatSpinner.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = AppCompatSpinner.this.f328h;
                int i4 = (i3 - rect2.left) - rect2.right;
                if (iA > i4) {
                    iA = i4;
                }
                D(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i2 == -1) {
                D((width - paddingLeft) - paddingRight);
            } else {
                D(i2);
            }
            d(w0.b(AppCompatSpinner.this) ? i + (((width - paddingRight) - x()) - S()) : i + paddingLeft + S());
        }

        public int S() {
            return this.N;
        }

        boolean T(View view) {
            return ViewCompat.isAttachedToWindow(view) && view.getGlobalVisibleRect(this.M);
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public CharSequence e() {
            return this.I;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void g(CharSequence charSequence) {
            this.I = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void i(int i) {
            this.N = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.f
        public void j(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            boolean zA = a();
            R();
            H(2);
            super.show();
            ListView listViewN = n();
            listViewN.setChoiceMode(1);
            if (Build.VERSION.SDK_INT >= 17) {
                listViewN.setTextDirection(i);
                listViewN.setTextAlignment(i2);
            }
            O(AppCompatSpinner.this.getSelectedItemPosition());
            if (zA || (viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            J(new c(bVar));
        }

        @Override // androidx.appcompat.widget.d0, androidx.appcompat.widget.AppCompatSpinner.f
        public void l(ListAdapter listAdapter) {
            super.l(listAdapter);
            this.K = listAdapter;
        }
    }

    interface f {
        boolean a();

        int b();

        void d(int i);

        void dismiss();

        CharSequence e();

        Drawable f();

        void g(CharSequence charSequence);

        void h(int i);

        void i(int i);

        void j(int i, int i2);

        int k();

        void l(ListAdapter listAdapter);

        void setBackgroundDrawable(Drawable drawable);
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.spinnerStyle);
    }

    int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i2 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i2) {
                view = null;
                i2 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f328h);
        Rect rect = this.f328h;
        return iMax2 + rect.left + rect.right;
    }

    void b() {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f326f.j(getTextDirection(), getTextAlignment());
        } else {
            this.f326f.j(-1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        f fVar = this.f326f;
        if (fVar != null) {
            return fVar.b();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownHorizontalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        f fVar = this.f326f;
        if (fVar != null) {
            return fVar.k();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownVerticalOffset();
        }
        return 0;
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.f326f != null) {
            return this.f327g;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getDropDownWidth();
        }
        return 0;
    }

    final f getInternalPopup() {
        return this.f326f;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        f fVar = this.f326f;
        if (fVar != null) {
            return fVar.f();
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return super.getPopupBackground();
        }
        return null;
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.b;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        f fVar = this.f326f;
        return fVar != null ? fVar.e() : super.getPrompt();
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        f fVar = this.f326f;
        if (fVar == null || !fVar.a()) {
            return;
        }
        this.f326f.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.f326f == null || View.MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i2)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!savedState.f329a || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        f fVar = this.f326f;
        savedState.f329a = fVar != null && fVar.a();
        return savedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        c0 c0Var = this.c;
        if (c0Var == null || !c0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public boolean performClick() {
        f fVar = this.f326f;
        if (fVar == null) {
            return super.performClick();
        }
        if (fVar.a()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            dVar.g(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i2) {
        f fVar = this.f326f;
        if (fVar != null) {
            fVar.i(i2);
            this.f326f.d(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownHorizontalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i2) {
        f fVar = this.f326f;
        if (fVar != null) {
            fVar.h(i2);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownVerticalOffset(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i2) {
        if (this.f326f != null) {
            this.f327g = i2;
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setDropDownWidth(i2);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        f fVar = this.f326f;
        if (fVar != null) {
            fVar.setBackgroundDrawable(drawable);
        } else if (Build.VERSION.SDK_INT >= 16) {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i2) {
        setPopupBackgroundDrawable(androidx.appcompat.a.a.a.d(getPopupContext(), i2));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        f fVar = this.f326f;
        if (fVar != null) {
            fVar.g(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f323a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, -1);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f325e) {
            this.f324d = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f326f != null) {
            Context context = this.b;
            if (context == null) {
                context = getContext();
            }
            this.f326f.l(new d(spinnerAdapter, context.getTheme()));
        }
    }

    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2, int i3) {
        this(context, attributeSet, i2, i3, null);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0051 A[PHI: r10 r11
      0x0051: PHI (r10v2 int) = (r10v0 int), (r10v4 int) binds: [B:24:0x0062, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]
      0x0051: PHI (r11v6 android.content.res.TypedArray) = (r11v5 android.content.res.TypedArray), (r11v8 android.content.res.TypedArray) binds: [B:24:0x0062, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public AppCompatSpinner(Context context, AttributeSet attributeSet, int i2, int i3, Resources.Theme theme) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i2);
        this.f328h = new Rect();
        l0.a(this, getContext());
        q0 q0VarV = q0.v(context, attributeSet, androidx.appcompat.R.styleable.Spinner, i2, 0);
        this.f323a = new androidx.appcompat.widget.d(this);
        if (theme != null) {
            this.b = new androidx.appcompat.d.d(context, theme);
        } else {
            int iN = q0VarV.n(androidx.appcompat.R.styleable.Spinner_popupTheme, 0);
            if (iN != 0) {
                this.b = new androidx.appcompat.d.d(context, iN);
            } else {
                this.b = context;
            }
        }
        TypedArray typedArray = 0;
        try {
            if (i3 == -1) {
                try {
                    typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i, i2, 0);
                    try {
                        i3 = typedArrayObtainStyledAttributes.hasValue(0) ? typedArrayObtainStyledAttributes.getInt(0, 0) : i3;
                        if (typedArrayObtainStyledAttributes != null) {
                            typedArrayObtainStyledAttributes.recycle();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                        if (typedArrayObtainStyledAttributes != null) {
                            typedArrayObtainStyledAttributes.recycle();
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                    typedArrayObtainStyledAttributes = null;
                } catch (Throwable th) {
                    th = th;
                    if (typedArray != 0) {
                        typedArray.recycle();
                    }
                    throw th;
                }
            }
            if (i3 == 0) {
                c cVar = new c();
                this.f326f = cVar;
                cVar.g(q0VarV.o(androidx.appcompat.R.styleable.Spinner_android_prompt));
            } else if (i3 == 1) {
                e eVar = new e(this.b, attributeSet, i2);
                q0 q0VarV2 = q0.v(this.b, attributeSet, androidx.appcompat.R.styleable.Spinner, i2, 0);
                this.f327g = q0VarV2.m(androidx.appcompat.R.styleable.Spinner_android_dropDownWidth, -2);
                eVar.setBackgroundDrawable(q0VarV2.g(androidx.appcompat.R.styleable.Spinner_android_popupBackground));
                eVar.g(q0VarV.o(androidx.appcompat.R.styleable.Spinner_android_prompt));
                q0VarV2.w();
                this.f326f = eVar;
                this.c = new a(this, eVar);
            }
            CharSequence[] charSequenceArrQ = q0VarV.q(androidx.appcompat.R.styleable.Spinner_android_entries);
            if (charSequenceArrQ != null) {
                ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, charSequenceArrQ);
                arrayAdapter.setDropDownViewResource(androidx.appcompat.R.layout.support_simple_spinner_dropdown_item);
                setAdapter((SpinnerAdapter) arrayAdapter);
            }
            q0VarV.w();
            this.f325e = true;
            SpinnerAdapter spinnerAdapter = this.f324d;
            if (spinnerAdapter != null) {
                setAdapter(spinnerAdapter);
                this.f324d = null;
            }
            this.f323a.e(attributeSet, i2);
        } catch (Throwable th2) {
            th = th2;
            typedArray = -1;
        }
    }
}
