package cn.mucang.android.jiakaoyi.k3collect.db;

import cn.mucang.android.core.db.e;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a f3933a = new a();
    }

    public static a c() {
        return b.f3933a;
    }

    public void a(Long l) {
        if (l == null) {
            return;
        }
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().h(K3HpMapEntity.class, l.longValue());
        }
    }

    public void b(String str) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().j(K3HpMapEntity.class, "exam_site_id=?", new String[]{str});
        }
    }

    public List<K3HpMapEntity> d(String str) {
        List<K3HpMapEntity> listY;
        if (n0.e(str)) {
            return null;
        }
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            listY = cn.mucang.android.jiakaoyi.framework.f.a.a().y(K3HpMapEntity.class, e.d("select * from t_k3_hp_map where exam_site_id=?", str));
        }
        return listY;
    }

    public K3HpMapEntity e(Long l) {
        K3HpMapEntity k3HpMapEntity;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            k3HpMapEntity = (K3HpMapEntity) cn.mucang.android.jiakaoyi.framework.f.a.a().m(K3HpMapEntity.class, l.longValue());
        }
        return k3HpMapEntity;
    }

    public void f(String str, K3SrcData k3SrcData) {
        K3HpMapEntity k3HpMapEntity = new K3HpMapEntity(str, JSON.toJSONString(k3SrcData, SerializerFeature.DisableCircularReferenceDetect), k3SrcData.type);
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            cn.mucang.android.jiakaoyi.framework.f.a.a().u(k3HpMapEntity);
            if (k3HpMapEntity.getId() != null && k3HpMapEntity.getId().longValue() != -1) {
                k3SrcData.id = k3HpMapEntity.getId();
            }
        }
    }

    public void g(K3SrcData k3SrcData) {
        if (k3SrcData != null) {
            h(k3SrcData.id, k3SrcData);
        }
    }

    public void h(Long l, K3SrcData k3SrcData) {
        Long l2 = k3SrcData.id;
        if (l2 != null && !l2.equals(l)) {
            t.h("K3MapDbDataHelper", "数据更新失败,SrcData与Id不匹配");
            return;
        }
        k3SrcData.id = l;
        K3HpMapEntity k3HpMapEntityE = e(l);
        if (k3HpMapEntityE != null) {
            k3HpMapEntityE.setType(k3SrcData.type);
            k3HpMapEntityE.setContent(JSON.toJSONString(k3SrcData, SerializerFeature.DisableCircularReferenceDetect));
            synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
                cn.mucang.android.jiakaoyi.framework.f.a.a().E(k3HpMapEntityE);
            }
        }
    }

    private a() {
    }
}
