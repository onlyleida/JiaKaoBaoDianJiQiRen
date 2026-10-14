package androidx.appcompat.d;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.R;

/* JADX INFO: loaded from: classes.dex */
public class d extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f182a;
    private Resources.Theme b;
    private LayoutInflater c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Resources f184e;

    public d() {
        super(null);
    }

    private Resources b() {
        if (this.f184e == null) {
            Configuration configuration = this.f183d;
            if (configuration == null) {
                this.f184e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f184e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f183d);
                this.f184e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f184e;
    }

    private void d() {
        boolean z = this.b == null;
        if (z) {
            this.b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.b.setTo(theme);
            }
        }
        e(this.b, this.f182a, z);
    }

    public void a(Configuration configuration) {
        if (this.f184e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f183d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f183d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int c() {
        return this.f182a;
    }

    protected void e(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.c == null) {
            this.c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.b;
        if (theme != null) {
            return theme;
        }
        if (this.f182a == 0) {
            this.f182a = R.style.Theme_AppCompat_Light;
        }
        d();
        return this.b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f182a != i) {
            this.f182a = i;
            d();
        }
    }

    public d(Context context, int i) {
        super(context);
        this.f182a = i;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.b = theme;
    }
}
