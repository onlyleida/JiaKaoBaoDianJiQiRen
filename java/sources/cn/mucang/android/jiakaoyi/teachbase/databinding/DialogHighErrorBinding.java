package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogHighErrorBinding implements a {
    public final View bgView1;
    public final View bgView2;
    public final ImageView closeIv;
    public final TextView errorTv;
    public final TextView iKnowTv;
    public final MapView mapView;
    private final ConstraintLayout rootView;
    public final RecyclerView stepRv;
    public final RecyclerView subStepRv;
    public final TextView titleTv1;
    public final TextView titleTv2;

    private DialogHighErrorBinding(ConstraintLayout constraintLayout, View view, View view2, ImageView imageView, TextView textView, TextView textView2, MapView mapView, RecyclerView recyclerView, RecyclerView recyclerView2, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.bgView1 = view;
        this.bgView2 = view2;
        this.closeIv = imageView;
        this.errorTv = textView;
        this.iKnowTv = textView2;
        this.mapView = mapView;
        this.stepRv = recyclerView;
        this.subStepRv = recyclerView2;
        this.titleTv1 = textView3;
        this.titleTv2 = textView4;
    }

    public static DialogHighErrorBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.bgView1;
        View viewFindViewById2 = view.findViewById(i);
        if (viewFindViewById2 != null && (viewFindViewById = view.findViewById((i = R.id.bgView2))) != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.errorTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.iKnowTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.mapView;
                        MapView mapView = (MapView) view.findViewById(i);
                        if (mapView != null) {
                            i = R.id.stepRv;
                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                            if (recyclerView != null) {
                                i = R.id.subStepRv;
                                RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                if (recyclerView2 != null) {
                                    i = R.id.titleTv1;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.titleTv2;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            return new DialogHighErrorBinding((ConstraintLayout) view, viewFindViewById2, viewFindViewById, imageView, textView, textView2, mapView, recyclerView, recyclerView2, textView3, textView4);
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

    public static DialogHighErrorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogHighErrorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_high_error, viewGroup, false);
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
