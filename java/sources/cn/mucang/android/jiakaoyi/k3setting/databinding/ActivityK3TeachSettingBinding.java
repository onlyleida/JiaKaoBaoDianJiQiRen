package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3TeachSettingBinding implements a {
    public final TextView addTeachStepTv;
    public final Button btnAdd;
    public final TextView deleteTv;
    public final ImageView imgMore;
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final TextView saveTv;
    public final StateLayout stateLayout;
    public final RecyclerView stepRecyclerView;
    public final StateLayout teachStateLayout;
    public final LinearLayout teachStepLayout;
    public final CommonTitleBinding titleLayout;
    public final TextView tvStepName;

    private ActivityK3TeachSettingBinding(LinearLayout linearLayout, TextView textView, Button button, TextView textView2, ImageView imageView, RecyclerView recyclerView, TextView textView3, StateLayout stateLayout, RecyclerView recyclerView2, StateLayout stateLayout2, LinearLayout linearLayout2, CommonTitleBinding commonTitleBinding, TextView textView4) {
        this.rootView = linearLayout;
        this.addTeachStepTv = textView;
        this.btnAdd = button;
        this.deleteTv = textView2;
        this.imgMore = imageView;
        this.recyclerView = recyclerView;
        this.saveTv = textView3;
        this.stateLayout = stateLayout;
        this.stepRecyclerView = recyclerView2;
        this.teachStateLayout = stateLayout2;
        this.teachStepLayout = linearLayout2;
        this.titleLayout = commonTitleBinding;
        this.tvStepName = textView4;
    }

    public static ActivityK3TeachSettingBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.addTeachStepTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.btn_add;
            Button button = (Button) view.findViewById(i);
            if (button != null) {
                i = R.id.deleteTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.img_more;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.recyclerView;
                        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                        if (recyclerView != null) {
                            i = R.id.saveTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.stateLayout;
                                StateLayout stateLayout = (StateLayout) view.findViewById(i);
                                if (stateLayout != null) {
                                    i = R.id.stepRecyclerView;
                                    RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                    if (recyclerView2 != null) {
                                        i = R.id.teachStateLayout;
                                        StateLayout stateLayout2 = (StateLayout) view.findViewById(i);
                                        if (stateLayout2 != null) {
                                            i = R.id.teach_step_layout;
                                            LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                            if (linearLayout != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                                i = R.id.tv_step_name;
                                                TextView textView4 = (TextView) view.findViewById(i);
                                                if (textView4 != null) {
                                                    return new ActivityK3TeachSettingBinding((LinearLayout) view, textView, button, textView2, imageView, recyclerView, textView3, stateLayout, recyclerView2, stateLayout2, linearLayout, commonTitleBindingBind, textView4);
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

    public static ActivityK3TeachSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3TeachSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_teach_setting, viewGroup, false);
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
