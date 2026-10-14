package cn.mucang.jiakaoyi.uilib.debug;

import android.text.TextUtils;
import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.log.DebugLogUtil;
import cn.mucang.android.jiakaoyi.framework.log.LogInput;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\tJ\u0006\u0010\u001b\u001a\u00020\tJ\u0010\u0010\u001c\u001a\u00020\u00192\b\u0010\u001d\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\u001e\u001a\u00020\u0019J\u000e\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\tJ\u000e\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\tJ\u000e\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\t0\rj\b\u0012\u0004\u0012\u00020\t`\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R'\u0010\u000f\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\rj\b\u0012\u0004\u0012\u00020\t`\u000e0\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "_logCache", "Ljava/util/ArrayList;", "", "filter", "filterLogs", "filterMode", "", "hasFilterCache", "", "locationLogIndex", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "logLocations", "Landroidx/lifecycle/MutableLiveData;", "getLogLocations", "()Landroidx/lifecycle/MutableLiveData;", "logType", "scrollLock", "showItems", "getShowItems", "targetLogs", "clearLog", "", "getLogType", "getMode", "onFilterChanged", "text", "refreshLog", "setLogType", "setMode", "mode", "setScrollLock", "lock", "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<ArrayList<String>> f9210a = new z<>();
    private final z<HashSet<Integer>> b = new z<>();
    private int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f9211d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashSet<Integer> f9212e = new HashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<String> f9213f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList<String> f9214g = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<String> f9215h = new ArrayList<>();
    private String i;
    private volatile boolean j;
    private volatile boolean k;

    public final void g() {
        this.f9214g.clear();
        this.f9215h.clear();
        m();
    }

    public final z<HashSet<Integer>> h() {
        return this.b;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final int getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final int getF9211d() {
        return this.f9211d;
    }

    public final z<ArrayList<String>> k() {
        return this.f9210a;
    }

    public final void l(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (!r.a(str, this.i)) {
                this.f9215h.clear();
                this.f9212e.clear();
                this.j = false;
            }
            if (!this.j) {
                ArrayList<String> arrayList = this.f9214g;
                ArrayList arrayList2 = new ArrayList();
                Iterator<T> it = arrayList.iterator();
                int i = 0;
                while (true) {
                    boolean z = true;
                    if (!it.hasNext()) {
                        ArrayList<String> arrayList3 = this.f9215h;
                        ArrayList<String> arrayList4 = this.f9214g;
                        ArrayList arrayList5 = new ArrayList();
                        for (Object obj : arrayList4) {
                            r.c(str);
                            if (StringsKt__StringsKt.G((String) obj, str, false, 2, null)) {
                                arrayList5.add(obj);
                            }
                        }
                        arrayList3.addAll(arrayList5);
                        this.j = true;
                        break;
                    }
                    Object next = it.next();
                    int i2 = i + 1;
                    if (i < 0) {
                        s.t();
                        throw null;
                    }
                    r.c(str);
                    if (StringsKt__StringsKt.G((String) next, str, false, 2, null)) {
                        this.f9212e.add(Integer.valueOf(i));
                    } else {
                        z = false;
                    }
                    if (z) {
                        arrayList2.add(next);
                    }
                    i = i2;
                }
            }
        } else {
            this.f9215h.clear();
            this.f9212e.clear();
            this.j = false;
        }
        this.i = str;
        m();
    }

    public final void m() {
        this.f9213f.clear();
        if (this.j && this.f9211d == 1) {
            this.f9213f.addAll(this.f9215h);
        } else {
            this.f9213f.addAll(this.f9214g);
        }
        this.f9210a.l(this.f9213f);
        if (this.f9211d == 2) {
            this.b.l(this.f9212e);
        }
    }

    public final void n(int i) {
        DebugLogUtil debugLogUtil = DebugLogUtil.f3464a;
        debugLogUtil.c(this.c);
        this.c = i;
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = System.currentTimeMillis();
        debugLogUtil.b(i, new LogInput() { // from class: cn.mucang.jiakaoyi.uilib.debug.DebugViewModel$setLogType$1
            @Override // cn.mucang.android.jiakaoyi.framework.log.LogInput
            public void a(String text) {
                r.e(text, "text");
                this.f9216a.f9214g.add(text);
                if (this.f9216a.f9214g.size() > 8000) {
                    this.f9216a.f9214g = new ArrayList(this.f9216a.f9214g.subList(1000, this.f9216a.f9214g.size()));
                }
                if (this.f9216a.j && !TextUtils.isEmpty(this.f9216a.i)) {
                    String str = this.f9216a.i;
                    r.c(str);
                    if (StringsKt__StringsKt.G(text, str, false, 2, null)) {
                        kotlinx.coroutines.g.b(k0.a(this.f9216a), null, null, new DebugViewModel$setLogType$1$onLog$1(this.f9216a, text, null), 3, null);
                    }
                }
                int i2 = this.f9216a.k ? 100 : 1000;
                long jCurrentTimeMillis = System.currentTimeMillis();
                Ref$LongRef ref$LongRef2 = ref$LongRef;
                if (jCurrentTimeMillis - ref$LongRef2.element > i2) {
                    ref$LongRef2.element = System.currentTimeMillis();
                    this.f9216a.m();
                }
            }
        });
        kotlinx.coroutines.g.b(k0.a(this), null, null, new DebugViewModel$setLogType$2(this, null), 3, null);
    }

    public final void o(int i) {
        this.f9211d = i;
        m();
    }

    public final void p(boolean z) {
        this.k = z;
    }
}
