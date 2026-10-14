package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class DialogSelectVoiceBinding implements a {
    public final TextView audition;
    public final TextView cancelTv;
    public final ImageView closeIv;
    public final TextView confirmTv;
    public final LinearLayout delete;
    public final EditText fileName;
    public final ImageView line1;
    private final ConstraintLayout rootView;
    public final TextView selectFile;
    public final TextView text;
    public final TextView titleTv;

    private DialogSelectVoiceBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, TextView textView3, LinearLayout linearLayout, EditText editText, ImageView imageView2, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.audition = textView;
        this.cancelTv = textView2;
        this.closeIv = imageView;
        this.confirmTv = textView3;
        this.delete = linearLayout;
        this.fileName = editText;
        this.line1 = imageView2;
        this.selectFile = textView4;
        this.text = textView5;
        this.titleTv = textView6;
    }

    public static DialogSelectVoiceBinding bind(View view) {
        int i = R.id.audition;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.cancelTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.closeIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.confirmTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.delete;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                        if (linearLayout != null) {
                            i = R.id.file_name;
                            EditText editText = (EditText) view.findViewById(i);
                            if (editText != null) {
                                i = R.id.line1;
                                ImageView imageView2 = (ImageView) view.findViewById(i);
                                if (imageView2 != null) {
                                    i = R.id.select_file;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.text;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.titleTv;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                return new DialogSelectVoiceBinding((ConstraintLayout) view, textView, textView2, imageView, textView3, linearLayout, editText, imageView2, textView4, textView5, textView6);
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

    public static DialogSelectVoiceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogSelectVoiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_select_voice, viewGroup, false);
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
