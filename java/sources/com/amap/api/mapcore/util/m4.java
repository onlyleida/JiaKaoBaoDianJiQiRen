package com.amap.api.mapcore.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.teachingk2.R;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapActivity;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class m4 extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<OfflineMapCity> f10992a = new ArrayList();
    private OfflineMapManager b;
    private Activity c;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f10993a;
        final /* synthetic */ OfflineMapCity b;

        a(b bVar, OfflineMapCity offlineMapCity) {
            this.f10993a = bVar;
            this.b = offlineMapCity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f10993a.f10995d.setVisibility(8);
            this.f10993a.c.setVisibility(0);
            this.f10993a.c.setText("下载中");
            try {
                m4.this.b.downloadByCityName(this.b.getCity());
            } catch (AMapException e2) {
                e2.printStackTrace();
            }
        }
    }

    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f10994a;
        public TextView b;
        public TextView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ImageView f10995d;

        public b(m4 m4Var) {
        }
    }

    public m4(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, OfflineMapActivity offlineMapActivity) {
        this.b = offlineMapManager;
        this.c = offlineMapActivity;
    }

    public void b(List<OfflineMapCity> list) {
        this.f10992a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f10992a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f10992a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00ef A[Catch: Exception -> 0x00fc, TRY_LEAVE, TryCatch #0 {Exception -> 0x00fc, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x004f, B:19:0x00ac, B:21:0x00b0, B:22:0x00bb, B:23:0x00c8, B:24:0x00d5, B:25:0x00e2, B:26:0x00ef, B:5:0x0049), top: B:31:0x0000 }] */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        try {
            OfflineMapCity offlineMapCity = this.f10992a.get(i);
            if (view == null) {
                bVar = new b(this);
                view = t4.d(this.c, R.array.account__scan_login_app_user_protocol, null);
                bVar.f10994a = (TextView) view.findViewById(R.dimen.abc_action_bar_stacked_max_height);
                bVar.b = (TextView) view.findViewById(R.dimen.abc_action_button_min_height_material);
                bVar.c = (TextView) view.findViewById(R.dimen.abc_action_bar_subtitle_bottom_margin_material);
                bVar.f10995d = (ImageView) view.findViewById(R.dimen.abc_action_bar_subtitle_top_margin_material);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            bVar.f10995d.setOnClickListener(new a(bVar, offlineMapCity));
            bVar.c.setVisibility(0);
            bVar.f10994a.setText(offlineMapCity.getCity());
            double size = ((double) ((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d;
            bVar.b.setText(String.valueOf(size) + " M");
            int state = offlineMapCity.getState();
            if (state == -1) {
                bVar.f10995d.setVisibility(8);
                bVar.c.setText("下载失败");
            } else if (state == 0 || state == 1) {
                bVar.f10995d.setVisibility(8);
                bVar.c.setText("下载中");
            } else if (state == 2) {
                bVar.f10995d.setVisibility(8);
                bVar.c.setText("等待下载");
            } else if (state == 3) {
                bVar.f10995d.setVisibility(8);
                bVar.c.setText("暂停中");
            } else if (state == 4) {
                bVar.f10995d.setVisibility(8);
                bVar.c.setText("已下载");
            } else if (state != 6) {
                switch (state) {
                    case 101:
                    case 102:
                    case 103:
                        bVar.f10995d.setVisibility(8);
                        bVar.c.setText("下载失败");
                        break;
                    default:
                        break;
                }
            } else {
                bVar.f10995d.setVisibility(0);
                bVar.c.setVisibility(8);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return view;
    }
}
