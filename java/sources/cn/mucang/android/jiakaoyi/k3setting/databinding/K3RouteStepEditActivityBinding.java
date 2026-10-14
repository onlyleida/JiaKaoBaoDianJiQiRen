package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class K3RouteStepEditActivityBinding implements a {
    public final ImageView arrow;
    public final EditText etDesc;
    public final EditText etTitle;
    public final TextView playTv;
    private final LinearLayout rootView;
    public final TextView saveTv;
    public final TextView standardTv;
    public final CommonTitleBinding titleLayout;
    public final View titleLine;
    public final TextView tvTitle;
    public final TextView voice;

    private K3RouteStepEditActivityBinding(LinearLayout linearLayout, ImageView imageView, EditText editText, EditText editText2, TextView textView, TextView textView2, TextView textView3, CommonTitleBinding commonTitleBinding, View view, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.arrow = imageView;
        this.etDesc = editText;
        this.etTitle = editText2;
        this.playTv = textView;
        this.saveTv = textView2;
        this.standardTv = textView3;
        this.titleLayout = commonTitleBinding;
        this.titleLine = view;
        this.tvTitle = textView4;
        this.voice = textView5;
    }

    public static K3RouteStepEditActivityBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.arrow;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.et_desc;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.et_title;
                EditText editText2 = (EditText) view.findViewById(i);
                if (editText2 != null) {
                    i = R.id.playTv;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        i = R.id.saveTv;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.standardTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById);
                                i = R.id.title_line;
                                View viewFindViewById2 = view.findViewById(i);
                                if (viewFindViewById2 != null) {
                                    i = R.id.tv_Title;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.voice;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            return new K3RouteStepEditActivityBinding((LinearLayout) view, imageView, editText, editText2, textView, textView2, textView3, commonTitleBindingBind, viewFindViewById2, textView4, textView5);
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

    public static K3RouteStepEditActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static K3RouteStepEditActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.k3_route_step_edit_activity, viewGroup, false);
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
