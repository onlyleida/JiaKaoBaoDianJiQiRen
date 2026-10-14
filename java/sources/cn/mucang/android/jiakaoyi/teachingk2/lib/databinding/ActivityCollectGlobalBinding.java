package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCollectGlobalBinding implements a {
    public final TextView addTv;
    public final ImageView backIv;
    public final View head;
    public final MapView map;
    public final FrameLayout mapFl;
    public final RecyclerView menuRv;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private ActivityCollectGlobalBinding(ConstraintLayout constraintLayout, TextView textView, ImageView imageView, View view, MapView mapView, FrameLayout frameLayout, RecyclerView recyclerView, TextView textView2) {
        this.rootView = constraintLayout;
        this.addTv = textView;
        this.backIv = imageView;
        this.head = view;
        this.map = mapView;
        this.mapFl = frameLayout;
        this.menuRv = recyclerView;
        this.titleTv = textView2;
    }

    public static ActivityCollectGlobalBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.addTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.backIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.head))) != null) {
                i = R.id.map;
                MapView mapView = (MapView) view.findViewById(i);
                if (mapView != null) {
                    i = R.id.mapFl;
                    FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                    if (frameLayout != null) {
                        i = R.id.menuRv;
                        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                        if (recyclerView != null) {
                            i = R.id.titleTv;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                return new ActivityCollectGlobalBinding((ConstraintLayout) view, textView, imageView, viewFindViewById, mapView, frameLayout, recyclerView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCollectGlobalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCollectGlobalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_collect_global, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
