package cn.mucang.sundial.library.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.core.utils.s0;
import cn.mucang.sundial.library.R;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.u;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.e.c.a;
import net.lucode.hackware.magicindicator.e.c.b.c;
import net.lucode.hackware.magicindicator.e.c.b.d;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001 B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006!"}, d2 = {"Lcn/mucang/sundial/library/widget/TTNavigator;", "Lnet/lucode/hackware/magicindicator/e/c/a;", "Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;", "Landroidx/viewpager/widget/ViewPager;", "pager", "Lkotlin/v;", "updateTabs", "(Landroidx/viewpager/widget/ViewPager;)V", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "indicator", "", "tab", "singleTab", "(Lnet/lucode/hackware/magicindicator/MagicIndicator;Ljava/lang/CharSequence;)V", "bindTo", "(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V", "viewPager", "Landroidx/viewpager/widget/PagerAdapter;", "oldAdapter", "newAdapter", "onAdapterChanged", "(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V", "Landroid/database/DataSetObserver;", "dataSetObserver", "Landroid/database/DataSetObserver;", "", "hasBind", "Z", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Adapter", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TTNavigator extends a implements ViewPager.OnAdapterChangeListener {
    private DataSetObserver dataSetObserver;
    private boolean hasBind;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\f\u0010\rR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcn/mucang/sundial/library/widget/TTNavigator$Adapter;", "Lnet/lucode/hackware/magicindicator/e/c/b/a;", "Landroid/content/Context;", "context", "", "index", "Lnet/lucode/hackware/magicindicator/e/c/b/d;", "getTitleView", "(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/e/c/b/d;", "getCount", "()I", "Lnet/lucode/hackware/magicindicator/e/c/b/c;", "getIndicator", "(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/e/c/b/c;", "", "", "items", "Ljava/util/List;", "Landroidx/viewpager/widget/ViewPager;", "pager", "Landroidx/viewpager/widget/ViewPager;", "<init>", "(Ljava/util/List;Landroidx/viewpager/widget/ViewPager;)V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class Adapter extends net.lucode.hackware.magicindicator.e.c.b.a {
        private final List<CharSequence> items;
        private final ViewPager pager;

        /* JADX WARN: Multi-variable type inference failed */
        public Adapter(List<? extends CharSequence> items, ViewPager viewPager) {
            r.e(items, "items");
            this.items = items;
            this.pager = viewPager;
        }

        @Override // net.lucode.hackware.magicindicator.e.c.b.a
        public int getCount() {
            return this.items.size();
        }

        @Override // net.lucode.hackware.magicindicator.e.c.b.a
        public c getIndicator(Context context) {
            r.e(context, "context");
            net.lucode.hackware.magicindicator.e.c.c.a aVar = new net.lucode.hackware.magicindicator.e.c.c.a(context);
            aVar.setMode(1);
            aVar.setLineHeight(s0.a(3.0f));
            aVar.setRoundRadius(s0.a(2.0f));
            aVar.setColors(Integer.valueOf(Color.parseColor("#008AFF")));
            return aVar;
        }

        @Override // net.lucode.hackware.magicindicator.e.c.b.a
        public d getTitleView(Context context, final int index) {
            r.e(context, "context");
            final TTPagerTitleView tTPagerTitleView = new TTPagerTitleView(context);
            tTPagerTitleView.setNormalColor(Color.parseColor("#ff6e6e6e"));
            tTPagerTitleView.setSelectedColor(Color.parseColor("#333333"));
            tTPagerTitleView.setTextSize(0, context.getResources().getDimensionPixelSize(R.dimen.tt__text_size_tab));
            tTPagerTitleView.setText(this.items.get(index));
            tTPagerTitleView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.sundial.library.widget.TTNavigator$Adapter$getTitleView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ViewPager viewPager = this.this$0.pager;
                    if (viewPager != null) {
                        viewPager.setCurrentItem(index);
                    }
                }
            });
            tTPagerTitleView.post(new Runnable() { // from class: cn.mucang.sundial.library.widget.TTNavigator$Adapter$getTitleView$2
                @Override // java.lang.Runnable
                public final void run() {
                    ViewGroup.LayoutParams layoutParams = tTPagerTitleView.getLayoutParams();
                    if (!(layoutParams instanceof LinearLayout.LayoutParams)) {
                        layoutParams = null;
                    }
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
                    if (layoutParams2 != null) {
                        layoutParams2.rightMargin = s0.a(48.0f);
                        tTPagerTitleView.setLayoutParams(layoutParams2);
                    }
                }
            });
            return tTPagerTitleView;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TTNavigator(Context context) {
        super(context);
        r.e(context, "context");
        setAdjustMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTabs(final ViewPager pager) {
        final ArrayList arrayList = new ArrayList();
        PagerAdapter it = pager.getAdapter();
        if (it != null) {
            r.d(it, "it");
            int count = it.getCount();
            for (int i = 0; i < count; i++) {
                CharSequence pageTitle = it.getPageTitle(i);
                if (pageTitle == null) {
                    pageTitle = "";
                }
                r.d(pageTitle, "it.getPageTitle(i) ?: \"\"");
                arrayList.add(pageTitle);
            }
            if (this.dataSetObserver == null) {
                this.dataSetObserver = new DataSetObserver() { // from class: cn.mucang.sundial.library.widget.TTNavigator$updateTabs$$inlined$let$lambda$1
                    @Override // android.database.DataSetObserver
                    public void onChanged() {
                        this.this$0.updateTabs(pager);
                    }
                };
            }
            DataSetObserver dataSetObserver = this.dataSetObserver;
            if (dataSetObserver != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    it.unregisterDataSetObserver(dataSetObserver);
                    Result.m139constructorimpl(v.f15822a);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th));
                }
                it.registerDataSetObserver(dataSetObserver);
            }
        }
        pager.removeOnAdapterChangeListener(this);
        pager.addOnAdapterChangeListener(this);
        setAdapter(new Adapter(arrayList, pager));
    }

    public final void bindTo(MagicIndicator indicator, ViewPager pager) {
        r.e(indicator, "indicator");
        r.e(pager, "pager");
        updateTabs(pager);
        indicator.setNavigator(this);
        if (this.hasBind) {
            return;
        }
        this.hasBind = true;
        net.lucode.hackware.magicindicator.c.a(indicator, pager);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
    public void onAdapterChanged(ViewPager viewPager, PagerAdapter oldAdapter, PagerAdapter newAdapter) {
        r.e(viewPager, "viewPager");
        updateTabs(viewPager);
    }

    public final void singleTab(MagicIndicator indicator, CharSequence tab) {
        r.e(indicator, "indicator");
        r.e(tab, "tab");
        setAdapter(new Adapter(u.p(tab), null));
        indicator.setNavigator(this);
    }
}
