package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCollectTraceBinding implements a {
    public final CheckBox autoCb;
    public final ImageView backIv;
    public final TextView cancelTv;
    public final ImageView closeIv;
    public final View head;
    public final MapView map;
    public final FrameLayout mapFl;
    public final Group menuGroup;
    public final TextView name;
    public final TextView operateTv;
    public final EditText posRangeEt;
    public final FrameLayout previewFl;
    public final MapView previewMap;
    public final EditText rangeEt;
    public final ConstraintLayout rectCl;
    public final TextView reportTv;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final CheckBox select;
    public final TextView startTv;
    public final RecyclerView stepRv;
    public final TextView stepTv;
    public final EditText timeEt;
    public final TextView titleTv;
    public final LinearLayout traceRoot;

    private ActivityCollectTraceBinding(ConstraintLayout constraintLayout, CheckBox checkBox, ImageView imageView, TextView textView, ImageView imageView2, View view, MapView mapView, FrameLayout frameLayout, Group group, TextView textView2, TextView textView3, EditText editText, FrameLayout frameLayout2, MapView mapView2, EditText editText2, ConstraintLayout constraintLayout2, TextView textView4, TextView textView5, CheckBox checkBox2, TextView textView6, RecyclerView recyclerView, TextView textView7, EditText editText3, TextView textView8, LinearLayout linearLayout) {
        this.rootView = constraintLayout;
        this.autoCb = checkBox;
        this.backIv = imageView;
        this.cancelTv = textView;
        this.closeIv = imageView2;
        this.head = view;
        this.map = mapView;
        this.mapFl = frameLayout;
        this.menuGroup = group;
        this.name = textView2;
        this.operateTv = textView3;
        this.posRangeEt = editText;
        this.previewFl = frameLayout2;
        this.previewMap = mapView2;
        this.rangeEt = editText2;
        this.rectCl = constraintLayout2;
        this.reportTv = textView4;
        this.saveTv = textView5;
        this.select = checkBox2;
        this.startTv = textView6;
        this.stepRv = recyclerView;
        this.stepTv = textView7;
        this.timeEt = editText3;
        this.titleTv = textView8;
        this.traceRoot = linearLayout;
    }

    public static ActivityCollectTraceBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.autoCb;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.backIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.cancelTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.closeIv;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null && (viewFindViewById = view.findViewById((i = R.id.head))) != null) {
                        i = R.id.map;
                        MapView mapView = (MapView) view.findViewById(i);
                        if (mapView != null) {
                            i = R.id.mapFl;
                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                            if (frameLayout != null) {
                                i = R.id.menuGroup;
                                Group group = (Group) view.findViewById(i);
                                if (group != null) {
                                    i = R.id.name;
                                    TextView textView2 = (TextView) view.findViewById(i);
                                    if (textView2 != null) {
                                        i = R.id.operateTv;
                                        TextView textView3 = (TextView) view.findViewById(i);
                                        if (textView3 != null) {
                                            i = R.id.posRangeEt;
                                            EditText editText = (EditText) view.findViewById(i);
                                            if (editText != null) {
                                                i = R.id.previewFl;
                                                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                                                if (frameLayout2 != null) {
                                                    i = R.id.previewMap;
                                                    MapView mapView2 = (MapView) view.findViewById(i);
                                                    if (mapView2 != null) {
                                                        i = R.id.rangeEt;
                                                        EditText editText2 = (EditText) view.findViewById(i);
                                                        if (editText2 != null) {
                                                            i = R.id.rectCl;
                                                            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                                                            if (constraintLayout != null) {
                                                                i = R.id.reportTv;
                                                                TextView textView4 = (TextView) view.findViewById(i);
                                                                if (textView4 != null) {
                                                                    i = R.id.saveTv;
                                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                                    if (textView5 != null) {
                                                                        i = R.id.select;
                                                                        CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                                                                        if (checkBox2 != null) {
                                                                            i = R.id.startTv;
                                                                            TextView textView6 = (TextView) view.findViewById(i);
                                                                            if (textView6 != null) {
                                                                                i = R.id.stepRv;
                                                                                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                                                                if (recyclerView != null) {
                                                                                    i = R.id.stepTv;
                                                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                                                    if (textView7 != null) {
                                                                                        i = R.id.timeEt;
                                                                                        EditText editText3 = (EditText) view.findViewById(i);
                                                                                        if (editText3 != null) {
                                                                                            i = R.id.titleTv;
                                                                                            TextView textView8 = (TextView) view.findViewById(i);
                                                                                            if (textView8 != null) {
                                                                                                i = R.id.traceRoot;
                                                                                                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                                                                                if (linearLayout != null) {
                                                                                                    return new ActivityCollectTraceBinding((ConstraintLayout) view, checkBox, imageView, textView, imageView2, viewFindViewById, mapView, frameLayout, group, textView2, textView3, editText, frameLayout2, mapView2, editText2, constraintLayout, textView4, textView5, checkBox2, textView6, recyclerView, textView7, editText3, textView8, linearLayout);
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

    public static ActivityCollectTraceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCollectTraceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_collect_trace, viewGroup, false);
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
