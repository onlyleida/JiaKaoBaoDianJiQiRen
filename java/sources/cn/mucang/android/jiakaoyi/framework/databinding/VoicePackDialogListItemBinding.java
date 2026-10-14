package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class VoicePackDialogListItemBinding implements a {
    public final View divider;
    private final ConstraintLayout rootView;
    public final TextView voiceAction;
    public final TextView voiceNameTv;
    public final TextView voiceSizeTv;

    private VoicePackDialogListItemBinding(ConstraintLayout constraintLayout, View view, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.divider = view;
        this.voiceAction = textView;
        this.voiceNameTv = textView2;
        this.voiceSizeTv = textView3;
    }

    public static VoicePackDialogListItemBinding bind(View view) {
        int i = R.id.divider;
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            i = R.id.voice_action;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.voice_name_tv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.voice_size_tv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new VoicePackDialogListItemBinding((ConstraintLayout) view, viewFindViewById, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static VoicePackDialogListItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VoicePackDialogListItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.voice_pack_dialog_list_item, viewGroup, false);
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
