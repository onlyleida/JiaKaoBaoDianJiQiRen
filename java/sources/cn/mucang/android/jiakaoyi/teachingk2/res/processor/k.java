package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.Downloader;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachDataProcessor;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.c;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.PictureModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VideoModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResDirUtils;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import com.alibaba.fastjson.JSON;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class k implements ResourceManager.c {
    private void b() {
        for (List<TeachModel> list : n.b().i.values()) {
            if (!g.b(list)) {
                for (TeachModel teachModel : list) {
                    if (!TeachConfig.d() && teachModel.getNormalVariable() != null) {
                        TeachConfig.k(true);
                    }
                    List<FormModel> list2 = teachModel.data;
                    if (!g.b(list2)) {
                        for (FormModel formModel : list2) {
                            String str = null;
                            boolean z = false;
                            if (formModel instanceof PictureModel) {
                                str = ((PictureModel) formModel).imageUrl;
                            } else if (formModel instanceof VideoModel) {
                                str = ((VideoModel) formModel).videoUrl;
                                z = true;
                            }
                            if (n0.g(str)) {
                                File file = new File(ResDirUtils.g(str, z));
                                if (!file.exists()) {
                                    try {
                                        new Downloader(str, file.getAbsolutePath(), "").c();
                                    } catch (Exception e2) {
                                        f.o("教学图片下载失败," + JSON.toJSONString(formModel) + " msg:" + e2.getMessage());
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) {
        n.b().i.clear();
        n.b().k.clear();
        TeachConfig.k(false);
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        b();
                        o.a(bufferedReader2);
                        return;
                    }
                    int iIndexOf = line.indexOf("_");
                    int i = Integer.parseInt(line.substring(0, iIndexOf));
                    String strSubstring = line.substring(iIndexOf + 1);
                    if (Step.findWithType(i) == null) {
                        throw new RuntimeException("数据格式不正确");
                    }
                    new TeachDataProcessor(true, true).b(c.b(JSON.parseArray(strSubstring)), n.b().i, n.b().k);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        th.printStackTrace();
                        f.o("TeachingProcessor 解析错误: 教学版本：" + ResourceManager.f(ResourceManager.Resource.Teaching, j).version + ", error :" + th.getLocalizedMessage());
                        throw new RuntimeException(th);
                    } catch (Throwable th2) {
                        o.a(bufferedReader);
                        throw th2;
                    }
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
