package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTeachBindStepBinding implements a {
    public final View bgView;
    public final TextView closeTv;
    public final Group emptyGroup;
    public final TextView emptyTv;
    public final ImageView emptyView;
    public final MapView map;
    public final FrameLayout mapFl;
    public final RecyclerView menuRv;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final FrameLayout title;

    private ActivityTeachBindStepBinding(ConstraintLayout constraintLayout, View view, TextView textView, Group group, TextView textView2, ImageView imageView, MapView mapView, FrameLayout frameLayout, RecyclerView recyclerView, TextView textView3, FrameLayout frameLayout2) {
        this.rootView = constraintLayout;
        this.bgView = view;
        this.closeTv = textView;
        this.emptyGroup = group;
        this.emptyTv = textView2;
        this.emptyView = imageView;
        this.map = mapView;
        this.mapFl = frameLayout;
        this.menuRv = recyclerView;
        this.saveTv = textView3;
        this.title = frameLayout2;
    }

    public static ActivityTeachBindStepBinding bind(View view) {
        int i = R.id.bgView;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            i = R.id.closeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.emptyGroup;
                Group group = (Group) view.findViewById(i);
                if (group != null) {
                    i = R.id.emptyTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.emptyView;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.map;
                            MapView mapView = (MapView) view.findViewById(i);
                            if (mapView != null) {
                                i = R.id.mapFl;
                                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                if (frameLayout != null) {
                                    i = R.id.menuRv;
                                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                    if (recyclerView != null) {
                                        i = R.id.saveTv;
                                        TextView textView3 = (TextView) view.findViewById(i);
                                        if (textView3 != null) {
                                            i = R.id.title;
                                            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                                            if (frameLayout2 != null) {
                                                return new ActivityTeachBindStepBinding((ConstraintLayout) view, viewFindViewById, textView, group, textView2, imageView, mapView, frameLayout, recyclerView, textView3, frameLayout2);
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

    public static ActivityTeachBindStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTeachBindStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_teach_bind_step, viewGroup, false);
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
