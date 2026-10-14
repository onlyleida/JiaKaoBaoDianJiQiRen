package cn.mucang.android.core.callphone;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static a f2456d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ReentrantLock f2457a = new ReentrantLock();
    private final ReentrantReadWriteLock b = new ReentrantReadWriteLock();
    private boolean c;

    /* JADX INFO: renamed from: cn.mucang.android.core.callphone.a$a, reason: collision with other inner class name */
    class RunnableC0072a implements Runnable {
        RunnableC0072a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f2457a.tryLock()) {
                try {
                    try {
                        Thread.sleep(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                        a.this.g(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
                    } catch (InterruptedException e2) {
                        t.c("默认替换", e2);
                    }
                } finally {
                    a.this.f2457a.unlock();
                }
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ PhoneCallRequest f2459a;

        b(PhoneCallRequest phoneCallRequest) {
            this.f2459a = phoneCallRequest;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.k(this.f2459a);
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        }
    }

    static {
        new HashMap();
        f2456d = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(long j) {
        List<PhoneCallLog> listN = n();
        if (g.b(listN)) {
            this.c = false;
            return;
        }
        for (PhoneCallLog phoneCallLog : listN) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (phoneCallLog.getCallTime() > 0 && phoneCallLog.getAppSwitchInterval() == -1) {
                phoneCallLog.setAppSwitchInterval((int) Math.ceil(((jCurrentTimeMillis - j) - phoneCallLog.getCallTime()) / 1000.0f));
            }
        }
        int size = listN.size();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(listN.get(i));
            if (arrayList.size() >= 20 || i >= size - 1) {
                ApiResponse apiResponseB = new cn.mucang.android.core.callphone.b().b(arrayList);
                boolean z = apiResponseB != null && apiResponseB.isSuccess();
                StringBuilder sb = new StringBuilder();
                sb.append("sent batch logs with size of ");
                sb.append(arrayList.size());
                sb.append(", success:");
                sb.append(z);
                sb.append(" message:");
                sb.append(apiResponseB != null ? apiResponseB.getMessage() : null);
                t.a("CallPhoneManager", sb.toString());
                if (!z) {
                    arrayList2.addAll(arrayList);
                }
                arrayList.clear();
            }
        }
        o(arrayList2);
        this.c = false;
    }

    public static a h() {
        return f2456d;
    }

    private PhoneCallLog i(String str) {
        List<PhoneCallLog> listN = n();
        if (listN == null) {
            return null;
        }
        for (int size = listN.size() - 1; size >= 0; size--) {
            PhoneCallLog phoneCallLog = listN.get(size);
            if (phoneCallLog.getPhone().equals(str)) {
                return phoneCallLog;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(PhoneCallRequest phoneCallRequest) {
        List<PhoneCallLog> listN = n();
        if (listN.contains(phoneCallRequest)) {
            return;
        }
        this.c = true;
        listN.add(new PhoneCallLog(phoneCallRequest));
        o(listN);
    }

    private boolean l(PhoneCallRequest phoneCallRequest) {
        phoneCallRequest.setCallTime(System.currentTimeMillis());
        try {
            Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + phoneCallRequest.getPhone()));
            intent.addFlags(268435456);
            MucangConfig.getContext().startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static String m(PhoneCallLog phoneCallLog) {
        return JSON.toJSONString(phoneCallLog, SerializerFeature.WriteMapNullValue);
    }

    private List<PhoneCallLog> n() {
        this.b.readLock().lock();
        try {
            List<String> listL = j.l(j.n(j.e("failed_records_new_api_2.txt")));
            ArrayList arrayList = new ArrayList(listL.size());
            for (String str : listL) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        arrayList.add(t(str));
                    } catch (Exception e2) {
                        t.c("默认替换", e2);
                    }
                }
            }
            this.b.readLock().unlock();
            return arrayList;
        } catch (Throwable th) {
            this.b.readLock().unlock();
            throw th;
        }
    }

    private void o(List<PhoneCallLog> list) {
        try {
            this.b.writeLock().lock();
            StringBuilder sb = new StringBuilder();
            Iterator<PhoneCallLog> it = list.iterator();
            while (it.hasNext()) {
                sb.append(m(it.next()));
                sb.append("\n");
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            j.s(sb.toString(), j.e("failed_records_new_api_2.txt"));
        } finally {
            this.b.writeLock().unlock();
        }
    }

    private void p(PhoneCallLog phoneCallLog) {
        int iIndexOf;
        List<PhoneCallLog> listN = n();
        if (g.b(listN) || (iIndexOf = listN.indexOf(phoneCallLog)) == -1) {
            return;
        }
        listN.remove(iIndexOf);
        listN.add(phoneCallLog);
        o(listN);
    }

    private void q(PhoneCallRequest phoneCallRequest) {
        MucangConfig.f(new b(phoneCallRequest));
    }

    private static PhoneCallLog t(String str) {
        return (PhoneCallLog) JSON.parseObject(str, PhoneCallLog.class);
    }

    public void d(PhoneCallRequest phoneCallRequest) {
        s(phoneCallRequest);
    }

    public void e(String str) {
        PhoneCallLog phoneCallLogI = i(str);
        if (phoneCallLogI != null && phoneCallLogI.isNeedConfirm() && phoneCallLogI.getConfirmed() == -1) {
            phoneCallLogI.setConfirmed(0);
            p(phoneCallLogI);
            r();
        }
    }

    public void f(String str) {
        PhoneCallLog phoneCallLogI = i(str);
        if (phoneCallLogI != null && phoneCallLogI.isNeedConfirm() && phoneCallLogI.getConfirmed() == -1 && l(phoneCallLogI)) {
            phoneCallLogI.setConfirmed(1);
            p(phoneCallLogI);
        }
    }

    public boolean j() {
        return this.c;
    }

    public void r() {
        a0.a();
        if (this.f2457a.isLocked()) {
            return;
        }
        MucangConfig.f(new RunnableC0072a());
    }

    public boolean s(PhoneCallRequest phoneCallRequest) {
        if (phoneCallRequest.isNeedConfirm()) {
            q(phoneCallRequest);
            return true;
        }
        boolean zL = l(phoneCallRequest);
        if (zL) {
            q(phoneCallRequest);
        }
        return zL;
    }
}
