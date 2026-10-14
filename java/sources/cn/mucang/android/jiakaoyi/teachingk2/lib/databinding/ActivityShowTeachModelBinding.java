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
public final class ActivityShowTeachModelBinding implements a {
    public final TextView actionTv;
    public final TextView addTv;
    public final ImageView backIv;
    public final TextView createTv;
    public final TextView deleteTv;
    public final TextView editTv;
    public final View head;
    public final MapView map;
    public final FrameLayout mapFl;
    public final RecyclerView menuRv;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private ActivityShowTeachModelBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4, TextView textView5, View view, MapView mapView, FrameLayout frameLayout, RecyclerView recyclerView, TextView textView6) {
        this.rootView = constraintLayout;
        this.actionTv = textView;
        this.addTv = textView2;
        this.backIv = imageView;
        this.createTv = textView3;
        this.deleteTv = textView4;
        this.editTv = textView5;
        this.head = view;
        this.map = mapView;
        this.mapFl = frameLayout;
        this.menuRv = recyclerView;
        this.titleTv = textView6;
    }

    public static ActivityShowTeachModelBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.actionTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.addTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.backIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.createTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.deleteTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.editTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null && (viewFindViewById = view.findViewById((i = R.id.head))) != null) {
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
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                return new ActivityShowTeachModelBinding((ConstraintLayout) view, textView, textView2, imageView, textView3, textView4, textView5, viewFindViewById, mapView, frameLayout, recyclerView, textView6);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityShowTeachModelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityShowTeachModelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_show_teach_model, viewGroup, false);
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
