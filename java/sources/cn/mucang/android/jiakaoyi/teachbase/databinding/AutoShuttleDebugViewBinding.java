package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class AutoShuttleDebugViewBinding implements a {
    public final Button btnCancel;
    public final Button btnSendDis;
    public final Button btnSendReqRet;
    public final Button btnSendState;
    public final Button btnStart;
    private final LinearLayout rootView;

    private AutoShuttleDebugViewBinding(LinearLayout linearLayout, Button button, Button button2, Button button3, Button button4, Button button5) {
        this.rootView = linearLayout;
        this.btnCancel = button;
        this.btnSendDis = button2;
        this.btnSendReqRet = button3;
        this.btnSendState = button4;
        this.btnStart = button5;
    }

    public static AutoShuttleDebugViewBinding bind(View view) {
        int i = R.id.btn_cancel;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btn_send_dis;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                i = R.id.btn_send_req_ret;
                Button button3 = (Button) view.findViewById(i);
                if (button3 != null) {
                    i = R.id.btn_send_state;
                    Button button4 = (Button) view.findViewById(i);
                    if (button4 != null) {
                        i = R.id.btn_start;
                        Button button5 = (Button) view.findViewById(i);
                        if (button5 != null) {
                            return new AutoShuttleDebugViewBinding((LinearLayout) view, button, button2, button3, button4, button5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static AutoShuttleDebugViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AutoShuttleDebugViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.auto_shuttle_debug_view, viewGroup, false);
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
