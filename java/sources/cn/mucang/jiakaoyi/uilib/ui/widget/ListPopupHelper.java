package cn.mucang.jiakaoyi.uilib.ui.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.d0;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.widget.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JJ\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/widget/ListPopupHelper;", "", "()V", "showPop", "", "view", "Landroid/view/View;", "list", "", "", "onChosen", "Lkotlin/Function1;", "", "resLayoutId", "needSave", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ListPopupHelper {
    public static final void b(final View view, final List<String> list, final Function1<? super Integer, v> function1, int i, final boolean z) {
        r.e(view, "view");
        r.e(list, "list");
        final d0 d0Var = new d0(view.getContext());
        d0Var.l(new ArrayAdapter(view.getContext(), i, list));
        d0Var.P(-2);
        d0Var.G(-2);
        d0Var.B(view);
        d0Var.I(true);
        d0Var.K(new AdapterView.OnItemClickListener() { // from class: cn.mucang.jiakaoyi.uilib.ui.widget.a
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                ListPopupHelper.d(view, z, list, function1, d0Var, adapterView, view2, i2, j);
            }
        });
        d0Var.show();
    }

    public static /* synthetic */ void c(View view, List list, Function1 function1, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        if ((i2 & 8) != 0) {
            i = R.layout.common_list_popup_item;
        }
        if ((i2 & 16) != 0) {
            z = true;
        }
        b(view, list, function1, i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(View view, boolean z, List list, Function1 function1, d0 pop, AdapterView adapterView, View view2, int i, long j) {
        r.e(view, "$view");
        r.e(list, "$list");
        r.e(pop, "$pop");
        if ((view instanceof TextView) && z) {
            TextView textView = (TextView) view;
            if (r.a(textView.getText(), list.get(i))) {
                return;
            } else {
                textView.setText((CharSequence) list.get(i));
            }
        }
        if (function1 != null) {
            function1.invoke(Integer.valueOf(i));
        }
        pop.dismiss();
    }
}
