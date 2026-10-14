package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityEditTeachModelBinding implements a {
    public final ImageView backIv;
    public final TextView cancelTv;
    public final View divider;
    public final TextView errorTab;
    public final TextView formTab;
    public final View head;
    public final MapView map;
    public final FrameLayout mapFl;
    public final TextView moveBack;
    public final EditText moveEt;
    public final TextView moveForward;
    public final Group moveGroup;
    public final TextView moveTv;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final TextView titleTv;
    public final TextView variableTab;
    public final ViewPager viewPager;

    private ActivityEditTeachModelBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, View view, TextView textView2, TextView textView3, View view2, MapView mapView, FrameLayout frameLayout, TextView textView4, EditText editText, TextView textView5, Group group, TextView textView6, TextView textView7, TextView textView8, TextView textView9, ViewPager viewPager) {
        this.rootView = constraintLayout;
        this.backIv = imageView;
        this.cancelTv = textView;
        this.divider = view;
        this.errorTab = textView2;
        this.formTab = textView3;
        this.head = view2;
        this.map = mapView;
        this.mapFl = frameLayout;
        this.moveBack = textView4;
        this.moveEt = editText;
        this.moveForward = textView5;
        this.moveGroup = group;
        this.moveTv = textView6;
        this.saveTv = textView7;
        this.titleTv = textView8;
        this.variableTab = textView9;
        this.viewPager = viewPager;
    }

    public static ActivityEditTeachModelBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.backIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.cancelTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                i = R.id.errorTab;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.formTab;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null && (viewFindViewById2 = view.findViewById((i = R.id.head))) != null) {
                        i = R.id.map;
                        MapView mapView = (MapView) view.findViewById(i);
                        if (mapView != null) {
                            i = R.id.mapFl;
                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                            if (frameLayout != null) {
                                i = R.id.moveBack;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.moveEt;
                                    EditText editText = (EditText) view.findViewById(i);
                                    if (editText != null) {
                                        i = R.id.moveForward;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.moveGroup;
                                            Group group = (Group) view.findViewById(i);
                                            if (group != null) {
                                                i = R.id.moveTv;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null) {
                                                    i = R.id.saveTv;
                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                    if (textView7 != null) {
                                                        i = R.id.titleTv;
                                                        TextView textView8 = (TextView) view.findViewById(i);
                                                        if (textView8 != null) {
                                                            i = R.id.variableTab;
                                                            TextView textView9 = (TextView) view.findViewById(i);
                                                            if (textView9 != null) {
                                                                i = R.id.viewPager;
                                                                ViewPager viewPager = (ViewPager) view.findViewById(i);
                                                                if (viewPager != null) {
                                                                    return new ActivityEditTeachModelBinding((ConstraintLayout) view, imageView, textView, viewFindViewById, textView2, textView3, viewFindViewById2, mapView, frameLayout, textView4, editText, textView5, group, textView6, textView7, textView8, textView9, viewPager);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityEditTeachModelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityEditTeachModelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_edit_teach_model, viewGroup, false);
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
