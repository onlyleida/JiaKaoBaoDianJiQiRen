package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTraceAutoCreateBinding implements a {
    public final View divider;
    public final MapView mapView;
    private final ConstraintLayout rootView;
    public final LayoutTraceAutoStudyBinding studyLayout;
    public final LayoutTraceAutoButtonBinding threeLayout;
    public final TextView threeTv;
    public final CommonTitleBinding titleLayout;
    public final TextView twoTv;
    public final TextView wheelTv;

    private ActivityTraceAutoCreateBinding(ConstraintLayout constraintLayout, View view, MapView mapView, LayoutTraceAutoStudyBinding layoutTraceAutoStudyBinding, LayoutTraceAutoButtonBinding layoutTraceAutoButtonBinding, TextView textView, CommonTitleBinding commonTitleBinding, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.mapView = mapView;
        this.studyLayout = layoutTraceAutoStudyBinding;
        this.threeLayout = layoutTraceAutoButtonBinding;
        this.threeTv = textView;
        this.titleLayout = commonTitleBinding;
        this.twoTv = textView2;
        this.wheelTv = textView3;
    }

    public static ActivityTraceAutoCreateBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.divider;
        View viewFindViewById3 = view.findViewById(i);
        if (viewFindViewById3 != null) {
            i = R.id.mapView;
            MapView mapView = (MapView) view.findViewById(i);
            if (mapView != null && (viewFindViewById = view.findViewById((i = R.id.studyLayout))) != null) {
                LayoutTraceAutoStudyBinding layoutTraceAutoStudyBindingBind = LayoutTraceAutoStudyBinding.bind(viewFindViewById);
                i = R.id.threeLayout;
                View viewFindViewById4 = view.findViewById(i);
                if (viewFindViewById4 != null) {
                    LayoutTraceAutoButtonBinding layoutTraceAutoButtonBindingBind = LayoutTraceAutoButtonBinding.bind(viewFindViewById4);
                    i = R.id.threeTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null && (viewFindViewById2 = view.findViewById((i = R.id.titleLayout))) != null) {
                        CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById2);
                        i = R.id.twoTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.wheelTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                return new ActivityTraceAutoCreateBinding((ConstraintLayout) view, viewFindViewById3, mapView, layoutTraceAutoStudyBindingBind, layoutTraceAutoButtonBindingBind, textView, commonTitleBindingBind, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityTraceAutoCreateBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTraceAutoCreateBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_trace_auto_create, viewGroup, false);
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
