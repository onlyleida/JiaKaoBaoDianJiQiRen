package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class LightOrderEditActivityBinding implements a {
    public final EditText descTv;
    public final View divider;
    public final View divider2;
    public final TextView playCodeTv;
    public final TextView playTv;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final TextView sortTv;
    public final TextView standardTv;
    public final CommonTitleBinding titleLayout;
    public final TextView titleVoiceCode;
    public final TextView tvVoiceNumber;
    public final TextView voice;

    private LightOrderEditActivityBinding(ConstraintLayout constraintLayout, EditText editText, View view, View view2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, CommonTitleBinding commonTitleBinding, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.descTv = editText;
        this.divider = view;
        this.divider2 = view2;
        this.playCodeTv = textView;
        this.playTv = textView2;
        this.saveTv = textView3;
        this.sortTv = textView4;
        this.standardTv = textView5;
        this.titleLayout = commonTitleBinding;
        this.titleVoiceCode = textView6;
        this.tvVoiceNumber = textView7;
        this.voice = textView8;
    }

    public static LightOrderEditActivityBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.descTv;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null && (viewFindViewById = view.findViewById((i = R.id.divider))) != null && (viewFindViewById2 = view.findViewById((i = R.id.divider2))) != null) {
            i = R.id.playCodeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.playTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.saveTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.sortTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.standardTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null && (viewFindViewById3 = view.findViewById((i = R.id.titleLayout))) != null) {
                                CommonTitleBinding commonTitleBindingBind = CommonTitleBinding.bind(viewFindViewById3);
                                i = R.id.title_voice_code;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.tv_voice_number;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.voice;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            return new LightOrderEditActivityBinding((ConstraintLayout) view, editText, viewFindViewById, viewFindViewById2, textView, textView2, textView3, textView4, textView5, commonTitleBindingBind, textView6, textView7, textView8);
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

    public static LightOrderEditActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LightOrderEditActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.light_order_edit_activity, viewGroup, false);
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
