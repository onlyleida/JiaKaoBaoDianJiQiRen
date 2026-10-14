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
public final class NewCollectItemKuweiBinding implements a {
    public final EditText angleRangeEt;
    public final TextView angleTv;
    public final Space middle;
    public final TextView name;
    public final EditText posRangeEt;
    public final TextView posTv;
    public final ImageView refresh;
    private final ConstraintLayout rootView;
    public final CheckBox select;
    public final TextView title1;
    public final TextView title2;
    public final TextView title3;
    public final TextView title4;

    private NewCollectItemKuweiBinding(ConstraintLayout constraintLayout, EditText editText, TextView textView, Space space, TextView textView2, EditText editText2, TextView textView3, ImageView imageView, CheckBox checkBox, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = constraintLayout;
        this.angleRangeEt = editText;
        this.angleTv = textView;
        this.middle = space;
        this.name = textView2;
        this.posRangeEt = editText2;
        this.posTv = textView3;
        this.refresh = imageView;
        this.select = checkBox;
        this.title1 = textView4;
        this.title2 = textView5;
        this.title3 = textView6;
        this.title4 = textView7;
    }

    public static NewCollectItemKuweiBinding bind(View view) {
        int i = R.id.angleRangeEt;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.angleTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.middle;
                Space space = (Space) view.findViewById(i);
                if (space != null) {
                    i = R.id.name;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.posRangeEt;
                        EditText editText2 = (EditText) view.findViewById(i);
                        if (editText2 != null) {
                            i = R.id.posTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.refresh;
                                ImageView imageView = (ImageView) view.findViewById(i);
                                if (imageView != null) {
                                    i = R.id.select;
                                    CheckBox checkBox = (CheckBox) view.findViewById(i);
                                    if (checkBox != null) {
                                        i = R.id.title1;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            i = R.id.title2;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.title3;
                                                TextView textView6 = (TextView) view.findViewById(i);
                                                if (textView6 != null) {
                                                    i = R.id.title4;
                                                    TextView textView7 = (TextView) view.findViewById(i);
                                                    if (textView7 != null) {
                                                        return new NewCollectItemKuweiBinding((ConstraintLayout) view, editText, textView, space, textView2, editText2, textView3, imageView, checkBox, textView4, textView5, textView6, textView7);
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

    public static NewCollectItemKuweiBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static NewCollectItemKuweiBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.new_collect_item_kuwei, viewGroup, false);
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
