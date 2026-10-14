package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityDebugProtocolBinding implements a {
    public final Button btnClearFaultCode;
    public final Button btnRainDone;
    public final Button btnReqFaultCode;
    public final EditText etRainValue;
    private final LinearLayout rootView;
    public final TextView tvClearRet;
    public final TextView tvReqRet;
    public final TextView tvSignalInfo;

    private ActivityDebugProtocolBinding(LinearLayout linearLayout, Button button, Button button2, Button button3, EditText editText, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = linearLayout;
        this.btnClearFaultCode = button;
        this.btnRainDone = button2;
        this.btnReqFaultCode = button3;
        this.etRainValue = editText;
        this.tvClearRet = textView;
        this.tvReqRet = textView2;
        this.tvSignalInfo = textView3;
    }

    public static ActivityDebugProtocolBinding bind(View view) {
        int i = R.id.btn_clear_fault_code;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btn_rain_done;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                i = R.id.btn_req_fault_code;
                Button button3 = (Button) view.findViewById(i);
                if (button3 != null) {
                    i = R.id.et_rain_value;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null) {
                        i = R.id.tv_clear_ret;
                        TextView textView = (TextView) view.findViewById(i);
                        if (textView != null) {
                            i = R.id.tv_req_ret;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.tv_signal_info;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    return new ActivityDebugProtocolBinding((LinearLayout) view, button, button2, button3, editText, textView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityDebugProtocolBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDebugProtocolBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_debug_protocol, viewGroup, false);
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
