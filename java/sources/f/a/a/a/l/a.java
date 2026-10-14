package f.a.a.a.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.x;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import com.iflytek.cloud.SpeechUtility;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import com.serenegiant.net.NetworkChangedReceiver;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f14456a;
    private c b;
    private ExecutorService c = Executors.newFixedThreadPool(1, new ThreadPool.a(CustomLogInfoBuilder.LOG_TYPE));

    /* JADX INFO: renamed from: f.a.a.a.l.a$a, reason: collision with other inner class name */
    class C0295a extends BroadcastReceiver {
        C0295a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t.m("HadesLee", "onReceive,connective.changed");
            if (x.e()) {
                a.this.d();
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.e();
        }
    }

    public a(Context context) {
        this.f14456a = context;
        this.b = new c(context);
        this.f14456a.registerReceiver(new C0295a(), new IntentFilter(NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.c.submit(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        t.m("HadesLee", "doSubmitHistory0,fuckshit");
        List<f.a.a.a.l.b> listG = g();
        t.m("HadesLee", "doSubmitHistory0,list.size=" + listG.size());
        if (g.d(listG)) {
            Iterator<f.a.a.a.l.b> it = listG.iterator();
            while (it.hasNext()) {
                i(it.next());
            }
        }
    }

    private void f(Thread thread, Throwable th) {
        String strA = p0.a(new Date(), "yyyy-MM-dd HH:mm:ss");
        String string = n0.e(th.getMessage()) ? th.toString() : th.getMessage();
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        try {
            try {
                this.b.getWritableDatabase().execSQL("insert into t_exception(time,message,stacktrace)values(?,?,?)", new Object[]{strA, string, stringWriter.toString()});
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        } finally {
            this.b.getWritableDatabase().close();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x006a A[DONT_GENERATE, PHI: r1
      0x006a: PHI (r1v3 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:14:0x0068, B:8:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
    private List<f.a.a.a.l.b> g() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.b.getWritableDatabase().rawQuery("select * from t_exception order by _id asc limit 20 ", null);
            while (cursorRawQuery.moveToNext()) {
                f.a.a.a.l.b bVar = new f.a.a.a.l.b();
                bVar.f14461e = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("errorcount"));
                bVar.f14459a = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("_id"));
                bVar.c = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(ErrorDialogParams.EXTRA_MESSAGE));
                bVar.f14460d = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("stacktrace"));
                bVar.b = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("time"));
                arrayList.add(bVar);
            }
        } catch (Exception e2) {
            t.c("默认替换", e2);
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
        return arrayList;
    }

    private void h(f.a.a.a.l.b bVar) {
        try {
            this.b.getWritableDatabase().execSQL("delete from t_exception where _id=" + bVar.f14459a);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }

    private void i(f.a.a.a.l.b bVar) {
        t.m("HadesLee", "submit,data.id=" + bVar.f14459a);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("time", bVar.b);
            jSONObject.put(ErrorDialogParams.EXTRA_MESSAGE, bVar.c);
            jSONObject.put("stacktrace", bVar.f14460d);
            jSONObject.put("package", this.f14456a.getPackageName());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("retrycount", bVar.f14461e);
            jSONObject.put("extra", jSONObject2);
            String string = jSONObject.toString();
            StringBuilder sb = new StringBuilder("http://error.kakamobi.com/submit");
            cn.mucang.android.core.api.url.c.b(sb, "4.3", null, true, null);
            t.m("HadesLee", "submit.url=" + sb.toString());
            t.m("HadesLee", "submit.json=" + jSONObject.toString());
            String strZ = cn.mucang.android.core.http.a.q().z(sb.toString(), cn.mucang.android.core.api.request.e.b.l(string), null);
            t.m("HadesLee", "submit.back=" + strZ);
            if (new JSONObject(strZ).optBoolean(SpeechUtility.TAG_RESOURCE_RESULT)) {
                h(bVar);
                return;
            }
        } catch (Exception e2) {
            t.m("HadesLee", "submit,ex=" + e2);
            t.c("默认替换", e2);
        }
        j(bVar);
        t.m("HadesLee", "updateDataErrorCount");
    }

    private void j(f.a.a.a.l.b bVar) {
        t.m("HadesLee", "updateDataErrorCount.start");
        try {
            this.b.getWritableDatabase().execSQL("update t_exception set errorcount=errorcount+1 where _id=" + bVar.f14459a);
            t.m("HadesLee", "updateDataErrorCount.end");
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
    }

    @Override // f.a.a.a.l.d
    public void a(Thread thread, Throwable th) {
        f(thread, th);
    }
}
