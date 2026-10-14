package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import cn.mucang.android.jiakaoyi.teachingk2.R;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.DownloadProgressView;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;

/* JADX INFO: loaded from: classes5.dex */
public class p4 implements View.OnClickListener {
    private Context b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f11072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ImageView f11073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f11074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OfflineMapManager f11075g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private OfflineMapCity f11076h;
    private View k;
    private DownloadProgressView l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11071a = 0;
    private boolean i = false;
    private Handler j = new a();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                p4.this.c(message.arg1, message.arg2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public p4(Context context, OfflineMapManager offlineMapManager) {
        this.b = context;
        g();
        this.f11075g = offlineMapManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i, int i2) throws Exception {
        if (this.f11071a != 2 || i2 <= 3 || i2 >= 100) {
            this.l.setVisibility(8);
        } else {
            this.l.setVisibility(0);
            this.l.setProgress(i2);
        }
        if (i == -1) {
            m();
        }
        if (i == 0) {
            if (this.f11071a != 1) {
                n(i2);
                return;
            }
            this.f11073e.setVisibility(8);
            this.f11074f.setText("下载中");
            this.f11074f.setTextColor(Color.parseColor("#4287ff"));
            return;
        }
        if (i == 1) {
            l(i2);
            return;
        }
        if (i == 2) {
            h(i2);
            return;
        }
        if (i == 3) {
            j(i2);
            return;
        }
        if (i == 4) {
            o();
            return;
        }
        if (i == 6) {
            i();
        } else {
            if (i == 7) {
                k();
                return;
            }
            switch (i) {
                case 101:
                case 102:
                case 103:
                    m();
                    break;
            }
        }
    }

    private void d(int i, int i2, boolean z) {
        OfflineMapCity offlineMapCity = this.f11076h;
        if (offlineMapCity != null) {
            offlineMapCity.setState(i);
            this.f11076h.setCompleteCode(i2);
        }
        Message message = new Message();
        message.arg1 = i;
        message.arg2 = i2;
        this.j.sendMessage(message);
    }

    private void g() {
        View viewD = t4.d(this.b, R.array.account__scan_login_app_user_protocol, null);
        this.k = viewD;
        this.l = (DownloadProgressView) viewD.findViewById(R.dimen.abc_action_button_min_width_material);
        this.c = (TextView) this.k.findViewById(R.dimen.abc_action_bar_stacked_max_height);
        this.f11072d = (TextView) this.k.findViewById(R.dimen.abc_action_button_min_height_material);
        this.f11073e = (ImageView) this.k.findViewById(R.dimen.abc_action_bar_subtitle_top_margin_material);
        this.f11074f = (TextView) this.k.findViewById(R.dimen.abc_action_bar_subtitle_bottom_margin_material);
        this.f11073e.setOnClickListener(this);
    }

    private void h(int i) {
        if (this.f11071a == 1) {
            this.f11073e.setVisibility(8);
            this.f11074f.setVisibility(0);
            this.f11074f.setText("等待中");
            this.f11074f.setTextColor(Color.parseColor("#4287ff"));
            return;
        }
        this.f11074f.setVisibility(0);
        this.f11073e.setVisibility(8);
        this.f11074f.setTextColor(Color.parseColor("#4287ff"));
        this.f11074f.setText("等待中");
    }

    private void i() {
        this.f11074f.setVisibility(8);
        this.f11073e.setVisibility(0);
        this.f11073e.setImageResource(R.animator.card_flip_right_in);
    }

    private void j(int i) {
        this.f11074f.setVisibility(0);
        this.f11073e.setVisibility(8);
        this.f11074f.setTextColor(-7829368);
        this.f11074f.setText("暂停");
    }

    private void k() {
        this.f11074f.setVisibility(0);
        this.f11073e.setVisibility(0);
        this.f11073e.setImageResource(R.animator.card_flip_right_in);
        this.f11074f.setText("已下载-有更新");
    }

    private void l(int i) {
        if (this.f11071a == 1) {
            return;
        }
        this.f11074f.setVisibility(0);
        this.f11073e.setVisibility(8);
        this.f11074f.setText("解压中");
        this.f11074f.setTextColor(Color.parseColor("#898989"));
    }

    private void m() {
        this.f11074f.setVisibility(0);
        this.f11073e.setVisibility(8);
        this.f11074f.setTextColor(-65536);
        this.f11074f.setText("下载出现异常");
    }

    private void n(int i) {
        if (this.f11076h == null) {
            return;
        }
        this.f11074f.setVisibility(0);
        this.f11074f.setText("下载中");
        this.f11073e.setVisibility(8);
        this.f11074f.setTextColor(Color.parseColor("#4287ff"));
    }

    private void o() {
        this.f11074f.setVisibility(0);
        this.f11073e.setVisibility(8);
        this.f11074f.setText("已下载");
        this.f11074f.setTextColor(Color.parseColor("#898989"));
    }

    private synchronized void p() {
        this.f11075g.pause();
        this.f11075g.restart();
    }

    private synchronized boolean q() {
        try {
            this.f11075g.downloadByCityName(this.f11076h.getCity());
        } catch (AMapException e2) {
            e2.printStackTrace();
            Toast.makeText(this.b, e2.getErrorMessage(), 0).show();
            return false;
        }
        return true;
    }

    public View a() {
        return this.k;
    }

    public void b(int i) {
        this.f11071a = i;
    }

    public void f(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.f11076h = offlineMapCity;
            this.c.setText(offlineMapCity.getCity());
            double size = ((double) ((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d;
            this.f11072d.setText(String.valueOf(size) + " M");
            d(this.f11076h.getState(), this.f11076h.getcompleteCode(), this.i);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            if (!r3.t0(this.b)) {
                Toast.makeText(this.b, "无网络连接", 0).show();
                return;
            }
            OfflineMapCity offlineMapCity = this.f11076h;
            if (offlineMapCity != null) {
                int state = offlineMapCity.getState();
                int i = this.f11076h.getcompleteCode();
                if (state == 0) {
                    p();
                    j(i);
                } else {
                    if (state == 1 || state == 4) {
                        return;
                    }
                    if (q()) {
                        h(i);
                    } else {
                        m();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
