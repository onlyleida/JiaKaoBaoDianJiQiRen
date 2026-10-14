package cn.mucang.android.framework.account.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.framework.account.R;

/* JADX INFO: loaded from: classes.dex */
public final class AccountApiVerifyActivitySmsBinding implements a {
    public final TextView cancel;
    public final EditText codeInput;
    public final TextView message;
    public final TextView ok;
    public final TextView phone;
    private final FrameLayout rootView;
    public final TextView sendSms;
    public final TextView verifyError;

    private AccountApiVerifyActivitySmsBinding(FrameLayout frameLayout, TextView textView, EditText editText, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.cancel = textView;
        this.codeInput = editText;
        this.message = textView2;
        this.ok = textView3;
        this.phone = textView4;
        this.sendSms = textView5;
        this.verifyError = textView6;
    }

    public static AccountApiVerifyActivitySmsBinding bind(View view) {
        int i = R.id.cancel;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.code_input;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.message;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.ok;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.phone;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.send_sms;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.verify_error;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    return new AccountApiVerifyActivitySmsBinding((FrameLayout) view, textView, editText, textView2, textView3, textView4, textView5, textView6);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AccountApiVerifyActivitySmsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AccountApiVerifyActivitySmsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.account__api_verify_activity_sms, viewGroup, false);
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
