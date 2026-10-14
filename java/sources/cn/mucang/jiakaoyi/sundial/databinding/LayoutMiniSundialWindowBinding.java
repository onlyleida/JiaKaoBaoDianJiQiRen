package cn.mucang.jiakaoyi.sundial.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.sundial.R;
import cn.mucang.jiakaoyi.sundial.client.view.DraggableView;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutMiniSundialWindowBinding implements a {
    public final DraggableView dragView;
    public final LinearLayout llDetail;
    private final DraggableView rootView;
    public final TextView tvLogout;
    public final TextView tvTime;

    private LayoutMiniSundialWindowBinding(DraggableView draggableView, DraggableView draggableView2, LinearLayout linearLayout, TextView textView, TextView textView2) {
        this.rootView = draggableView;
        this.dragView = draggableView2;
        this.llDetail = linearLayout;
        this.tvLogout = textView;
        this.tvTime = textView2;
    }

    public static LayoutMiniSundialWindowBinding bind(View view) {
        DraggableView draggableView = (DraggableView) view;
        int i = R.id.llDetail;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.tvLogout;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.tvTime;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new LayoutMiniSundialWindowBinding(draggableView, draggableView, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutMiniSundialWindowBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutMiniSundialWindowBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_mini_sundial_window, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public DraggableView getRoot() {
        return this.rootView;
    }
}
