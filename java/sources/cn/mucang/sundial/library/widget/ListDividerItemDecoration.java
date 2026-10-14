package cn.mucang.sundial.library.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.s0;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcn/mucang/sundial/library/widget/ListDividerItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$n;", "Landroid/view/View;", "view", "Landroidx/recyclerview/widget/RecyclerView;", "parent", "", "isLastRow", "(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z", "isFirstRow", "Landroid/graphics/Rect;", "outRect", "Landroidx/recyclerview/widget/RecyclerView$z;", "state", "Lkotlin/v;", "getItemOffsets", "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ListDividerItemDecoration extends RecyclerView.n {
    private final boolean isFirstRow(View view, RecyclerView parent) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof RecyclerView.p)) {
            layoutParams = null;
        }
        RecyclerView.p pVar = (RecyclerView.p) layoutParams;
        return (parent.getLayoutManager() instanceof LinearLayoutManager) && (pVar != null ? pVar.a() : -1) == 0;
    }

    private final boolean isLastRow(View view, RecyclerView parent) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof RecyclerView.p)) {
            layoutParams = null;
        }
        RecyclerView.p pVar = (RecyclerView.p) layoutParams;
        int iA = pVar != null ? pVar.a() : -1;
        return (parent.getLayoutManager() instanceof LinearLayoutManager) && iA > -1 && iA == parent.getChildCount() - 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.n
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.z state) {
        r.e(outRect, "outRect");
        r.e(view, "view");
        r.e(parent, "parent");
        r.e(state, "state");
        outRect.set(s0.a(1.0f), isFirstRow(view, parent) ? s0.a(1.0f) : 0, s0.a(1.0f), isLastRow(view, parent) ? s0.a(1.0f) : 0);
    }
}
