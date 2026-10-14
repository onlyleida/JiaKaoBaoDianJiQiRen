package cn.mucang.android.selectcity;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import cn.mucang.android.core.utils.n0;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class x implements w {
    @Override // cn.mucang.android.selectcity.w
    public f.a.a.e.a.c.b a(Context context, Bundle bundle) {
        return (f.a.a.e.a.c.b) Fragment.instantiate(context, y.class.getName(), bundle);
    }

    @Override // cn.mucang.android.selectcity.w
    public void b(List<CityNameCodeMapping.MucangPOI> list) {
        for (String str : cn.mucang.android.core.utils.j.m(null, "core/data/city.location.txt")) {
            if (!n0.e(str) && !str.startsWith("#")) {
                String[] strArrSplit = str.split(":");
                list.add(new CityNameCodeMapping.MucangPOI(strArrSplit[1], strArrSplit[0], strArrSplit[2], strArrSplit[3]));
            }
        }
    }

    @Override // cn.mucang.android.selectcity.w
    public void c(Map<String, String> map, Map<String, String> map2) {
        for (cn.mucang.android.selectcity.a0.a aVar : cn.mucang.android.selectcity.c0.a.d(false)) {
            if (aVar.a() != null) {
                String areaCode = aVar.a().getAreaCode();
                String areaName = aVar.a().getAreaName();
                if (n0.g(areaCode) && n0.g(areaName)) {
                    map.put(areaCode, areaName);
                    map2.put(areaName, areaCode);
                }
            }
        }
    }
}
