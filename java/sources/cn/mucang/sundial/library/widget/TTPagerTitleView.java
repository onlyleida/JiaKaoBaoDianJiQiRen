package cn.mucang.sundial.library.widget;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import net.lucode.hackware.magicindicator.e.c.e.a;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/mucang/sundial/library/widget/TTPagerTitleView;", "Lnet/lucode/hackware/magicindicator/e/c/e/a;", "", "index", "totalCount", "Lkotlin/v;", "onSelected", "(II)V", "onDeselected", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class TTPagerTitleView extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TTPagerTitleView(Context context) {
        super(context);
        r.e(context, "context");
        setGravity(19);
        setPadding(0, 0, 0, 0);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.e.a, net.lucode.hackware.magicindicator.e.c.e.b, net.lucode.hackware.magicindicator.e.c.b.d
    public void onDeselected(int index, int totalCount) {
        super.onDeselected(index, totalCount);
        setTypeface(null, 0);
    }

    @Override // net.lucode.hackware.magicindicator.e.c.e.a, net.lucode.hackware.magicindicator.e.c.e.b, net.lucode.hackware.magicindicator.e.c.b.d
    public void onSelected(int index, int totalCount) {
        super.onSelected(index, totalCount);
        setTypeface(null, 1);
    }
}
