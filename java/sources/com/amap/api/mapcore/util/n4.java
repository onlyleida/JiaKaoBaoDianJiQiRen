package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.teachingk2.R;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.amap.api.maps.offlinemap.OfflineMapManager;

/* JADX INFO: loaded from: classes5.dex */
public class n4 extends o4 implements View.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OfflineMapManager f11022a;
    private View b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f11023d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f11024e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f11025f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f11026g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f11027h;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n4.this.dismiss();
        }
    }

    public n4(Context context, OfflineMapManager offlineMapManager) {
        super(context);
        this.f11022a = offlineMapManager;
    }

    @Override // com.amap.api.mapcore.util.o4
    protected void a() {
        View viewD = t4.d(getContext(), R.array.account__scan_login_app_privacy_protocol, null);
        this.b = viewD;
        setContentView(viewD);
        this.b.setOnClickListener(new a());
        this.c = (TextView) this.b.findViewById(R.dimen.abc_action_bar_elevation_material);
        TextView textView = (TextView) this.b.findViewById(R.dimen.abc_action_bar_icon_vertical_padding_material);
        this.f11023d = textView;
        textView.setText("暂停下载");
        this.f11024e = (TextView) this.b.findViewById(R.dimen.abc_action_bar_overflow_padding_end_material);
        this.f11025f = (TextView) this.b.findViewById(R.dimen.abc_action_bar_overflow_padding_start_material);
        this.f11023d.setOnClickListener(this);
        this.f11024e.setOnClickListener(this);
        this.f11025f.setOnClickListener(this);
    }

    public void c(int i, String str) {
        this.c.setText(str);
        if (i == 0) {
            this.f11023d.setText("暂停下载");
            this.f11023d.setVisibility(0);
            this.f11024e.setText("取消下载");
        }
        if (i == 2) {
            this.f11023d.setVisibility(8);
            this.f11024e.setText("取消下载");
        } else if (i == -1 || i == 101 || i == 102 || i == 103) {
            this.f11023d.setText("继续下载");
            this.f11023d.setVisibility(0);
        } else if (i == 3) {
            this.f11023d.setVisibility(0);
            this.f11023d.setText("继续下载");
            this.f11024e.setText("取消下载");
        } else if (i == 4) {
            this.f11024e.setText(SundialNumKeyBoardView.KEY_DELETE);
            this.f11023d.setVisibility(8);
        }
        this.f11026g = i;
        this.f11027h = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            int id = view.getId();
            if (id != R.dimen.abc_action_bar_icon_vertical_padding_material) {
                if (id != R.dimen.abc_action_bar_overflow_padding_end_material) {
                    if (id == R.dimen.abc_action_bar_overflow_padding_start_material) {
                        dismiss();
                        return;
                    }
                    return;
                } else {
                    if (TextUtils.isEmpty(this.f11027h)) {
                        return;
                    }
                    this.f11022a.remove(this.f11027h);
                    dismiss();
                    return;
                }
            }
            int i = this.f11026g;
            if (i == 0) {
                this.f11023d.setText("继续下载");
                this.f11022a.pause();
            } else if (i == 3 || i == -1 || i == 101 || i == 102 || i == 103) {
                this.f11023d.setText("暂停下载");
                this.f11022a.downloadByCityName(this.f11027h);
            }
            dismiss();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
