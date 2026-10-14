package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3MapMigrateBinding implements a {
    public final LinearLayout chooseNewStation;
    public final TextView mapPoint;
    public final MapView mapView;
    public final TextView migrate;
    public final TextView newStationPoint;
    public final ProgressBar pbPreview;
    private final ConstraintLayout rootView;
    public final CommonTitleBinding titleLayout;

    private ActivityK3MapMigrateBinding(ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView, MapView mapView, TextView textView2, TextView textView3, ProgressBar progressBar, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.chooseNewStation = linearLayout;
        this.mapPoint = textView;
        this.mapView = mapView;
        this.migrate = textView2;
        this.newStationPoint = textView3;
        this.pbPreview = progressBar;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityK3MapMigrateBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.chooseNewStation;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.mapPoint;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.mapView;
                MapView mapView = (MapView) view.findViewById(i);
                if (mapView != null) {
                    i = R.id.migrate;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.newStationPoint;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.pbPreview;
                            ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                            if (progressBar != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                return new ActivityK3MapMigrateBinding((ConstraintLayout) view, linearLayout, textView, mapView, textView2, textView3, progressBar, CommonTitleBinding.bind(viewFindViewById));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityK3MapMigrateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3MapMigrateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_map_migrate, viewGroup, false);
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
