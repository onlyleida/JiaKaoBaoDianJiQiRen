package cn.mucang.android.core.webview.core.page;

import cn.mucang.android.core.utils.t;
import com.alibaba.fastjson.JSONObject;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Config implements Serializable {
    private WebPageArgument defaultPage;
    private String page;

    private void mergeConfig(Set<Map.Entry<String, Object>> set, Set<Map.Entry<String, Object>> set2) {
        try {
            for (Map.Entry<String, Object> entry : set) {
                for (Map.Entry<String, Object> entry2 : set2) {
                    if (entry.getKey().equals(entry2.getKey())) {
                        if (entry.getValue() instanceof JSONObject) {
                            mergeConfig(((JSONObject) entry.getValue()).entrySet(), ((JSONObject) entry2.getValue()).entrySet());
                        } else {
                            entry.setValue(entry2.getValue());
                        }
                    }
                }
            }
        } catch (Exception e2) {
            t.c("e", e2);
            t.a("e", "大哥，你这配置有问题啊。。");
        }
    }

    public WebPageArgument getDefaultPage() {
        return this.defaultPage;
    }

    public String getPage() {
        return this.page;
    }

    public void setDefaultPage(WebPageArgument webPageArgument) {
        this.defaultPage = webPageArgument;
    }

    public void setPage(String str) {
        this.page = str;
    }
}
