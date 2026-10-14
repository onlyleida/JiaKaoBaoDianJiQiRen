package androidx.appcompat.d;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.j;
import androidx.appcompat.widget.q0;
import androidx.appcompat.widget.z;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class g extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Class<?>[] f193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Class<?>[] f194f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object[] f195a;
    final Object[] b;
    Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f196d;

    private static class a implements MenuItem.OnMenuItemClickListener {
        private static final Class<?>[] c = {MenuItem.class};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f197a;
        private Method b;

        public a(Object obj, String str) {
            this.f197a = obj;
            Class<?> cls = obj.getClass();
            try {
                this.b = cls.getMethod(str, c);
            } catch (Exception e2) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.b.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.b.invoke(this.f197a, menuItem)).booleanValue();
                }
                this.b.invoke(this.f197a, menuItem);
                return true;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    private class b {
        ActionProvider A;
        private CharSequence B;
        private CharSequence C;
        private ColorStateList D = null;
        private PorterDuff.Mode E = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Menu f198a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f199d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f200e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f201f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f202g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f203h;
        private int i;
        private int j;
        private CharSequence k;
        private CharSequence l;
        private int m;
        private char n;
        private int o;
        private char p;
        private int q;
        private int r;
        private boolean s;
        private boolean t;
        private boolean u;
        private int v;
        private int w;
        private String x;
        private String y;
        private String z;

        public b(Menu menu) {
            this.f198a = menu;
            h();
        }

        private char c(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T e(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, g.this.c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e2) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e2);
                return null;
            }
        }

        private void i(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.z != null) {
                if (g.this.c.isRestricted()) {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new a(g.this.b(), this.z));
            }
            if (this.r >= 2) {
                if (menuItem instanceof androidx.appcompat.view.menu.i) {
                    ((androidx.appcompat.view.menu.i) menuItem).t(true);
                } else if (menuItem instanceof j) {
                    ((j) menuItem).h(true);
                }
            }
            String str = this.x;
            if (str != null) {
                menuItem.setActionView((View) e(str, g.f193e, g.this.f195a));
                z = true;
            }
            int i2 = this.w;
            if (i2 > 0) {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i2);
                }
            }
            ActionProvider actionProvider = this.A;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.B);
            MenuItemCompat.setTooltipText(menuItem, this.C);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.n, this.o);
            MenuItemCompat.setNumericShortcut(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.E;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void a() {
            this.f203h = true;
            i(this.f198a.add(this.b, this.i, this.j, this.k));
        }

        public SubMenu b() {
            this.f203h = true;
            SubMenu subMenuAddSubMenu = this.f198a.addSubMenu(this.b, this.i, this.j, this.k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean d() {
            return this.f203h;
        }

        public void f(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = g.this.c.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
            this.b = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.c = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.f199d = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.f200e = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f201f = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.f202g = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(AttributeSet attributeSet) {
            q0 q0VarU = q0.u(g.this.c, attributeSet, R.styleable.MenuItem);
            this.i = q0VarU.n(R.styleable.MenuItem_android_id, 0);
            this.j = (q0VarU.k(R.styleable.MenuItem_android_menuCategory, this.c) & (-65536)) | (q0VarU.k(R.styleable.MenuItem_android_orderInCategory, this.f199d) & ExifInterface.COLOR_SPACE_UNCALIBRATED);
            this.k = q0VarU.p(R.styleable.MenuItem_android_title);
            this.l = q0VarU.p(R.styleable.MenuItem_android_titleCondensed);
            this.m = q0VarU.n(R.styleable.MenuItem_android_icon, 0);
            this.n = c(q0VarU.o(R.styleable.MenuItem_android_alphabeticShortcut));
            this.o = q0VarU.k(R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.p = c(q0VarU.o(R.styleable.MenuItem_android_numericShortcut));
            this.q = q0VarU.k(R.styleable.MenuItem_numericModifiers, 4096);
            int i = R.styleable.MenuItem_android_checkable;
            if (q0VarU.s(i)) {
                this.r = q0VarU.a(i, false) ? 1 : 0;
            } else {
                this.r = this.f200e;
            }
            this.s = q0VarU.a(R.styleable.MenuItem_android_checked, false);
            this.t = q0VarU.a(R.styleable.MenuItem_android_visible, this.f201f);
            this.u = q0VarU.a(R.styleable.MenuItem_android_enabled, this.f202g);
            this.v = q0VarU.k(R.styleable.MenuItem_showAsAction, -1);
            this.z = q0VarU.o(R.styleable.MenuItem_android_onClick);
            this.w = q0VarU.n(R.styleable.MenuItem_actionLayout, 0);
            this.x = q0VarU.o(R.styleable.MenuItem_actionViewClass);
            String strO = q0VarU.o(R.styleable.MenuItem_actionProviderClass);
            this.y = strO;
            boolean z = strO != null;
            if (z && this.w == 0 && this.x == null) {
                this.A = (ActionProvider) e(strO, g.f194f, g.this.b);
            } else {
                if (z) {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = q0VarU.p(R.styleable.MenuItem_contentDescription);
            this.C = q0VarU.p(R.styleable.MenuItem_tooltipText);
            int i2 = R.styleable.MenuItem_iconTintMode;
            if (q0VarU.s(i2)) {
                this.E = z.e(q0VarU.k(i2, -1), this.E);
            } else {
                this.E = null;
            }
            int i3 = R.styleable.MenuItem_iconTint;
            if (q0VarU.s(i3)) {
                this.D = q0VarU.c(i3);
            } else {
                this.D = null;
            }
            q0VarU.w();
            this.f203h = false;
        }

        public void h() {
            this.b = 0;
            this.c = 0;
            this.f199d = 0;
            this.f200e = 0;
            this.f201f = true;
            this.f202g = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        f193e = clsArr;
        f194f = clsArr;
    }

    public g(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.f195a = objArr;
        this.b = objArr;
    }

    private Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void c(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        b bVar = new b(menu);
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                    break;
                }
                throw new RuntimeException("Expecting menu, got " + name);
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            if (eventType == 1) {
                throw new RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    String name2 = xmlPullParser.getName();
                    if (z2 && name2.equals(str)) {
                        str = null;
                        z2 = false;
                    } else if (name2.equals("group")) {
                        bVar.h();
                    } else if (name2.equals("item")) {
                        if (!bVar.d()) {
                            ActionProvider actionProvider = bVar.A;
                            if (actionProvider == null || !actionProvider.hasSubMenu()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z = true;
                    }
                }
            } else if (!z2) {
                String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z2 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    Object b() {
        if (this.f196d == null) {
            this.f196d = a(this.c);
        }
        return this.f196d;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        if (!(menu instanceof androidx.core.b.a.a)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.c.getResources().getLayout(i);
                    c(layout, Xml.asAttributeSet(layout), menu);
                    if (layout != null) {
                        layout.close();
                    }
                } catch (XmlPullParserException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (IOException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
