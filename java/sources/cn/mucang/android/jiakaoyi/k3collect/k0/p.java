package cn.mucang.android.jiakaoyi.k3collect.k0;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.collision.K3CollisionModel;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<Integer, a<b<?, ?, ?>>> f4024a;

    /* JADX INFO: Access modifiers changed from: private */
    interface a<T> {
        T create();
    }

    public interface b<R extends K3SrcData, T extends cn.mucang.android.jiakaoyi.k3collect.j0.a, C extends K3CollisionModel> {
        cn.mucang.android.jiakaoyi.k3collect.g0.j a(MapView mapView);

        void b(R r, cn.mucang.android.jiakaoyi.signal.i.a aVar);

        T c();

        C d();
    }

    static {
        HashMap map = new HashMap();
        f4024a = map;
        j jVar = new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.j
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.l();
            }
        };
        map.put(1, jVar);
        map.put(3, jVar);
        map.put(4, jVar);
        map.put(10, jVar);
        map.put(2, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.l
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.k();
            }
        });
        map.put(5, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.c
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.d();
            }
        });
        map.put(9, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.g
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.m();
            }
        });
        map.put(8, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.i
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.i();
            }
        });
        map.put(7, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.f
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.f();
            }
        });
        map.put(6, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.k
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.c();
            }
        });
        map.put(11, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.a
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.g();
            }
        });
        map.put(12, jVar);
        map.put(13, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.m
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.j();
            }
        });
        cn.mucang.android.jiakaoyi.k3collect.k0.b bVar = new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.b
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.b();
            }
        };
        map.put(14, bVar);
        map.put(15, bVar);
        map.put(16, bVar);
        map.put(18, bVar);
        map.put(17, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.h
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.e();
            }
        });
        map.put(19, new a() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.d
            @Override // cn.mucang.android.jiakaoyi.k3collect.k0.p.a
            public final Object create() {
                return new cn.mucang.android.jiakaoyi.k3collect.k0.q.h();
            }
        });
    }

    public static <R extends K3SrcData, T extends cn.mucang.android.jiakaoyi.k3collect.j0.a, C extends K3CollisionModel> b<R, T, C> a(int i) {
        a<b<?, ?, ?>> aVar = f4024a.get(Integer.valueOf(i));
        if (aVar != null) {
            return (b) aVar.create();
        }
        return null;
    }
}
