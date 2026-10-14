package f.a.a.e.a.b;

import android.view.View;
import android.view.ViewGroup;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class a<M extends BaseModel> extends b<M> {
    protected static final int b = R.id.ui_framework__card_presenter;
    protected static final int c = R.id.ui_framework__card_type;

    protected void b(cn.mucang.android.ui.framework.mvp.a aVar, M m) {
        if (aVar == null) {
            return;
        }
        aVar.g();
        aVar.a(m);
    }

    protected abstract cn.mucang.android.ui.framework.mvp.a c(View view, int i);

    protected abstract cn.mucang.android.ui.framework.mvp.b d(ViewGroup viewGroup, int i);

    /* JADX WARN: Code duplicated, block: B:10:0x0024  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int iIntValue;
        View view2;
        cn.mucang.android.ui.framework.mvp.a aVarC;
        int itemViewType = getCount() <= i ? super.getItemViewType(i) : getItemViewType(i);
        if (view != 0) {
            int i2 = c;
            if (view.getTag(i2) != null) {
                iIntValue = ((Integer) view.getTag(i2)).intValue();
            } else {
                iIntValue = -1;
            }
        } else {
            iIntValue = -1;
        }
        if ((view instanceof cn.mucang.android.ui.framework.mvp.b) && itemViewType == iIntValue) {
            view2 = ((cn.mucang.android.ui.framework.mvp.b) view).getView();
            aVarC = (cn.mucang.android.ui.framework.mvp.a) view2.getTag(b);
        } else {
            view2 = d(viewGroup, itemViewType).getView();
            aVarC = c(view2, itemViewType);
            view2.setTag(b, aVarC);
            view2.setTag(c, Integer.valueOf(itemViewType));
        }
        b(aVarC, getItem(i));
        return view2;
    }
}
