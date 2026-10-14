package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class NewCollectItemQuxianBinding implements a {
    public final Space middle;
    public final TextView name;
    public final EditText posRangeEt;
    public final TextView posTv;
    public final ImageView refresh;
    private final ConstraintLayout rootView;
    public final CheckBox select;
    public final TextView title1;
    public final TextView title2;

    private NewCollectItemQuxianBinding(ConstraintLayout constraintLayout, Space space, TextView textView, EditText editText, TextView textView2, ImageView imageView, CheckBox checkBox, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.middle = space;
        this.name = textView;
        this.posRangeEt = editText;
        this.posTv = textView2;
        this.refresh = imageView;
        this.select = checkBox;
        this.title1 = textView3;
        this.title2 = textView4;
    }

    public static NewCollectItemQuxianBinding bind(View view) {
        int i = R.id.middle;
        Space space = (Space) view.findViewById(i);
        if (space != null) {
            i = R.id.name;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.posRangeEt;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.posTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.refresh;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.select;
                            CheckBox checkBox = (CheckBox) view.findViewById(i);
                            if (checkBox != null) {
                                i = R.id.title1;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.title2;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        return new NewCollectItemQuxianBinding((ConstraintLayout) view, space, textView, editText, textView2, imageView, checkBox, textView3, textView4);
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

    public static NewCollectItemQuxianBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemQuxianBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_quxian, viewGroup, false);
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
