package com.amap.api.mapcore.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.maps.model.LatLng;
import com.amap.api.trace.LBSTraceClient;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class z4 {
    private static volatile z4 b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, a> f11433a;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f11434a;
        private int b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f11435d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private HashMap<Integer, List<LatLng>> f11437f;
        private int c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f11436e = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List<LatLng> f11438g = new ArrayList();

        public a(int i, int i2, int i3, HashMap<Integer, List<LatLng>> map) {
            this.f11434a = 0;
            this.b = 0;
            this.f11435d = 0;
            this.f11434a = i2;
            this.f11437f = map;
            this.b = i;
            this.f11435d = i3;
        }

        private void c(Handler handler, List<LatLng> list) {
            Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.obj = list;
            messageObtainMessage.what = 100;
            messageObtainMessage.arg1 = this.c;
            Bundle bundle = new Bundle();
            bundle.putInt("lineID", this.b);
            messageObtainMessage.setData(bundle);
            handler.sendMessage(messageObtainMessage);
            this.c++;
            this.f11436e++;
        }

        private void d(Handler handler) {
            if (this.f11436e <= 0) {
                z4.this.c(handler, this.b, LBSTraceClient.MIN_GRASP_POINT_ERROR);
                return;
            }
            int iA = w4.a(this.f11438g);
            Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.obj = this.f11438g;
            messageObtainMessage.what = 101;
            messageObtainMessage.arg1 = iA;
            messageObtainMessage.arg2 = this.f11435d;
            Bundle bundle = new Bundle();
            bundle.putInt("lineID", this.b);
            messageObtainMessage.setData(bundle);
            handler.sendMessage(messageObtainMessage);
        }

        public HashMap<Integer, List<LatLng>> a() {
            return this.f11437f;
        }

        public void b(Handler handler) {
            List<LatLng> list;
            for (int i = this.c; i <= this.f11434a && (list = this.f11437f.get(Integer.valueOf(i))) != null; i++) {
                this.f11438g.addAll(list);
                c(handler, list);
            }
            if (this.c == this.f11434a + 1) {
                d(handler);
            }
        }
    }

    public z4() {
        this.f11433a = null;
        this.f11433a = Collections.synchronizedMap(new HashMap());
    }

    public static z4 b() {
        if (b == null) {
            synchronized (z4.class) {
                if (b == null) {
                    b = new z4();
                }
            }
        }
        return b;
    }

    public synchronized a a(String str) {
        Map<String, a> map = this.f11433a;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public void c(Handler handler, int i, String str) {
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.obj = str;
        messageObtainMessage.what = 102;
        Bundle bundle = new Bundle();
        bundle.putInt("lineID", i);
        messageObtainMessage.setData(bundle);
        handler.sendMessage(messageObtainMessage);
    }

    public synchronized void d(String str, int i, int i2, int i3) {
        Map<String, a> map = this.f11433a;
        if (map != null) {
            map.put(str, new a(i, i2, i3, new HashMap(16)));
        }
    }

    public synchronized void e(String str, int i, List<LatLng> list) {
        Map<String, a> map = this.f11433a;
        if (map != null) {
            map.get(str).a().put(Integer.valueOf(i), list);
        }
    }
}
