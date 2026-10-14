package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivitySettingBinding implements a {
    public final TextView back;
    public final TextView register;
    private final FrameLayout rootView;
    public final RelativeLayout terminalRegister;
    public final TextView terminalRegisterStatus;
    public final FrameLayout terminalUnregister;
    public final TextView title;

    private TtActivitySettingBinding(FrameLayout frameLayout, TextView textView, TextView textView2, RelativeLayout relativeLayout, TextView textView3, FrameLayout frameLayout2, TextView textView4) {
        this.rootView = frameLayout;
        this.back = textView;
        this.register = textView2;
        this.terminalRegister = relativeLayout;
        this.terminalRegisterStatus = textView3;
        this.terminalUnregister = frameLayout2;
        this.title = textView4;
    }

    public static TtActivitySettingBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.back);
        if (textView != null) {
            TextView textView2 = (TextView) view.findViewById(R.id.register);
            if (textView2 != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.terminal_register);
                if (relativeLayout != null) {
                    TextView textView3 = (TextView) view.findViewById(R.id.terminal_register_status);
                    if (textView3 != null) {
                        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.terminal_unregister);
                        if (frameLayout != null) {
                            TextView textView4 = (TextView) view.findViewById(R.id.title);
                            if (textView4 != null) {
                                return new TtActivitySettingBinding((FrameLayout) view, textView, textView2, relativeLayout, textView3, frameLayout, textView4);
                            }
                            str = "title";
                        } else {
                            str = "terminalUnregister";
                        }
                    } else {
                        str = "terminalRegisterStatus";
                    }
                } else {
                    str = "terminalRegister";
                }
            } else {
                str = "register";
            }
        } else {
            str = "back";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivitySettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivitySettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
