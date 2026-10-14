package androidx.cursoradapter.a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1246a;
    private int b;
    private LayoutInflater c;

    @Deprecated
    public c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.b = i;
        this.f1246a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.cursoradapter.a.a
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.c.inflate(this.b, viewGroup, false);
    }

    @Override // androidx.cursoradapter.a.a
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.c.inflate(this.f1246a, viewGroup, false);
    }
}
