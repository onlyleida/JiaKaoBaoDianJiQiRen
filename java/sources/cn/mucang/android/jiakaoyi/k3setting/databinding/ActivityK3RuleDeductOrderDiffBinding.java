package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.backup.TabItem;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3RuleDeductOrderDiffBinding implements a {
    public final AppCompatCheckBox checkBox1Rule;
    public final AppCompatCheckBox checkBox2Deduct;
    public final AppCompatCheckBox checkBox3Light;
    public final AppCompatCheckBox checkBox6Route;
    public final FrameLayout checkLayout1;
    public final FrameLayout checkLayout2;
    public final FrameLayout checkLayout3;
    public final FrameLayout checkLayout6;
    public final LinearLayout llTab;
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final StateLayout stateLayout;
    public final RecyclerView stepRecyclerView;
    public final TabItem tabDeduct;
    public final TabItem tabLight;
    public final TabItem tabLightGroup;
    public final TabItem tabRoute;
    public final TabItem tabRule;
    public final CommonTitleBinding titleLayout;
    public final TextView tvExamSite;
    public final TextView tvHint;
    public final TextView tvLastTime;

    private ActivityK3RuleDeductOrderDiffBinding(LinearLayout linearLayout, AppCompatCheckBox appCompatCheckBox, AppCompatCheckBox appCompatCheckBox2, AppCompatCheckBox appCompatCheckBox3, AppCompatCheckBox appCompatCheckBox4, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, LinearLayout linearLayout2, RecyclerView recyclerView, StateLayout stateLayout, RecyclerView recyclerView2, TabItem tabItem, TabItem tabItem2, TabItem tabItem3, TabItem tabItem4, TabItem tabItem5, CommonTitleBinding commonTitleBinding, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.checkBox1Rule = appCompatCheckBox;
        this.checkBox2Deduct = appCompatCheckBox2;
        this.checkBox3Light = appCompatCheckBox3;
        this.checkBox6Route = appCompatCheckBox4;
        this.checkLayout1 = frameLayout;
        this.checkLayout2 = frameLayout2;
        this.checkLayout3 = frameLayout3;
        this.checkLayout6 = frameLayout4;
        this.llTab = linearLayout2;
        this.recyclerView = recyclerView;
        this.stateLayout = stateLayout;
        this.stepRecyclerView = recyclerView2;
        this.tabDeduct = tabItem;
        this.tabLight = tabItem2;
        this.tabLightGroup = tabItem3;
        this.tabRoute = tabItem4;
        this.tabRule = tabItem5;
        this.titleLayout = commonTitleBinding;
        this.tvExamSite = textView;
        this.tvHint = textView2;
        this.tvLastTime = textView3;
    }

    public static ActivityK3RuleDeductOrderDiffBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.checkBox1Rule;
        AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
        if (appCompatCheckBox != null) {
            i = R.id.checkBox2Deduct;
            AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) view.findViewById(i);
            if (appCompatCheckBox2 != null) {
                i = R.id.checkBox3Light;
                AppCompatCheckBox appCompatCheckBox3 = (AppCompatCheckBox) view.findViewById(i);
                if (appCompatCheckBox3 != null) {
                    i = R.id.checkBox6Route;
                    AppCompatCheckBox appCompatCheckBox4 = (AppCompatCheckBox) view.findViewById(i);
                    if (appCompatCheckBox4 != null) {
                        i = R.id.checkLayout1;
                        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                        if (frameLayout != null) {
                            i = R.id.checkLayout2;
                            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                            if (frameLayout2 != null) {
                                i = R.id.checkLayout3;
                                FrameLayout frameLayout3 = (FrameLayout) view.findViewById(i);
                                if (frameLayout3 != null) {
                                    i = R.id.checkLayout6;
                                    FrameLayout frameLayout4 = (FrameLayout) view.findViewById(i);
                                    if (frameLayout4 != null) {
                                        i = R.id.ll_tab;
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                        if (linearLayout != null) {
                                            i = R.id.recyclerView;
                                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                            if (recyclerView != null) {
                                                i = R.id.stateLayout;
                                                StateLayout stateLayout = (StateLayout) view.findViewById(i);
                                                if (stateLayout != null) {
                                                    i = R.id.stepRecyclerView;
                                                    RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                                    if (recyclerView2 != null) {
                                                        i = R.id.tab_deduct;
                                                        TabItem tabItem = (TabItem) view.findViewById(i);
                                                        if (tabItem != null) {
                                                            i = R.id.tab_light;
                                                            TabItem tabItem2 = (TabItem) view.findViewById(i);
                                                            if (tabItem2 != null) {
                                                                i = R.id.tab_light_group;
                                                                TabItem tabItem3 = (TabItem) view.findViewById(i);
                                                                if (tabItem3 != null) {
                                                                    i = R.id.tab_route;
                                                                    TabItem tabItem4 = (TabItem) view.findViewById(i);
                                                                    if (tabItem4 != null) {
                                                                        i = R.id.tab_rule;
                                                                        TabItem tabItem5 = (TabItem) view.findViewById(i);
                                                                        if (tabItem5 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                                            CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                                            i = R.id.tv_exam_site;
                                                                            TextView textView = (TextView) view.findViewById(i);
                                                                            if (textView != null) {
                                                                                i = R.id.tv_hint;
                                                                                TextView textView2 = (TextView) view.findViewById(i);
                                                                                if (textView2 != null) {
                                                                                    i = R.id.tv_last_time;
                                                                                    TextView textView3 = (TextView) view.findViewById(i);
                                                                                    if (textView3 != null) {
                                                                                        return new ActivityK3RuleDeductOrderDiffBinding((LinearLayout) view, appCompatCheckBox, appCompatCheckBox2, appCompatCheckBox3, appCompatCheckBox4, frameLayout, frameLayout2, frameLayout3, frameLayout4, linearLayout, recyclerView, stateLayout, recyclerView2, tabItem, tabItem2, tabItem3, tabItem4, tabItem5, commonTitleBindingBind, textView, textView2, textView3);
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

    public static ActivityK3RuleDeductOrderDiffBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3RuleDeductOrderDiffBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_rule_deduct_order_diff, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
