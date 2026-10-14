package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK2MapMigrateBinding implements a {
    public final LinearLayout chooseNewStation;
    public final TextView gpsTv;
    public final TextView mapPoint;
    public final MapView mapView;
    public final TextView migrate;
    public final TextView newStationPoint;
    public final ProgressBar pbPreview;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityK2MapMigrateBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, TextView textView2, MapView mapView, TextView textView3, TextView textView4, ProgressBar progressBar, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.chooseNewStation = linearLayout;
        this.gpsTv = textView;
        this.mapPoint = textView2;
        this.mapView = mapView;
        this.migrate = textView3;
        this.newStationPoint = textView4;
        this.pbPreview = progressBar;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityK2MapMigrateBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.chooseNewStation;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.gpsTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.mapPoint;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.mapView;
                    MapView mapView = (MapView) view.findViewById(i);
                    if (mapView != null) {
                        i = R.id.migrate;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.newStationPoint;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                i = R.id.pbPreview;
                                ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                                if (progressBar != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                    return new ActivityK2MapMigrateBinding((ConstraintLayout) view, linearLayout, textView, textView2, mapView, textView3, textView4, progressBar, CommonTitleBinding.bind(viewFindViewById));
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityK2MapMigrateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK2MapMigrateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k2_map_migrate, viewGroup, false);
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
