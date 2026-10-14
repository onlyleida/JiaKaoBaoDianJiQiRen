package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityVoiceTestItemBinding implements a {
    public final TextView gradeName;
    private final LinearLayout rootView;
    public final Button voice1;
    public final Button voice2;
    public final Button voice3;
    public final Button voice4;
    public final Button voice5;
    public final LinearLayout voiceList;

    private ActivityVoiceTestItemBinding(LinearLayout linearLayout, TextView textView, Button button, Button button2, Button button3, Button button4, Button button5, LinearLayout linearLayout2) {
        this.rootView = linearLayout;
        this.gradeName = textView;
        this.voice1 = button;
        this.voice2 = button2;
        this.voice3 = button3;
        this.voice4 = button4;
        this.voice5 = button5;
        this.voiceList = linearLayout2;
    }

    public static ActivityVoiceTestItemBinding bind(View view) {
        int i = R.id.grade_name;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.voice1;
            Button button = (Button) view.findViewById(i);
            if (button != null) {
                i = R.id.voice2;
                Button button2 = (Button) view.findViewById(i);
                if (button2 != null) {
                    i = R.id.voice3;
                    Button button3 = (Button) view.findViewById(i);
                    if (button3 != null) {
                        i = R.id.voice4;
                        Button button4 = (Button) view.findViewById(i);
                        if (button4 != null) {
                            i = R.id.voice5;
                            Button button5 = (Button) view.findViewById(i);
                            if (button5 != null) {
                                i = R.id.voice_list;
                                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                if (linearLayout != null) {
                                    return new ActivityVoiceTestItemBinding((LinearLayout) view, textView, button, button2, button3, button4, button5, linearLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityVoiceTestItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityVoiceTestItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_voice_test_item, viewGroup, false);
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
