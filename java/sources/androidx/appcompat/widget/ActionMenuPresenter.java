package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.core.view.ActionProvider;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter extends androidx.appcompat.view.menu.b implements ActionProvider.SubUiVisibilityListener {
    private b A;
    final f B;
    int C;
    d j;
    private Drawable k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private int v;
    private final SparseBooleanArray w;
    e x;
    a y;
    c z;

    @SuppressLint({"BanParcelableUsage"})
    private static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f306a;

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

        SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f306a);
        }

        SavedState(Parcel parcel) {
            this.f306a = parcel.readInt();
        }
    }

    private class a extends androidx.appcompat.view.menu.l {
        public a(Context context, androidx.appcompat.view.menu.r rVar, View view) {
            super(context, rVar, view, false, R.attr.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.i) rVar.getItem()).l()) {
                View view2 = ActionMenuPresenter.this.j;
                f(view2 == null ? (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f234h : view2);
            }
            j(ActionMenuPresenter.this.B);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void e() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.y = null;
            actionMenuPresenter.C = 0;
            super.e();
        }
    }

    private class b extends ActionMenuItemView.b {
        b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public androidx.appcompat.view.menu.p a() {
            a aVar = ActionMenuPresenter.this.y;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    private class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f308a;

        public c(e eVar) {
            this.f308a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).c != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).c.changeMenuMode();
            }
            View view = (View) ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).f234h;
            if (view != null && view.getWindowToken() != null && this.f308a.m()) {
                ActionMenuPresenter.this.x = this.f308a;
            }
            ActionMenuPresenter.this.z = null;
        }
    }

    private class d extends AppCompatImageView implements ActionMenuView.a {

        class a extends c0 {
            a(View view, ActionMenuPresenter actionMenuPresenter) {
                super(view);
            }

            @Override // androidx.appcompat.widget.c0
            public androidx.appcompat.view.menu.p b() {
                e eVar = ActionMenuPresenter.this.x;
                if (eVar == null) {
                    return null;
                }
                return eVar.c();
            }

            @Override // androidx.appcompat.widget.c0
            public boolean c() {
                ActionMenuPresenter.this.C();
                return true;
            }

            @Override // androidx.appcompat.widget.c0
            public boolean d() {
                ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                if (actionMenuPresenter.z != null) {
                    return false;
                }
                actionMenuPresenter.t();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            s0.a(this, getContentDescription());
            setOnTouchListener(new a(this, ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.C();
            return true;
        }

        @Override // android.widget.ImageView
        protected boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                androidx.core.graphics.drawable.a.l(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    private class e extends androidx.appcompat.view.menu.l {
        public e(Context context, androidx.appcompat.view.menu.g gVar, View view, boolean z) {
            super(context, gVar, view, z, R.attr.actionOverflowMenuStyle);
            h(GravityCompat.END);
            j(ActionMenuPresenter.this.B);
        }

        @Override // androidx.appcompat.view.menu.l
        protected void e() {
            if (((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).c != null) {
                ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).c.close();
            }
            ActionMenuPresenter.this.x = null;
            super.e();
        }
    }

    private class f implements androidx.appcompat.view.menu.m.a {
        f() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean a(androidx.appcompat.view.menu.g gVar) {
            if (gVar == ((androidx.appcompat.view.menu.b) ActionMenuPresenter.this).c) {
                return false;
            }
            ActionMenuPresenter.this.C = ((androidx.appcompat.view.menu.r) gVar).getItem().getItemId();
            androidx.appcompat.view.menu.m.a aVarE = ActionMenuPresenter.this.e();
            if (aVarE != null) {
                return aVarE.a(gVar);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void onCloseMenu(androidx.appcompat.view.menu.g gVar, boolean z) {
            if (gVar instanceof androidx.appcompat.view.menu.r) {
                gVar.getRootMenu().close(false);
            }
            androidx.appcompat.view.menu.m.a aVarE = ActionMenuPresenter.this.e();
            if (aVarE != null) {
                aVarE.onCloseMenu(gVar, z);
            }
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.w = new SparseBooleanArray();
        this.B = new f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private View r(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.f234h;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof androidx.appcompat.view.menu.n.a) && ((androidx.appcompat.view.menu.n.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public void A(Drawable drawable) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.l = true;
            this.k = drawable;
        }
    }

    public void B(boolean z) {
        this.m = z;
        this.n = true;
    }

    public boolean C() {
        androidx.appcompat.view.menu.g gVar;
        if (!this.m || w() || (gVar = this.c) == null || this.f234h == null || this.z != null || gVar.getNonActionItems().isEmpty()) {
            return false;
        }
        c cVar = new c(new e(this.b, this.c, this.j, true));
        this.z = cVar;
        ((View) this.f234h).post(cVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public void b(androidx.appcompat.view.menu.i iVar, androidx.appcompat.view.menu.n.a aVar) {
        aVar.initialize(iVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f234h);
        if (this.A == null) {
            this.A = new b();
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean d(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.j) {
            return false;
        }
        return super.d(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.b
    public View f(androidx.appcompat.view.menu.i iVar, View view, ViewGroup viewGroup) {
        View actionView = iVar.getActionView();
        if (actionView == null || iVar.j()) {
            actionView = super.f(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean flagActionItems() {
        ArrayList<androidx.appcompat.view.menu.i> visibleItems;
        int size;
        int i;
        int iN;
        ActionMenuPresenter actionMenuPresenter = this;
        androidx.appcompat.view.menu.g gVar = actionMenuPresenter.c;
        View view = null;
        int i2 = 0;
        if (gVar != null) {
            visibleItems = gVar.getVisibleItems();
            size = visibleItems.size();
        } else {
            visibleItems = null;
            size = 0;
        }
        int i3 = actionMenuPresenter.q;
        int i4 = actionMenuPresenter.p;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f234h;
        boolean z = false;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            androidx.appcompat.view.menu.i iVar = visibleItems.get(i7);
            if (iVar.o()) {
                i5++;
            } else if (iVar.n()) {
                i6++;
            } else {
                z = true;
            }
            if (actionMenuPresenter.u && iVar.isActionViewExpanded()) {
                i3 = 0;
            }
        }
        if (actionMenuPresenter.m && (z || i6 + i5 > i3)) {
            i3--;
        }
        int i8 = i3 - i5;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.w;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.s) {
            int i9 = actionMenuPresenter.v;
            iN = i4 / i9;
            i = i9 + ((i4 % i9) / iN);
        } else {
            i = 0;
            iN = 0;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            androidx.appcompat.view.menu.i iVar2 = visibleItems.get(i10);
            if (iVar2.o()) {
                View viewF = actionMenuPresenter.f(iVar2, view, viewGroup);
                if (actionMenuPresenter.s) {
                    iN -= ActionMenuView.n(viewF, i, iN, iMakeMeasureSpec, i2);
                } else {
                    viewF.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewF.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                int groupId = iVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                iVar2.u(true);
            } else {
                if (iVar2.n()) {
                    int groupId2 = iVar2.getGroupId();
                    boolean z2 = sparseBooleanArray.get(groupId2);
                    boolean z3 = (i8 > 0 || z2) && i4 > 0 && (!actionMenuPresenter.s || iN > 0);
                    boolean z4 = z3;
                    if (z3) {
                        View viewF2 = actionMenuPresenter.f(iVar2, null, viewGroup);
                        if (actionMenuPresenter.s) {
                            int iN2 = ActionMenuView.n(viewF2, i, iN, iMakeMeasureSpec, 0);
                            iN -= iN2;
                            if (iN2 == 0) {
                                z4 = false;
                            }
                        } else {
                            viewF2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        }
                        boolean z5 = z4;
                        int measuredWidth2 = viewF2.getMeasuredWidth();
                        i4 -= measuredWidth2;
                        if (i11 == 0) {
                            i11 = measuredWidth2;
                        }
                        z3 = z5 & (!actionMenuPresenter.s ? i4 + i11 <= 0 : i4 < 0);
                    }
                    if (z3 && groupId2 != 0) {
                        sparseBooleanArray.put(groupId2, true);
                    } else if (z2) {
                        sparseBooleanArray.put(groupId2, false);
                        for (int i12 = 0; i12 < i10; i12++) {
                            androidx.appcompat.view.menu.i iVar3 = visibleItems.get(i12);
                            if (iVar3.getGroupId() == groupId2) {
                                if (iVar3.l()) {
                                    i8++;
                                }
                                iVar3.u(false);
                            }
                        }
                    }
                    if (z3) {
                        i8--;
                    }
                    iVar2.u(z3);
                } else {
                    size = size;
                    iVar2.u(false);
                }
                i10++;
                view = null;
                actionMenuPresenter = this;
                size = size;
                i2 = 0;
            }
            i10++;
            view = null;
            actionMenuPresenter = this;
            size = size;
            i2 = 0;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.b
    public androidx.appcompat.view.menu.n g(ViewGroup viewGroup) {
        androidx.appcompat.view.menu.n nVar = this.f234h;
        androidx.appcompat.view.menu.n nVarG = super.g(viewGroup);
        if (nVar != nVarG) {
            ((ActionMenuView) nVarG).setPresenter(this);
        }
        return nVarG;
    }

    @Override // androidx.appcompat.view.menu.b
    public boolean i(int i, androidx.appcompat.view.menu.i iVar) {
        return iVar.l();
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void initForMenu(Context context, androidx.appcompat.view.menu.g gVar) {
        super.initForMenu(context, gVar);
        Resources resources = context.getResources();
        androidx.appcompat.d.a aVarB = androidx.appcompat.d.a.b(context);
        if (!this.n) {
            this.m = aVarB.h();
        }
        if (!this.t) {
            this.o = aVarB.c();
        }
        if (!this.r) {
            this.q = aVarB.d();
        }
        int measuredWidth = this.o;
        if (this.m) {
            if (this.j == null) {
                d dVar = new d(this.f229a);
                this.j = dVar;
                if (this.l) {
                    dVar.setImageDrawable(this.k);
                    this.k = null;
                    this.l = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.j.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.j.getMeasuredWidth();
        } else {
            this.j = null;
        }
        this.p = measuredWidth;
        this.v = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void onCloseMenu(androidx.appcompat.view.menu.g gVar, boolean z) {
        q();
        super.onCloseMenu(gVar, z);
    }

    @Override // androidx.appcompat.view.menu.m
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        MenuItem menuItemFindItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).f306a) > 0 && (menuItemFindItem = this.c.findItem(i)) != null) {
            onSubMenuSelected((androidx.appcompat.view.menu.r) menuItemFindItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f306a = this.C;
        return savedState;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public boolean onSubMenuSelected(androidx.appcompat.view.menu.r rVar) {
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.r rVar2 = rVar;
        while (rVar2.getParentMenu() != this.c) {
            rVar2 = (androidx.appcompat.view.menu.r) rVar2.getParentMenu();
        }
        View viewR = r(rVar2.getItem());
        if (viewR == null) {
            return false;
        }
        this.C = rVar.getItem().getItemId();
        int size = rVar.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = rVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
        }
        a aVar = new a(this.b, rVar, viewR);
        this.y = aVar;
        aVar.g(z);
        this.y.k();
        super.onSubMenuSelected(rVar);
        return true;
    }

    @Override // androidx.core.view.ActionProvider.SubUiVisibilityListener
    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
            return;
        }
        androidx.appcompat.view.menu.g gVar = this.c;
        if (gVar != null) {
            gVar.close(false);
        }
    }

    public boolean q() {
        return t() | u();
    }

    public Drawable s() {
        d dVar = this.j;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.l) {
            return this.k;
        }
        return null;
    }

    public boolean t() {
        Object obj;
        c cVar = this.z;
        if (cVar != null && (obj = this.f234h) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.z = null;
            return true;
        }
        e eVar = this.x;
        if (eVar == null) {
            return false;
        }
        eVar.b();
        return true;
    }

    public boolean u() {
        a aVar = this.y;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    @Override // androidx.appcompat.view.menu.b, androidx.appcompat.view.menu.m
    public void updateMenuView(boolean z) {
        super.updateMenuView(z);
        ((View) this.f234h).requestLayout();
        androidx.appcompat.view.menu.g gVar = this.c;
        boolean z2 = false;
        if (gVar != null) {
            ArrayList<androidx.appcompat.view.menu.i> actionItems = gVar.getActionItems();
            int size = actionItems.size();
            for (int i = 0; i < size; i++) {
                ActionProvider actionProviderA = actionItems.get(i).a();
                if (actionProviderA != null) {
                    actionProviderA.setSubUiVisibilityListener(this);
                }
            }
        }
        androidx.appcompat.view.menu.g gVar2 = this.c;
        ArrayList<androidx.appcompat.view.menu.i> nonActionItems = gVar2 != null ? gVar2.getNonActionItems() : null;
        if (this.m && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z2 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.j == null) {
                this.j = new d(this.f229a);
            }
            ViewGroup viewGroup = (ViewGroup) this.j.getParent();
            if (viewGroup != this.f234h) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f234h;
                actionMenuView.addView(this.j, actionMenuView.h());
            }
        } else {
            d dVar = this.j;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.f234h;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.j);
                }
            }
        }
        ((ActionMenuView) this.f234h).setOverflowReserved(this.m);
    }

    public boolean v() {
        return this.z != null || w();
    }

    public boolean w() {
        e eVar = this.x;
        return eVar != null && eVar.d();
    }

    public void x(Configuration configuration) {
        if (!this.r) {
            this.q = androidx.appcompat.d.a.b(this.b).d();
        }
        androidx.appcompat.view.menu.g gVar = this.c;
        if (gVar != null) {
            gVar.onItemsChanged(true);
        }
    }

    public void y(boolean z) {
        this.u = z;
    }

    public void z(ActionMenuView actionMenuView) {
        this.f234h = actionMenuView;
        actionMenuView.initialize(this.c);
    }
}
