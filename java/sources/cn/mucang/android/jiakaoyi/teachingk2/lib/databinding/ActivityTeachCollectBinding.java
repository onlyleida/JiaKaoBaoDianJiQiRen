package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import androidx.viewpager.widget.ViewPager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityTeachCollectBinding implements a {
    public final TextView asyncTv;
    public final TextView cancelModel;
    public final ImageView closeIv;
    public final TextView closeTv;
    public final TextView collectOne;
    public final LinearLayout collectRoot;
    public final LinearLayout itemContainer;
    public final RecyclerView itemList;
    public final MapView map;
    public final FrameLayout mapFl;
    public final FrameLayout previewFl;
    public final MapView previewMap;
    public final EditText rangeEt;
    private final FrameLayout rootView;
    public final TextView save;
    public final TextView sceneTv;
    public final TextView startTv;
    public final TextView tabError;
    public final TextView tabForm;
    public final TextView tabVariable;
    public final EditText timeEt;
    public final LinearLayout traceRoot;
    public final ViewPager variableContainer;

    private ActivityTeachCollectBinding(FrameLayout frameLayout, TextView textView, TextView textView2, ImageView imageView, TextView textView3, TextView textView4, LinearLayout linearLayout, LinearLayout linearLayout2, RecyclerView recyclerView, MapView mapView, FrameLayout frameLayout2, FrameLayout frameLayout3, MapView mapView2, EditText editText, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, EditText editText2, LinearLayout linearLayout3, ViewPager viewPager) {
        this.rootView = frameLayout;
        this.asyncTv = textView;
        this.cancelModel = textView2;
        this.closeIv = imageView;
        this.closeTv = textView3;
        this.collectOne = textView4;
        this.collectRoot = linearLayout;
        this.itemContainer = linearLayout2;
        this.itemList = recyclerView;
        this.map = mapView;
        this.mapFl = frameLayout2;
        this.previewFl = frameLayout3;
        this.previewMap = mapView2;
        this.rangeEt = editText;
        this.save = textView5;
        this.sceneTv = textView6;
        this.startTv = textView7;
        this.tabError = textView8;
        this.tabForm = textView9;
        this.tabVariable = textView10;
        this.timeEt = editText2;
        this.traceRoot = linearLayout3;
        this.variableContainer = viewPager;
    }

    public static ActivityTeachCollectBinding bind(View view) {
        int i = R.id.asyncTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.cancelModel;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.closeIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.closeTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.collectOne;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.collectRoot;
                            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                            if (linearLayout != null) {
                                i = R.id.itemContainer;
                                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                                if (linearLayout2 != null) {
                                    i = R.id.itemList;
                                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                    if (recyclerView != null) {
                                        i = R.id.map;
                                        MapView mapView = (MapView) view.findViewById(i);
                                        if (mapView != null) {
                                            i = R.id.mapFl;
                                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                            if (frameLayout != null) {
                                                i = R.id.previewFl;
                                                FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                                                if (frameLayout2 != null) {
                                                    i = R.id.previewMap;
                                                    MapView mapView2 = (MapView) view.findViewById(i);
                                                    if (mapView2 != null) {
                                                        i = R.id.rangeEt;
                                                        EditText editText = (EditText) view.findViewById(i);
                                                        if (editText != null) {
                                                            i = R.id.save;
                                                            TextView textView5 = (TextView) view.findViewById(i);
                                                            if (textView5 != null) {
                                                                i = R.id.sceneTv;
                                                                TextView textView6 = (TextView) view.findViewById(i);
                                                                if (textView6 != null) {
                                                                    i = R.id.startTv;
                                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                                    if (textView7 != null) {
                                                                        i = R.id.tab_error;
                                                                        TextView textView8 = (TextView) view.findViewById(i);
                                                                        if (textView8 != null) {
                                                                            i = R.id.tab_form;
                                                                            TextView textView9 = (TextView) view.findViewById(i);
                                                                            if (textView9 != null) {
                                                                                i = R.id.tab_variable;
                                                                                TextView textView10 = (TextView) view.findViewById(i);
                                                                                if (textView10 != null) {
                                                                                    i = R.id.timeEt;
                                                                                    EditText editText2 = (EditText) view.findViewById(i);
                                                                                    if (editText2 != null) {
                                                                                        i = R.id.traceRoot;
                                                                                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                                                                        if (linearLayout3 != null) {
                                                                                            i = R.id.variableContainer;
                                                                                            ViewPager viewPager = (ViewPager) view.findViewById(i);
                                                                                            if (viewPager != null) {
                                                                                                return new ActivityTeachCollectBinding((FrameLayout) view, textView, textView2, imageView, textView3, textView4, linearLayout, linearLayout2, recyclerView, mapView, frameLayout, frameLayout2, mapView2, editText, textView5, textView6, textView7, textView8, textView9, textView10, editText2, linearLayout3, viewPager);
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

    public static ActivityTeachCollectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityTeachCollectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_teach_collect, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
