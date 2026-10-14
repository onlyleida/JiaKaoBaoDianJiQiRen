package cn.mucang.android.jiakaoyi.teachingk2.res.processor;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.framework.language.LanguageManager;
import cn.mucang.android.jiakaoyi.framework.language.LanguageModel;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.jiakaoyi.uilib.mapupdate.g;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class e implements ResourceManager.c {
    @Override // cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager.c
    public void a(File file, long j) throws Throwable {
        try {
            JSONArray array = JSON.parseArray(g.b(file));
            SparseArray sparseArray = new SparseArray();
            for (int i = 0; i < array.size(); i++) {
                JSONObject jSONObject = array.getJSONObject(i);
                sparseArray.put(jSONObject.getInteger("languageType").intValue(), JSON.parseArray(jSONObject.getString("itemList"), LanguageModel.class));
            }
            LanguageManager.c(sparseArray);
        } catch (Throwable th) {
            th.printStackTrace();
            f.o("LanguageProcessor 解析错误: 语种版本：" + ResourceManager.f(ResourceManager.Resource.Language, j).version + ", error :" + th.getLocalizedMessage());
            throw new RuntimeException(th);
        }
    }
}
