package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivitySiteDataBinding implements a {
    public final ImageView back;
    public final RecyclerView dataView;
    public final TextView gpsInfo;
    private final LinearLayout rootView;
    public final TextView title;
    public final TextView topRightAction;

    private ActivitySiteDataBinding(LinearLayout linearLayout, ImageView imageView, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.dataView = recyclerView;
        this.gpsInfo = textView;
        this.title = textView2;
        this.topRightAction = textView3;
    }

    public static ActivitySiteDataBinding bind(View view) {
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.dataView;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.gps_info;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.title;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.top_right_action;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            return new ActivitySiteDataBinding((LinearLayout) view, imageView, recyclerView, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySiteDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySiteDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_site_data, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
