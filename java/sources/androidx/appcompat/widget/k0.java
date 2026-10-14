package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class k0 extends androidx.cursoradapter.a.c implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SearchView f457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SearchableInfo f458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f459f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final WeakHashMap<String, Drawable.ConstantState> f460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f461h;
    private boolean i;
    private int j;
    private ColorStateList k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f462a;
        public final TextView b;
        public final ImageView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImageView f463d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImageView f464e;

        public a(View view) {
            this.f462a = (TextView) view.findViewById(R.id.text1);
            this.b = (TextView) view.findViewById(R.id.text2);
            this.c = (ImageView) view.findViewById(R.id.icon1);
            this.f463d = (ImageView) view.findViewById(R.id.icon2);
            this.f464e = (ImageView) view.findViewById(androidx.appcompat.R.id.edit_query);
        }
    }

    public k0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.i = false;
        this.j = 1;
        this.l = -1;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.p = -1;
        this.q = -1;
        this.f457d = searchView;
        this.f458e = searchableInfo;
        this.f461h = searchView.getSuggestionCommitIconResId();
        this.f459f = context;
        this.f460g = weakHashMap;
    }

    private Drawable a(String str) {
        Drawable.ConstantState constantState = this.f460g.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.k == null) {
            TypedValue typedValue = new TypedValue();
            this.f459f.getTheme().resolveAttribute(androidx.appcompat.R.attr.textColorSearchUrl, typedValue, true);
            this.k = this.f459f.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.k, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable c(ComponentName componentName) {
        PackageManager packageManager = this.f459f.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("SuggestionsAdapter", e2.toString());
            return null;
        }
    }

    private Drawable d(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.f460g.containsKey(strFlattenToShortString)) {
            Drawable drawableC = c(componentName);
            this.f460g.put(strFlattenToShortString, drawableC != null ? drawableC.getConstantState() : null);
            return drawableC;
        }
        Drawable.ConstantState constantState = this.f460g.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.f459f.getResources());
    }

    public static String e(Cursor cursor, String str) {
        return m(cursor, cursor.getColumnIndex(str));
    }

    private Drawable f() {
        Drawable drawableD = d(this.f458e.getSearchActivity());
        return drawableD != null ? drawableD : this.f459f.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable g(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return h(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.f459f.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e2) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
                }
                return drawableCreateFromStream;
            } catch (Throwable th) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e3) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e3);
                }
                throw th;
            }
        } catch (FileNotFoundException e4) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e4.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e4.getMessage());
        return null;
    }

    private Drawable i(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int i = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f459f.getPackageName() + "/" + i;
            Drawable drawableA = a(str2);
            if (drawableA != null) {
                return drawableA;
            }
            Drawable drawableF = androidx.core.a.a.f(this.f459f, i);
            q(str2, drawableF);
            return drawableF;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableA2 = a(str);
            if (drawableA2 != null) {
                return drawableA2;
            }
            Drawable drawableG = g(Uri.parse(str));
            q(str, drawableG);
            return drawableG;
        }
    }

    private Drawable j(Cursor cursor) {
        int i = this.o;
        if (i == -1) {
            return null;
        }
        Drawable drawableI = i(cursor.getString(i));
        return drawableI != null ? drawableI : f();
    }

    private Drawable k(Cursor cursor) {
        int i = this.p;
        if (i == -1) {
            return null;
        }
        return i(cursor.getString(i));
    }

    private static String m(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e2);
            return null;
        }
    }

    private void o(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void p(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void q(String str, Drawable drawable) {
        if (drawable != null) {
            this.f460g.put(str, drawable.getConstantState());
        }
    }

    private void r(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // androidx.cursoradapter.a.a
    public void bindView(View view, Context context, Cursor cursor) {
        a aVar = (a) view.getTag();
        int i = this.q;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.f462a != null) {
            p(aVar.f462a, m(cursor, this.l));
        }
        if (aVar.b != null) {
            String strM = m(cursor, this.n);
            CharSequence charSequenceB = strM != null ? b(strM) : m(cursor, this.m);
            if (TextUtils.isEmpty(charSequenceB)) {
                TextView textView = aVar.f462a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f462a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f462a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f462a.setMaxLines(1);
                }
            }
            p(aVar.b, charSequenceB);
        }
        ImageView imageView = aVar.c;
        if (imageView != null) {
            o(imageView, j(cursor), 4);
        }
        ImageView imageView2 = aVar.f463d;
        if (imageView2 != null) {
            o(imageView2, k(cursor), 8);
        }
        int i3 = this.j;
        if (i3 != 2 && (i3 != 1 || (i2 & 1) == 0)) {
            aVar.f464e.setVisibility(8);
            return;
        }
        aVar.f464e.setVisibility(0);
        aVar.f464e.setTag(aVar.f462a.getText());
        aVar.f464e.setOnClickListener(this);
    }

    @Override // androidx.cursoradapter.a.a, androidx.cursoradapter.a.b.a
    public void changeCursor(Cursor cursor) {
        if (this.i) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.l = cursor.getColumnIndex("suggest_text_1");
                this.m = cursor.getColumnIndex("suggest_text_2");
                this.n = cursor.getColumnIndex("suggest_text_2_url");
                this.o = cursor.getColumnIndex("suggest_icon_1");
                this.p = cursor.getColumnIndex("suggest_icon_2");
                this.q = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e2);
        }
    }

    @Override // androidx.cursoradapter.a.a, androidx.cursoradapter.a.b.a
    public CharSequence convertToString(Cursor cursor) {
        String strE;
        String strE2;
        if (cursor == null) {
            return null;
        }
        String strE3 = e(cursor, "suggest_intent_query");
        if (strE3 != null) {
            return strE3;
        }
        if (this.f458e.shouldRewriteQueryFromData() && (strE2 = e(cursor, "suggest_intent_data")) != null) {
            return strE2;
        }
        if (!this.f458e.shouldRewriteQueryFromText() || (strE = e(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strE;
    }

    @Override // androidx.cursoradapter.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewNewDropDownView = newDropDownView(this.f459f, getCursor(), viewGroup);
            if (viewNewDropDownView != null) {
                ((a) viewNewDropDownView.getTag()).f462a.setText(e2.toString());
            }
            return viewNewDropDownView;
        }
    }

    @Override // androidx.cursoradapter.a.a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewNewView = newView(this.f459f, getCursor(), viewGroup);
            if (viewNewView != null) {
                ((a) viewNewView.getTag()).f462a.setText(e2.toString());
            }
            return viewNewView;
        }
    }

    Drawable h(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f459f.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    @Override // androidx.cursoradapter.a.a, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    Cursor l(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f459f.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    public void n(int i) {
        this.j = i;
    }

    @Override // androidx.cursoradapter.a.c, androidx.cursoradapter.a.a
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewNewView = super.newView(context, cursor, viewGroup);
        viewNewView.setTag(new a(viewNewView));
        ((ImageView) viewNewView.findViewById(androidx.appcompat.R.id.edit_query)).setImageResource(this.f461h);
        return viewNewView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        r(getCursor());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        r(getCursor());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f457d.w((CharSequence) tag);
        }
    }

    @Override // androidx.cursoradapter.a.a, androidx.cursoradapter.a.b.a
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        if (this.f457d.getVisibility() == 0 && this.f457d.getWindowVisibility() == 0) {
            try {
                Cursor cursorL = l(this.f458e, string, 50);
                if (cursorL != null) {
                    cursorL.getCount();
                    return cursorL;
                }
            } catch (RuntimeException e2) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e2);
            }
        }
        return null;
    }
}
