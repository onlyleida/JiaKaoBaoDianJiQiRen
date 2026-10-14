package com.loc;

import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class eu {
    private File b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f12853d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f12854e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f12855f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedList<et> f12852a = new LinkedList<>();
    private boolean c = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f12856g = new Runnable() { // from class: com.loc.eu.1
        @Override // java.lang.Runnable
        public final void run() {
            if (eu.this.c) {
                return;
            }
            if (eu.this.f12855f) {
                eu.this.b();
                eu.d(eu.this);
            }
            if (eu.this.f12853d != null) {
                eu.this.f12853d.postDelayed(eu.this.f12856g, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
            }
        }
    };

    public eu(Context context, Handler handler) {
        this.f12854e = null;
        this.f12853d = handler;
        String path = context.getFilesDir().getPath();
        if (this.f12854e == null) {
            this.f12854e = fp.m(context);
        }
        try {
            this.b = new File(path, "hisloc");
        } catch (Throwable th) {
            ea.a(th);
        }
        a();
        Handler handler2 = this.f12853d;
        if (handler2 != null) {
            handler2.removeCallbacks(this.f12856g);
            this.f12853d.postDelayed(this.f12856g, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        }
    }

    private void a() {
        LinkedList<et> linkedList = this.f12852a;
        if (linkedList == null || linkedList.size() <= 0) {
            Iterator<String> it = fp.a(this.b).iterator();
            while (it.hasNext()) {
                try {
                    String str = new String(ex.b(o.b(it.next()), this.f12854e), "UTF-8");
                    et etVar = new et();
                    etVar.a(new JSONObject(str));
                    this.f12852a.add(etVar);
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                } catch (JSONException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        StringBuilder sb = new StringBuilder();
        Iterator<et> it = this.f12852a.iterator();
        while (it.hasNext()) {
            try {
                sb.append(o.b(ex.a(it.next().a().getBytes("UTF-8"), this.f12854e)) + "\n");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        String string = sb.toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        fp.a(this.b, string);
    }

    private static boolean b(ArrayList<er> arrayList, ArrayList<dx> arrayList2) {
        return arrayList == null || arrayList.size() <= 0 || arrayList2 == null || arrayList2.size() <= 0 || (((long) arrayList.size()) < 4 && ((long) arrayList2.size()) < 20);
    }

    static /* synthetic */ boolean d(eu euVar) {
        euVar.f12855f = false;
        return false;
    }

    public final List<et> a(ArrayList<er> arrayList, ArrayList<dx> arrayList2) {
        if (!b(arrayList, arrayList2)) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList3 = new ArrayList();
        int i = 0;
        for (et etVar : this.f12852a) {
            if (jCurrentTimeMillis - etVar.f12847d < 21600000000L) {
                arrayList3.add(etVar);
                i++;
            }
            if (i == 10) {
                break;
            }
        }
        return arrayList3;
    }

    public final void a(et etVar) {
        et etVar2 = null;
        et etVar3 = null;
        int i = 0;
        for (et etVar4 : this.f12852a) {
            if (etVar4.f12846a == 1) {
                if (etVar3 == null) {
                    etVar3 = etVar4;
                }
                i++;
                etVar2 = etVar4;
            }
        }
        if (etVar2 != null) {
            new Location("gps");
            if (etVar.f12847d - etVar2.f12847d < SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US && fp.a(new double[]{etVar.b, etVar.c, etVar2.b, etVar2.c}) < 20.0f) {
                return;
            }
        }
        if (i >= 5) {
            this.f12852a.remove(etVar3);
        }
        if (this.f12852a.size() >= 10) {
            this.f12852a.removeFirst();
        }
        this.f12852a.add(etVar);
        this.f12855f = true;
    }

    public final void a(boolean z) {
        if (!z) {
            this.f12856g.run();
        }
        Handler handler = this.f12853d;
        if (handler != null) {
            handler.removeCallbacks(this.f12856g);
        }
        this.c = true;
    }

    public final void b(et etVar) {
        if (this.f12852a.size() > 0) {
            int i = etVar.f12846a;
            if (i != 6 && i != 5) {
                if (this.f12852a.contains(etVar)) {
                    return;
                }
                if (this.f12852a.size() >= 10) {
                    this.f12852a.removeFirst();
                }
                this.f12852a.add(etVar);
                this.f12855f = true;
                return;
            }
            et last = this.f12852a.getLast();
            if (last.c == etVar.c && last.b == etVar.b && last.f12848e == etVar.f12848e) {
                return;
            }
            if (this.f12852a.size() >= 10) {
                this.f12852a.removeFirst();
            }
            this.f12852a.add(etVar);
            this.f12855f = true;
        }
    }
}
