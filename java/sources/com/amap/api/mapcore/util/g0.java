package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<OfflineMapProvince> f10807a = new ArrayList<>();
    private r0 b;
    private Context c;

    public g0(Context context, Handler handler) {
        this.c = context;
        this.b = r0.b(context);
    }

    private void d(az azVar, OfflineMapCity offlineMapCity) {
        int iE = azVar.v().e();
        if (azVar.v().equals(azVar.f10470f)) {
            p(azVar.K());
        } else {
            if (azVar.v().equals(azVar.k)) {
                z0.h("saveJSONObjectToFile  CITY " + azVar.getCity());
                o(azVar);
                azVar.K().p();
            }
            if (k(azVar.getcompleteCode(), azVar.v().e())) {
                f(azVar.K());
            }
        }
        offlineMapCity.setState(iE);
        offlineMapCity.setCompleteCode(azVar.getcompleteCode());
    }

    private void e(az azVar, OfflineMapProvince offlineMapProvince) {
        m0 m0Var;
        int iE = azVar.v().e();
        if (iE == 6) {
            offlineMapProvince.setState(iE);
            offlineMapProvince.setCompleteCode(0);
            p(new m0(offlineMapProvince, this.c));
            try {
                z0.k(offlineMapProvince.getProvinceCode(), this.c);
                return;
            } catch (IOException e2) {
                e2.printStackTrace();
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        if (q(iE) && l(offlineMapProvince)) {
            if (azVar.getPinyin().equals(offlineMapProvince.getPinyin())) {
                offlineMapProvince.setState(iE);
                offlineMapProvince.setCompleteCode(azVar.getcompleteCode());
                offlineMapProvince.setVersion(azVar.getVersion());
                offlineMapProvince.setUrl(azVar.getUrl());
                m0Var = new m0(offlineMapProvince, this.c);
                m0Var.m(azVar.p());
                m0Var.c(azVar.getCode());
            } else {
                offlineMapProvince.setState(iE);
                offlineMapProvince.setCompleteCode(100);
                m0Var = new m0(offlineMapProvince, this.c);
            }
            m0Var.p();
            f(m0Var);
            z0.h("saveJSONObjectToFile  province " + m0Var.b());
        }
    }

    private void f(m0 m0Var) {
        r0 r0Var = this.b;
        if (r0Var == null || m0Var == null) {
            return;
        }
        r0Var.e(m0Var);
    }

    private void g(OfflineMapCity offlineMapCity, OfflineMapCity offlineMapCity2) {
        offlineMapCity.setUrl(offlineMapCity2.getUrl());
        offlineMapCity.setVersion(offlineMapCity2.getVersion());
        offlineMapCity.setSize(offlineMapCity2.getSize());
        offlineMapCity.setCode(offlineMapCity2.getCode());
        offlineMapCity.setPinyin(offlineMapCity2.getPinyin());
        offlineMapCity.setJianpin(offlineMapCity2.getJianpin());
    }

    private void h(OfflineMapProvince offlineMapProvince, OfflineMapProvince offlineMapProvince2) {
        offlineMapProvince.setUrl(offlineMapProvince2.getUrl());
        offlineMapProvince.setVersion(offlineMapProvince2.getVersion());
        offlineMapProvince.setSize(offlineMapProvince2.getSize());
        offlineMapProvince.setPinyin(offlineMapProvince2.getPinyin());
        offlineMapProvince.setJianpin(offlineMapProvince2.getJianpin());
    }

    private boolean k(int i, int i2) {
        return i2 != 1 || i <= 2 || i >= 98;
    }

    private boolean l(OfflineMapProvince offlineMapProvince) {
        if (offlineMapProvince == null) {
            return false;
        }
        Iterator<OfflineMapCity> it = offlineMapProvince.getCityList().iterator();
        while (it.hasNext()) {
            if (it.next().getState() != 4) {
                return false;
            }
        }
        return true;
    }

    private void o(az azVar) {
        File[] fileArrListFiles = new File(r3.p0(this.c)).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (file.isFile() && file.exists() && file.getName().contains(azVar.getAdcode()) && file.getName().endsWith(".zip.tmp.dt")) {
                file.delete();
            }
        }
    }

    private void p(m0 m0Var) {
        r0 r0Var = this.b;
        if (r0Var != null) {
            r0Var.k(m0Var);
        }
    }

    private boolean q(int i) {
        return i == 4;
    }

    public OfflineMapCity a(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        synchronized (this.f10807a) {
            Iterator<OfflineMapProvince> it = this.f10807a.iterator();
            while (it.hasNext()) {
                for (OfflineMapCity offlineMapCity : it.next().getCityList()) {
                    if (offlineMapCity.getCode().equals(str)) {
                        return offlineMapCity;
                    }
                }
            }
            return null;
        }
    }

    public ArrayList<OfflineMapProvince> b() {
        ArrayList<OfflineMapProvince> arrayList = new ArrayList<>();
        synchronized (this.f10807a) {
            Iterator<OfflineMapProvince> it = this.f10807a.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return arrayList;
    }

    public void c(az azVar) {
        String pinyin = azVar.getPinyin();
        synchronized (this.f10807a) {
            loop0: for (OfflineMapProvince offlineMapProvince : this.f10807a) {
                if (offlineMapProvince != null) {
                    for (OfflineMapCity offlineMapCity : offlineMapProvince.getCityList()) {
                        if (offlineMapCity.getPinyin().trim().equals(pinyin.trim())) {
                            d(azVar, offlineMapCity);
                            e(azVar, offlineMapProvince);
                            break loop0;
                        }
                    }
                }
            }
        }
    }

    public void i(List<OfflineMapProvince> list) {
        OfflineMapProvince next;
        OfflineMapCity next2;
        synchronized (this.f10807a) {
            if (this.f10807a.size() > 0) {
                for (int i = 0; i < this.f10807a.size(); i++) {
                    OfflineMapProvince offlineMapProvince = this.f10807a.get(i);
                    Iterator<OfflineMapProvince> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (offlineMapProvince.getPinyin().equals(next.getPinyin())) {
                            break;
                        }
                        if (offlineMapProvince.getPinyin().equals("quanguogaiyaotu") || offlineMapProvince.getProvinceCode().equals("000001") || offlineMapProvince.getProvinceCode().equals("100000")) {
                            if (next.getPinyin().equals("quanguogaiyaotu")) {
                                break;
                            }
                        }
                    }
                    if (next != null) {
                        h(offlineMapProvince, next);
                        ArrayList<OfflineMapCity> cityList = offlineMapProvince.getCityList();
                        ArrayList<OfflineMapCity> cityList2 = next.getCityList();
                        for (int i2 = 0; i2 < cityList.size(); i2++) {
                            OfflineMapCity offlineMapCity = cityList.get(i2);
                            Iterator<OfflineMapCity> it2 = cityList2.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it2.next();
                            } while (!offlineMapCity.getPinyin().equals(next2.getPinyin()));
                            if (next2 != null) {
                                g(offlineMapCity, next2);
                            }
                        }
                    }
                }
            } else {
                Iterator<OfflineMapProvince> it3 = list.iterator();
                while (it3.hasNext()) {
                    this.f10807a.add(it3.next());
                }
            }
        }
    }

    public boolean j(int i) {
        return i == 0 || i == 2 || i == 3 || i == 1 || i == 102 || i == 101 || i == 103 || i == -1;
    }

    public OfflineMapCity m(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        synchronized (this.f10807a) {
            Iterator<OfflineMapProvince> it = this.f10807a.iterator();
            while (it.hasNext()) {
                for (OfflineMapCity offlineMapCity : it.next().getCityList()) {
                    if (offlineMapCity.getCity().trim().equalsIgnoreCase(str.trim())) {
                        return offlineMapCity;
                    }
                }
            }
            return null;
        }
    }

    public ArrayList<OfflineMapCity> n() {
        ArrayList<OfflineMapCity> arrayList = new ArrayList<>();
        synchronized (this.f10807a) {
            Iterator<OfflineMapProvince> it = this.f10807a.iterator();
            while (it.hasNext()) {
                Iterator<OfflineMapCity> it2 = it.next().getCityList().iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
        }
        return arrayList;
    }

    public OfflineMapProvince r(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        synchronized (this.f10807a) {
            for (OfflineMapProvince offlineMapProvince : this.f10807a) {
                if (offlineMapProvince.getProvinceName().trim().equalsIgnoreCase(str.trim())) {
                    return offlineMapProvince;
                }
            }
            return null;
        }
    }

    public ArrayList<OfflineMapCity> s() {
        ArrayList<OfflineMapCity> arrayList;
        synchronized (this.f10807a) {
            arrayList = new ArrayList<>();
            for (OfflineMapProvince offlineMapProvince : this.f10807a) {
                if (offlineMapProvince != null) {
                    for (OfflineMapCity offlineMapCity : offlineMapProvince.getCityList()) {
                        if (offlineMapCity.getState() == 4 || offlineMapCity.getState() == 7) {
                            arrayList.add(offlineMapCity);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<OfflineMapProvince> t() {
        ArrayList<OfflineMapProvince> arrayList;
        synchronized (this.f10807a) {
            arrayList = new ArrayList<>();
            for (OfflineMapProvince offlineMapProvince : this.f10807a) {
                if (offlineMapProvince != null && (offlineMapProvince.getState() == 4 || offlineMapProvince.getState() == 7)) {
                    arrayList.add(offlineMapProvince);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<OfflineMapCity> u() {
        ArrayList<OfflineMapCity> arrayList;
        synchronized (this.f10807a) {
            arrayList = new ArrayList<>();
            for (OfflineMapProvince offlineMapProvince : this.f10807a) {
                if (offlineMapProvince != null) {
                    for (OfflineMapCity offlineMapCity : offlineMapProvince.getCityList()) {
                        if (j(offlineMapCity.getState())) {
                            arrayList.add(offlineMapCity);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<OfflineMapProvince> v() {
        ArrayList<OfflineMapProvince> arrayList;
        synchronized (this.f10807a) {
            arrayList = new ArrayList<>();
            for (OfflineMapProvince offlineMapProvince : this.f10807a) {
                if (offlineMapProvince != null && j(offlineMapProvince.getState())) {
                    arrayList.add(offlineMapProvince);
                }
            }
        }
        return arrayList;
    }

    public void w() {
        x();
        this.b = null;
        this.c = null;
    }

    public void x() {
        ArrayList<OfflineMapProvince> arrayList = this.f10807a;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f10807a.clear();
            }
        }
    }
}
