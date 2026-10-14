package cn.mucang.android.core.api.request;

import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MucangRequest.HttpMethod f2402a = MucangRequest.HttpMethod.GET;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2403d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, String> f2404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, String> f2405f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private cn.mucang.android.core.api.request.e.b f2406g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<cn.mucang.android.core.api.request.e.a> f2407h;
    private cn.mucang.android.core.api.request.e.c i;
    private cn.mucang.android.core.http.c.b j;
    private List<cn.mucang.android.core.api.request.d.a> k;
    private List<cn.mucang.android.core.api.request.d.b> l;
    private a m;

    public interface a {
        String a();
    }

    public c(String str, String str2, String str3) {
        this.b = str;
        this.c = str2;
        this.f2403d = str3;
    }

    private void f() throws Exception {
        if (g.b(this.k)) {
            return;
        }
        Iterator<cn.mucang.android.core.api.request.d.a> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    public c a(String str, String str2) {
        if (this.f2407h == null) {
            this.f2407h = new ArrayList();
        }
        this.f2407h.add(new cn.mucang.android.core.api.request.e.a(str, str2));
        return this;
    }

    public final MucangRequest b() throws InternalException {
        try {
            f();
            a aVar = this.m;
            if (aVar == null) {
                aVar = new cn.mucang.android.core.api.request.a(this.b, this.c, this.f2403d, this.f2404e, this.f2405f);
            }
            return new MucangRequest(this.f2402a, aVar.a(), this.f2406g, this.f2407h, this.l, this.i, this.j);
        } catch (Exception e2) {
            throw new InternalException(e2);
        }
    }

    public cn.mucang.android.core.api.request.e.c c() {
        return this.i;
    }

    public String d() {
        return this.b;
    }

    public String e() {
        return this.c;
    }

    public c g(cn.mucang.android.core.api.request.e.c cVar) {
        this.i = cVar;
        return this;
    }

    public c h(Map<String, String> map) {
        this.f2404e = map;
        return this;
    }

    public c i(Map<String, String> map) {
        this.f2405f = map;
        return this;
    }

    public c j(String str) {
        this.b = str;
        return this;
    }

    public c k(MucangRequest.HttpMethod httpMethod) {
        this.f2402a = httpMethod;
        return this;
    }

    public c l(cn.mucang.android.core.api.request.e.b bVar) {
        this.f2406g = bVar;
        return this;
    }

    public cn.mucang.android.core.http.c.b m(cn.mucang.android.core.http.c.b bVar) {
        this.j = bVar;
        return bVar;
    }

    public c n(List<cn.mucang.android.core.api.request.d.a> list) {
        this.k = list;
        return this;
    }

    public c o(List<cn.mucang.android.core.api.request.d.b> list) {
        this.l = list;
        return this;
    }

    public c p(String str) {
        this.c = str;
        return this;
    }

    public void q(a aVar) {
        this.m = aVar;
    }
}
