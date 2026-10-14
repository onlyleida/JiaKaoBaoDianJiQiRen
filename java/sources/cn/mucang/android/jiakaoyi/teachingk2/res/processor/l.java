package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.o0;
import cn.mucang.android.jiakaoyi.framework.utils.t0;
import cn.mucang.android.jiakaoyi.hpmap.view.tilemap.TileParam;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class l implements ResourceManager.c {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) {
        if (file != null) {
            try {
                if (file.exists()) {
                    File parentFile = file.getParentFile();
                    String name = parentFile.getName();
                    String strB = h0.b(file);
                    if (strB == null || !strB.equals(name)) {
                        return;
                    }
                    for (File file2 : parentFile.getParentFile().listFiles()) {
                        if (!file2.getName().equals(parentFile.getName())) {
                            m.e(file2);
                        }
                    }
                    t0.e(file, parentFile);
                    m.f(file);
                    File[] fileArrListFiles = parentFile.listFiles();
                    if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                        return;
                    }
                    o0.f(j, parentFile.getAbsolutePath());
                    o0.h(j, name);
                    ArrayList arrayList = new ArrayList();
                    for (File file3 : new File(parentFile.getAbsolutePath() + "/tile/").listFiles()) {
                        if (file3.isFile() && "json".equalsIgnoreCase(m.k(file3.getAbsolutePath()))) {
                            arrayList.add(JSON.parseObject(m.p(file3.getAbsolutePath()), TileParam.class));
                        }
                    }
                    if (g.d(arrayList)) {
                        o0.g(JSON.toJSONString(arrayList));
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                f.o("解析瓦片地图资源异常：" + e2.getLocalizedMessage());
                u.h("解析瓦片地图资源异常!");
            }
        }
    }
}
