package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;
import com.google.android.gms.actions.SearchIntents;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements androidx.appcompat.d.c {
    static final n h0;
    private boolean A;
    private boolean B;
    androidx.cursoradapter.a.a C;
    private boolean D;
    private CharSequence E;
    private boolean F;
    private boolean G;
    private int H;
    private boolean I;
    private CharSequence K;
    private CharSequence M;
    private boolean N;
    private int Q;
    SearchableInfo T;
    private Bundle U;
    private final Runnable V;
    private Runnable W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SearchAutoComplete f346a;
    private final WeakHashMap<String, Drawable.ConstantState> a0;
    private final View b;
    private final View.OnClickListener b0;
    private final View c;
    View.OnKeyListener c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f347d;
    private final TextView.OnEditorActionListener d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ImageView f348e;
    private final AdapterView.OnItemClickListener e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ImageView f349f;
    private final AdapterView.OnItemSelectedListener f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ImageView f350g;
    private TextWatcher g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final ImageView f351h;
    private final View i;
    private o j;
    private Rect k;
    private Rect l;
    private int[] m;
    private int[] n;
    private final ImageView o;
    private final Drawable p;
    private final int q;
    private final int r;
    private final Intent s;
    private final Intent t;
    private final CharSequence u;
    private l v;
    private k w;
    View.OnFocusChangeListener x;
    private m y;
    private View.OnClickListener z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f352a;

        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f352a + VectorFormat.DEFAULT_SUFFIX;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f352a));
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f352a = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends androidx.appcompat.widget.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f353a;
        private SearchView b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Runnable f354d;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.c();
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        void a() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.h0.c(this);
                return;
            }
            setInputMethodMode(1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        boolean b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        void c() {
            if (this.c) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.c = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f353a <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.c, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.c) {
                removeCallbacks(this.f354d);
                post(this.f354d);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.b.B();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.b.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.b.hasFocus() && getVisibility() == 0) {
                this.c = true;
                if (SearchView.o(getContext())) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.c = false;
                removeCallbacks(this.f354d);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.c = true;
                    return;
                }
                this.c = false;
                removeCallbacks(this.f354d);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.b = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f353a = i;
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f354d = new a();
            this.f353a = getThreshold();
        }
    }

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.A(charSequence);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.H();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.cursoradapter.a.a aVar = SearchView.this.C;
            if (aVar instanceof k0) {
                aVar.changeCursor(null);
            }
        }
    }

    class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.x;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    class e implements View.OnLayoutChangeListener {
        e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.d();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f348e) {
                searchView.x();
                return;
            }
            if (view == searchView.f350g) {
                searchView.t();
                return;
            }
            if (view == searchView.f349f) {
                searchView.y();
            } else if (view == searchView.f351h) {
                searchView.C();
            } else if (view == searchView.f346a) {
                searchView.j();
            }
        }
    }

    class g implements View.OnKeyListener {
        g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.T == null) {
                return false;
            }
            if (searchView.f346a.isPopupShowing() && SearchView.this.f346a.getListSelection() != -1) {
                return SearchView.this.z(view, i, keyEvent);
            }
            if (SearchView.this.f346a.b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.r(0, null, searchView2.f346a.getText().toString());
            return true;
        }
    }

    class h implements TextView.OnEditorActionListener {
        h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.y();
            return true;
        }
    }

    class i implements AdapterView.OnItemClickListener {
        i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.u(i, 0, null);
        }
    }

    class j implements AdapterView.OnItemSelectedListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.v(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public interface k {
        boolean onClose();
    }

    public interface l {
        boolean a(String str);

        boolean b(String str);
    }

    public interface m {
        boolean a(int i);

        boolean b(int i);
    }

    private static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Method f366a;
        private Method b;
        private Method c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        n() {
            this.f366a = null;
            this.b = null;
            this.c = null;
            d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f366a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        private static void d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        void a(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void b(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.f366a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception unused) {
                }
            }
        }

        void c(AutoCompleteTextView autoCompleteTextView) {
            d();
            Method method = this.c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
    }

    private static class o extends TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f367a;
        private final Rect b;
        private final Rect c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Rect f368d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f369e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f370f;

        public o(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f369e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.b = new Rect();
            this.f368d = new Rect();
            this.c = new Rect();
            a(rect, rect2);
            this.f367a = view;
        }

        public void a(Rect rect, Rect rect2) {
            this.b.set(rect);
            this.f368d.set(rect);
            Rect rect3 = this.f368d;
            int i = this.f369e;
            rect3.inset(-i, -i);
            this.c.set(rect2);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x003d  */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z2 = this.f370f;
                    if (z2 && !this.f368d.contains(x, y)) {
                        z3 = z2;
                        z = false;
                    }
                } else if (action != 3) {
                    z = true;
                    z3 = false;
                } else {
                    z2 = this.f370f;
                    this.f370f = false;
                }
                z3 = z2;
                z = true;
            } else if (this.b.contains(x, y)) {
                this.f370f = true;
                z = true;
            } else {
                z = true;
                z3 = false;
            }
            if (!z3) {
                return false;
            }
            if (!z || this.c.contains(x, y)) {
                Rect rect = this.c;
                motionEvent.setLocation(x - rect.left, y - rect.top);
            } else {
                motionEvent.setLocation(this.f367a.getWidth() / 2, this.f367a.getHeight() / 2);
            }
            return this.f367a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        h0 = Build.VERSION.SDK_INT < 29 ? new n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private void D() {
        post(this.V);
    }

    private void E(int i2) {
        Editable text = this.f346a.getText();
        Cursor cursor = this.C.getCursor();
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i2)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceConvertToString = this.C.convertToString(cursor);
        if (charSequenceConvertToString != null) {
            setQuery(charSequenceConvertToString);
        } else {
            setQuery(text);
        }
    }

    private void G() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.f346a.getText());
        if (!z2 && (!this.A || this.N)) {
            z = false;
        }
        this.f350g.setVisibility(z ? 0 : 8);
        Drawable drawable = this.f350g.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    private void I() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f346a;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(l(queryHint));
    }

    private void J() {
        this.f346a.setThreshold(this.T.getSuggestThreshold());
        this.f346a.setImeOptions(this.T.getImeOptions());
        int inputType = this.T.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.T.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f346a.setInputType(inputType);
        androidx.cursoradapter.a.a aVar = this.C;
        if (aVar != null) {
            aVar.changeCursor(null);
        }
        if (this.T.getSuggestAuthority() != null) {
            k0 k0Var = new k0(getContext(), this, this.T, this.a0);
            this.C = k0Var;
            this.f346a.setAdapter(k0Var);
            ((k0) this.C).n(this.F ? 2 : 1);
        }
    }

    private void K() {
        this.f347d.setVisibility((p() && (this.f349f.getVisibility() == 0 || this.f351h.getVisibility() == 0)) ? 0 : 8);
    }

    private void L(boolean z) {
        this.f349f.setVisibility((this.D && p() && hasFocus() && (z || !this.I)) ? 0 : 8);
    }

    private void M(boolean z) {
        this.B = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f346a.getText());
        this.f348e.setVisibility(i2);
        L(z2);
        this.b.setVisibility(z ? 8 : 0);
        this.o.setVisibility((this.o.getDrawable() == null || this.A) ? 8 : 0);
        G();
        N(!z2);
        K();
    }

    private void N(boolean z) {
        int i2 = 8;
        if (this.I && !n() && z) {
            this.f349f.setVisibility(8);
            i2 = 0;
        }
        this.f351h.setVisibility(i2);
    }

    private Intent e(String str, Uri uri, String str2, String str3, int i2, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.M);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.U;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i2 != 0) {
            intent.putExtra("action_key", i2);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.T.getSearchActivity());
        return intent;
    }

    private Intent f(Cursor cursor, int i2, String str) {
        int position;
        String strE;
        try {
            String strE2 = k0.e(cursor, "suggest_intent_action");
            if (strE2 == null) {
                strE2 = this.T.getSuggestIntentAction();
            }
            if (strE2 == null) {
                strE2 = "android.intent.action.SEARCH";
            }
            String str2 = strE2;
            String strE3 = k0.e(cursor, "suggest_intent_data");
            if (strE3 == null) {
                strE3 = this.T.getSuggestIntentData();
            }
            if (strE3 != null && (strE = k0.e(cursor, "suggest_intent_data_id")) != null) {
                strE3 = strE3 + "/" + Uri.encode(strE);
            }
            return e(str2, strE3 == null ? null : Uri.parse(strE3), k0.e(cursor, "suggest_intent_extra_data"), k0.e(cursor, "suggest_intent_query"), i2, str);
        } catch (RuntimeException e2) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException unused) {
                position = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e2);
            return null;
        }
    }

    private Intent g(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.U;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private Intent h(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void i() {
        this.f346a.dismissDropDown();
    }

    private void k(View view, Rect rect) {
        view.getLocationInWindow(this.m);
        getLocationInWindow(this.n);
        int[] iArr = this.m;
        int i2 = iArr[1];
        int[] iArr2 = this.n;
        int i3 = i2 - iArr2[1];
        int i4 = iArr[0] - iArr2[0];
        rect.set(i4, i3, view.getWidth() + i4, view.getHeight() + i3);
    }

    private CharSequence l(CharSequence charSequence) {
        if (!this.A || this.p == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.f346a.getTextSize()) * 1.25d);
        this.p.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.p), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private boolean m() {
        SearchableInfo searchableInfo = this.T;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.T.getVoiceSearchLaunchWebSearch()) {
            intent = this.s;
        } else if (this.T.getVoiceSearchLaunchRecognizer()) {
            intent = this.t;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    static boolean o(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean p() {
        return (this.D || this.I) && !n();
    }

    private void q(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e2) {
            Log.e("SearchView", "Failed launch activity: " + intent, e2);
        }
    }

    private boolean s(int i2, int i3, String str) {
        Cursor cursor = this.C.getCursor();
        if (cursor == null || !cursor.moveToPosition(i2)) {
            return false;
        }
        q(f(cursor, i3, str));
        return true;
    }

    private void setQuery(CharSequence charSequence) {
        this.f346a.setText(charSequence);
        this.f346a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    void A(CharSequence charSequence) {
        Editable text = this.f346a.getText();
        this.M = text;
        boolean z = !TextUtils.isEmpty(text);
        L(z);
        N(!z);
        G();
        K();
        if (this.v != null && !TextUtils.equals(charSequence, this.K)) {
            this.v.a(charSequence.toString());
        }
        this.K = charSequence.toString();
    }

    void B() {
        M(n());
        D();
        if (this.f346a.hasFocus()) {
            j();
        }
    }

    void C() {
        SearchableInfo searchableInfo = this.T;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(h(this.s, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(g(this.t, searchableInfo));
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    public void F(CharSequence charSequence, boolean z) {
        this.f346a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f346a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.M = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        y();
    }

    void H() {
        int[] iArr = this.f346a.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.c.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f347d.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // androidx.appcompat.d.c
    public void a() {
        if (this.N) {
            return;
        }
        this.N = true;
        int imeOptions = this.f346a.getImeOptions();
        this.Q = imeOptions;
        this.f346a.setImeOptions(imeOptions | AlarmInfo.VEHICLE_GAS_EXCEPTION);
        this.f346a.setText("");
        setIconified(false);
    }

    @Override // androidx.appcompat.d.c
    public void c() {
        F("", false);
        clearFocus();
        M(true);
        this.f346a.setImeOptions(this.Q);
        this.N = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.G = true;
        super.clearFocus();
        this.f346a.clearFocus();
        this.f346a.setImeVisibility(false);
        this.G = false;
    }

    void d() {
        if (this.i.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.c.getPaddingLeft();
            Rect rect = new Rect();
            boolean zB = w0.b(this);
            int dimensionPixelSize = this.A ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f346a.getDropDownBackground().getPadding(rect);
            this.f346a.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f346a.setDropDownWidth((((this.i.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public int getImeOptions() {
        return this.f346a.getImeOptions();
    }

    public int getInputType() {
        return this.f346a.getInputType();
    }

    public int getMaxWidth() {
        return this.H;
    }

    public CharSequence getQuery() {
        return this.f346a.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.E;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.T;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.u : getContext().getText(this.T.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.r;
    }

    int getSuggestionRowLayout() {
        return this.q;
    }

    public androidx.cursoradapter.a.a getSuggestionsAdapter() {
        return this.C;
    }

    void j() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f346a.refreshAutoCompleteResults();
            return;
        }
        n nVar = h0;
        nVar.b(this.f346a);
        nVar.a(this.f346a);
    }

    public boolean n() {
        return this.B;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.V);
        post(this.W);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            k(this.f346a, this.k);
            Rect rect = this.l;
            Rect rect2 = this.k;
            rect.set(rect2.left, 0, rect2.right, i5 - i3);
            o oVar = this.j;
            if (oVar != null) {
                oVar.a(this.l, this.k);
                return;
            }
            o oVar2 = new o(this.l, this.k, this.f346a);
            this.j = oVar2;
            setTouchDelegate(oVar2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i2, int i3) {
        int i4;
        if (n()) {
            super.onMeasure(i2, i3);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            int i5 = this.H;
            size = i5 > 0 ? Math.min(i5, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.H;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i4 = this.H) > 0) {
            size = Math.min(i4, size);
        }
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        M(savedState.f352a);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f352a = n();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        D();
    }

    void r(int i2, String str, String str2) {
        getContext().startActivity(e("android.intent.action.SEARCH", null, null, str2, i2, str));
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i2, Rect rect) {
        if (this.G || !isFocusable()) {
            return false;
        }
        if (n()) {
            return super.requestFocus(i2, rect);
        }
        boolean zRequestFocus = this.f346a.requestFocus(i2, rect);
        if (zRequestFocus) {
            M(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.U = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            t();
        } else {
            x();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.A == z) {
            return;
        }
        this.A = z;
        M(z);
        I();
    }

    public void setImeOptions(int i2) {
        this.f346a.setImeOptions(i2);
    }

    public void setInputType(int i2) {
        this.f346a.setInputType(i2);
    }

    public void setMaxWidth(int i2) {
        this.H = i2;
        requestLayout();
    }

    public void setOnCloseListener(k kVar) {
        this.w = kVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.x = onFocusChangeListener;
    }

    public void setOnQueryTextListener(l lVar) {
        this.v = lVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.z = onClickListener;
    }

    public void setOnSuggestionListener(m mVar) {
        this.y = mVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.E = charSequence;
        I();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.F = z;
        androidx.cursoradapter.a.a aVar = this.C;
        if (aVar instanceof k0) {
            ((k0) aVar).n(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.T = searchableInfo;
        if (searchableInfo != null) {
            J();
            I();
        }
        boolean zM = m();
        this.I = zM;
        if (zM) {
            this.f346a.setPrivateImeOptions("nm");
        }
        M(n());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.D = z;
        M(n());
    }

    public void setSuggestionsAdapter(androidx.cursoradapter.a.a aVar) {
        this.C = aVar;
        this.f346a.setAdapter(aVar);
    }

    void t() {
        if (!TextUtils.isEmpty(this.f346a.getText())) {
            this.f346a.setText("");
            this.f346a.requestFocus();
            this.f346a.setImeVisibility(true);
        } else if (this.A) {
            k kVar = this.w;
            if (kVar == null || !kVar.onClose()) {
                clearFocus();
                M(true);
            }
        }
    }

    boolean u(int i2, int i3, String str) {
        m mVar = this.y;
        if (mVar != null && mVar.b(i2)) {
            return false;
        }
        s(i2, 0, null);
        this.f346a.setImeVisibility(false);
        i();
        return true;
    }

    boolean v(int i2) {
        m mVar = this.y;
        if (mVar != null && mVar.a(i2)) {
            return false;
        }
        E(i2);
        return true;
    }

    void w(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void x() {
        M(false);
        this.f346a.requestFocus();
        this.f346a.setImeVisibility(true);
        View.OnClickListener onClickListener = this.z;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void y() {
        Editable text = this.f346a.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        l lVar = this.v;
        if (lVar == null || !lVar.b(text.toString())) {
            if (this.T != null) {
                r(0, null, text.toString());
            }
            this.f346a.setImeVisibility(false);
            i();
        }
    }

    boolean z(View view, int i2, KeyEvent keyEvent) {
        if (this.T != null && this.C != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i2 == 66 || i2 == 84 || i2 == 61) {
                return u(this.f346a.getListSelection(), 0, null);
            }
            if (i2 == 21 || i2 == 22) {
                this.f346a.setSelection(i2 == 21 ? 0 : this.f346a.length());
                this.f346a.setListSelection(0);
                this.f346a.clearListSelection();
                this.f346a.a();
                return true;
            }
            if (i2 != 19 || this.f346a.getListSelection() == 0) {
                return false;
            }
        }
        return false;
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.k = new Rect();
        this.l = new Rect();
        this.m = new int[2];
        this.n = new int[2];
        this.V = new b();
        this.W = new c();
        this.a0 = new WeakHashMap<>();
        f fVar = new f();
        this.b0 = fVar;
        this.c0 = new g();
        h hVar = new h();
        this.d0 = hVar;
        i iVar = new i();
        this.e0 = iVar;
        j jVar = new j();
        this.f0 = jVar;
        this.g0 = new a();
        q0 q0VarV = q0.v(context, attributeSet, R.styleable.SearchView, i2, 0);
        LayoutInflater.from(context).inflate(q0VarV.n(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f346a = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.b = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.c = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f347d = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.f348e = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.f349f = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.f350g = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.f351h = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.o = imageView5;
        ViewCompat.setBackground(viewFindViewById, q0VarV.g(R.styleable.SearchView_queryBackground));
        ViewCompat.setBackground(viewFindViewById2, q0VarV.g(R.styleable.SearchView_submitBackground));
        int i3 = R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(q0VarV.g(i3));
        imageView2.setImageDrawable(q0VarV.g(R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(q0VarV.g(R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(q0VarV.g(R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(q0VarV.g(i3));
        this.p = q0VarV.g(R.styleable.SearchView_searchHintIcon);
        s0.a(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.q = q0VarV.n(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.r = q0VarV.n(R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.g0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.c0);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(q0VarV.a(R.styleable.SearchView_iconifiedByDefault, true));
        int iF = q0VarV.f(R.styleable.SearchView_android_maxWidth, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.u = q0VarV.p(R.styleable.SearchView_defaultQueryHint);
        this.E = q0VarV.p(R.styleable.SearchView_queryHint);
        int iK = q0VarV.k(R.styleable.SearchView_android_imeOptions, -1);
        if (iK != -1) {
            setImeOptions(iK);
        }
        int iK2 = q0VarV.k(R.styleable.SearchView_android_inputType, -1);
        if (iK2 != -1) {
            setInputType(iK2);
        }
        setFocusable(q0VarV.a(R.styleable.SearchView_android_focusable, true));
        q0VarV.w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.s = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.t = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.i = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new e());
        }
        M(this.A);
        I();
    }
}
