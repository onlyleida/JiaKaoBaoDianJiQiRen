package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCarDataBinding implements a {
    public final TextView carDesc;
    public final TextView carTitle;
    public final TextView delete;
    public final View divider;
    public final TextView emptyTv;
    public final Group infoGroup;
    public final ConstraintLayout layoutCar;
    public final TextView modelCarDb;
    public final ProgressBar pbCarData;
    public final TextView previewTv;
    private final ConstraintLayout rootView;
    public final TextView tipTv;
    public final CommonTitleBinding titleLayout;

    private ActivityCarDataBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, View view, TextView textView4, Group group, ConstraintLayout constraintLayout2, TextView textView5, ProgressBar progressBar, TextView textView6, TextView textView7, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.carDesc = textView;
        this.carTitle = textView2;
        this.delete = textView3;
        this.divider = view;
        this.emptyTv = textView4;
        this.infoGroup = group;
        this.layoutCar = constraintLayout2;
        this.modelCarDb = textView5;
        this.pbCarData = progressBar;
        this.previewTv = textView6;
        this.tipTv = textView7;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityCarDataBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.carDesc;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.carTitle;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.delete;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null) {
                    i = R.id.emptyTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.infoGroup;
                        Group group = (Group) view.findViewById(i);
                        if (group != null) {
                            i = R.id.layoutCar;
                            ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                            if (constraintLayout != null) {
                                i = R.id.modelCarDb;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    i = R.id.pbCarData;
                                    ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                                    if (progressBar != null) {
                                        i = R.id.previewTv;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            i = R.id.tipTv;
                                            TextView textView7 = (TextView) view.findViewById(i);
                                            if (textView7 != null && (viewFindViewById2 = view.findViewById((i = R.id.titleLayout))) != null) {
                                                return new ActivityCarDataBinding((ConstraintLayout) view, textView, textView2, textView3, viewFindViewById, textView4, group, constraintLayout, textView5, progressBar, textView6, textView7, CommonTitleBinding.bind(viewFindViewById2));
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

    public static ActivityCarDataBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCarDataBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_car_data, viewGroup, false);
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
