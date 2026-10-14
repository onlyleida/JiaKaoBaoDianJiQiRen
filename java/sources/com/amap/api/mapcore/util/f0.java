package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public class f0 extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10769a;
    private r0 b;

    public f0(Context context) {
        this.f10769a = context;
        this.b = r0.b(context);
    }

    private m0 a(File file) throws Throwable {
        String strZ = r3.z(file);
        m0 m0Var = new m0();
        m0Var.o(strZ);
        return m0Var;
    }

    private m0 b(String str) {
        if (str.equals("quanguo")) {
            str = "quanguogaiyaotu";
        }
        c0 c0VarB = c0.b(this.f10769a);
        m0 m0VarA = null;
        if (c0VarB != null) {
            String strC = c0VarB.C(str);
            File[] fileArrListFiles = new File(r3.p0(this.f10769a)).listFiles();
            if (fileArrListFiles == null) {
                return null;
            }
            for (File file : fileArrListFiles) {
                if (((file.getName().contains(strC) || file.getName().contains(str)) && file.getName().endsWith(".zip.tmp.dt")) && (m0VarA = a(file)) != null && m0VarA.b() != null) {
                    return m0VarA;
                }
            }
        }
        return m0VarA;
    }

    private void c() {
        m0 m0VarB;
        String strO;
        int iIndexOf;
        boolean z;
        String strO2;
        int iIndexOf2;
        String strO3;
        int iIndexOf3;
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<m0> arrayListC = this.b.c();
        d(arrayList, "vmap/");
        d(arrayList, "map/");
        g(arrayList, "map/");
        ArrayList<String> arrayListF = f();
        for (m0 m0Var : arrayListC) {
            if (m0Var != null && m0Var.b() != null) {
                int i = m0Var.l;
                boolean z2 = true;
                if (i == 4 || i == 7) {
                    boolean zContains = arrayList.contains(m0Var.j());
                    if (zContains || (strO = z0.o(m0Var.h())) == null || (iIndexOf = arrayList.indexOf(strO)) == -1) {
                        z2 = zContains;
                    } else {
                        arrayList.set(iIndexOf, m0Var.j());
                    }
                    if (!z2) {
                        this.b.k(m0Var);
                    }
                } else if (i == 0 || i == 1) {
                    z = arrayListF.contains(m0Var.f()) || arrayListF.contains(m0Var.j());
                    if (z || (strO2 = z0.o(m0Var.h())) == null || (iIndexOf2 = arrayListF.indexOf(strO2)) == -1) {
                        z2 = z;
                    } else {
                        arrayListF.set(iIndexOf2, m0Var.j());
                    }
                    if (!z2) {
                        this.b.k(m0Var);
                    }
                } else if (i == 3 && m0Var.i() != 0) {
                    z = arrayListF.contains(m0Var.f()) || arrayListF.contains(m0Var.j());
                    if (z || (strO3 = z0.o(m0Var.h())) == null || (iIndexOf3 = arrayListF.indexOf(strO3)) == -1) {
                        z2 = z;
                    } else {
                        arrayListF.set(iIndexOf3, m0Var.j());
                    }
                    if (!z2) {
                        this.b.k(m0Var);
                    }
                }
            }
        }
        for (String str : arrayList) {
            if (!e(str, arrayListC) && (m0VarB = b(str)) != null) {
                this.b.e(m0VarB);
            }
        }
        c0 c0VarB = c0.b(this.f10769a);
        if (c0VarB != null) {
            c0VarB.i(null);
        }
    }

    private void d(ArrayList<String> arrayList, String str) {
        File[] fileArrListFiles;
        String name;
        int iLastIndexOf;
        File file = new File(r3.d0(this.f10769a) + str);
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.getName().endsWith(".dat") && (iLastIndexOf = (name = file2.getName()).lastIndexOf(46)) > -1 && iLastIndexOf < name.length()) {
                    String strSubstring = name.substring(0, iLastIndexOf);
                    if (!arrayList.contains(strSubstring)) {
                        arrayList.add(strSubstring);
                    }
                }
            }
        }
    }

    private boolean e(String str, ArrayList<m0> arrayList) {
        Iterator<m0> it = arrayList.iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().j())) {
                return true;
            }
        }
        return false;
    }

    private ArrayList<String> f() {
        File[] fileArrListFiles;
        String name;
        int iLastIndexOf;
        ArrayList<String> arrayList = new ArrayList<>();
        File file = new File(r3.p0(this.f10769a));
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null) {
            return arrayList;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.getName().endsWith(".zip") && (iLastIndexOf = (name = file2.getName()).lastIndexOf(46)) > -1 && iLastIndexOf < name.length()) {
                arrayList.add(name.substring(0, iLastIndexOf));
            }
        }
        return arrayList;
    }

    private void g(ArrayList<String> arrayList, String str) {
        File[] fileArrListFiles;
        String[] list;
        File file = new File(r3.y(this.f10769a) + str);
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    String name = file2.getName();
                    if (!TextUtils.isEmpty(name) && (list = file2.list()) != null) {
                        boolean z = true;
                        if (list.length >= 1 && !arrayList.contains(name)) {
                            if (!name.equals("a0")) {
                                boolean z2 = false;
                                boolean z3 = false;
                                for (String str2 : list) {
                                    if ("m1.ans".equals(str2)) {
                                        z2 = true;
                                    }
                                    if ("m3.ans".equals(str2)) {
                                        z3 = true;
                                    }
                                }
                                if (!z2 || !z3) {
                                    z = false;
                                    break;
                                }
                            } else {
                                int length = list.length;
                                int i = 0;
                                while (true) {
                                    if (i >= length) {
                                        z = false;
                                        break;
                                    } else if ("m1.ans".equals(list[i])) {
                                        break;
                                    } else {
                                        i++;
                                    }
                                }
                            }
                            if (z) {
                                arrayList.add(name);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            c();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
