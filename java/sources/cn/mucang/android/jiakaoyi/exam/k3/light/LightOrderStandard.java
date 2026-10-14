package cn.mucang.android.jiakaoyi.exam.k3.light;

import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LightOrderStandard implements Serializable {
    public int configId;
    public int deductId;
    public String desc;
    public String icon;
    public List<Light> lights;
    public List<Light> notAllowed;
    public String standard;
    public int tag;
}
