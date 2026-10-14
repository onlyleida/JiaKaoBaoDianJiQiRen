package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapOffsetDialogBinding implements a {
    public final EditText leftBack;
    public final EditText leftBackWidth;
    public final EditText leftFront;
    public final EditText leftFrontWidth;
    public final TextView makeSure;
    public final EditText rightBack;
    public final EditText rightBackWidth;
    public final EditText rightFront;
    public final EditText rightFrontWidth;
    private final LinearLayout rootView;

    private HpmapOffsetDialogBinding(LinearLayout linearLayout, EditText editText, EditText editText2, EditText editText3, EditText editText4, TextView textView, EditText editText5, EditText editText6, EditText editText7, EditText editText8) {
        this.rootView = linearLayout;
        this.leftBack = editText;
        this.leftBackWidth = editText2;
        this.leftFront = editText3;
        this.leftFrontWidth = editText4;
        this.makeSure = textView;
        this.rightBack = editText5;
        this.rightBackWidth = editText6;
        this.rightFront = editText7;
        this.rightFrontWidth = editText8;
    }

    public static HpmapOffsetDialogBinding bind(View view) {
        int i = R.id.left_back;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.left_back_width;
            EditText editText2 = (EditText) view.findViewById(i);
            if (editText2 != null) {
                i = R.id.left_front;
                EditText editText3 = (EditText) view.findViewById(i);
                if (editText3 != null) {
                    i = R.id.left_front_width;
                    EditText editText4 = (EditText) view.findViewById(i);
                    if (editText4 != null) {
                        i = R.id.make_sure;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.right_back;
                            EditText editText5 = (EditText) view.findViewById(i);
                            if (editText5 != null) {
                                i = R.id.right_back_width;
                                EditText editText6 = (EditText) view.findViewById(i);
                                if (editText6 != null) {
                                    i = R.id.right_front;
                                    EditText editText7 = (EditText) view.findViewById(i);
                                    if (editText7 != null) {
                                        i = R.id.right_front_width;
                                        EditText editText8 = (EditText) view.findViewById(i);
                                        if (editText8 != null) {
                                            return new HpmapOffsetDialogBinding((LinearLayout) view, editText, editText2, editText3, editText4, textView, editText5, editText6, editText7, editText8);
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

    public static HpmapOffsetDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapOffsetDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__offset_dialog, viewGroup, false);
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
