package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.appcompat.widget.q0;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements g.b, n, AdapterView.OnItemClickListener {
    private static final int[] c = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f216a;
    private int b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean b(i iVar) {
        return this.f216a.performItemAction(iVar, 0);
    }

    public int getWindowAnimations() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.n
    public void initialize(g gVar) {
        this.f216a = gVar;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        b((i) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        q0 q0VarV = q0.v(context, attributeSet, c, i, 0);
        if (q0VarV.s(0)) {
            setBackgroundDrawable(q0VarV.g(0));
        }
        if (q0VarV.s(1)) {
            setDivider(q0VarV.g(1));
        }
        q0VarV.w();
    }
}
