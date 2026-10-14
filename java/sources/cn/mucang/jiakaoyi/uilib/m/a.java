package cn.mucang.jiakaoyi.uilib.m;

import android.app.Application;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.SystemClock;
import android.util.Log;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.db.e;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.api.d;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.mobile.auth.gatewayauth.Constant;
import com.sixents.sdk.base.SixentsCode;
import com.tencent.open.SocialConstants;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f9431a;
    private static final List<DeductEntity> b = new ArrayList();

    private static List<DeductEntity> a(KeMu keMu) {
        List<DeductEntity> list = b;
        if (list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (DeductEntity deductEntity : list) {
            if (deductEntity.getStepId() >= keMu.min && deductEntity.getStepId() <= keMu.max) {
                DeductEntity deductEntity2 = new DeductEntity();
                deductEntity2.copy(deductEntity, true);
                deductEntity2.setId(deductEntity.getId());
                arrayList.add(deductEntity2);
            }
        }
        return arrayList;
    }

    private static DeductEntity b(Cursor cursor) {
        DeductEntity deductEntity = new DeductEntity();
        deductEntity.setId(Long.valueOf(cursor.getLong(cursor.getColumnIndex("_id"))));
        deductEntity.setAllowUserSet(cursor.getInt(cursor.getColumnIndex("allow_user_set")) == 1);
        deductEntity.setAreaCode(cursor.getString(cursor.getColumnIndex("area_code")));
        deductEntity.setCanAutoJudge(cursor.getInt(cursor.getColumnIndex("can_auto_judge")) == 1);
        deductEntity.setCode(cursor.getInt(cursor.getColumnIndex("code")));
        deductEntity.setDeductScore(cursor.getInt(cursor.getColumnIndex("deduct_score")));
        deductEntity.setDesc(cursor.getString(cursor.getColumnIndex(SocialConstants.PARAM_APP_DESC)));
        deductEntity.setExamSiteId(cursor.getLong(cursor.getColumnIndex("exam_site_id")));
        deductEntity.setHadSetByUser(cursor.getInt(cursor.getColumnIndex("had_set_by_user")) == 1);
        deductEntity.setJudgeType(cursor.getInt(cursor.getColumnIndex("judge_type")));
        deductEntity.setName(cursor.getString(cursor.getColumnIndex(Constant.PROTOCOL_WEBVIEW_NAME)));
        deductEntity.setStatus(cursor.getInt(cursor.getColumnIndex("status")));
        deductEntity.setStepId(cursor.getInt(cursor.getColumnIndex("step_id")));
        deductEntity.setUserId(cursor.getString(cursor.getColumnIndex("user_id")));
        deductEntity.setPosition(cursor.getInt(cursor.getColumnIndex("position")));
        deductEntity.setRuleIds(cursor.getString(cursor.getColumnIndex("rule_ids")));
        deductEntity.setUseMode(cursor.getInt(cursor.getColumnIndex("use_mode")));
        return deductEntity;
    }

    private static void c(List<DeductEntity> list, SQLiteDatabase sQLiteDatabase) {
        if (g.b(list)) {
            return;
        }
        Iterator<DeductEntity> it = list.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.delete("t_deduct", "_id=?", new String[]{String.valueOf(it.next().getId())});
        }
    }

    private static void d(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                if (sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Exception e2) {
                t.c("默认替换", e2);
            }
        }
    }

    private static ContentValues e(DeductEntity deductEntity) {
        ContentValues contentValues = new ContentValues();
        if (deductEntity.getId() != null) {
            contentValues.put("_id", deductEntity.getId());
        }
        contentValues.put("area_code", deductEntity.getAreaCode());
        contentValues.put("code", Integer.valueOf(deductEntity.getCode()));
        contentValues.put("deduct_score", Integer.valueOf(deductEntity.getDeductScore()));
        contentValues.put(SocialConstants.PARAM_APP_DESC, deductEntity.getDesc());
        contentValues.put("exam_site_id", Long.valueOf(deductEntity.getExamSiteId()));
        contentValues.put("judge_type", Integer.valueOf(deductEntity.getJudgeType()));
        contentValues.put(Constant.PROTOCOL_WEBVIEW_NAME, deductEntity.getName());
        contentValues.put("status", Integer.valueOf(deductEntity.getStatus()));
        contentValues.put("step_id", Integer.valueOf(deductEntity.getStepId()));
        contentValues.put("user_id", deductEntity.getUserId());
        contentValues.put("allow_user_set", Integer.valueOf(deductEntity.isAllowUserSet() ? 1 : 0));
        contentValues.put("can_auto_judge", Integer.valueOf(deductEntity.isCanAutoJudge() ? 1 : 0));
        contentValues.put("had_set_by_user", Integer.valueOf(deductEntity.isHadSetByUser() ? 1 : 0));
        contentValues.put("position", Integer.valueOf(deductEntity.getPosition()));
        contentValues.put("rule_ids", deductEntity.getRuleIds());
        contentValues.put("use_mode", Integer.valueOf(deductEntity.getUseMode()));
        return contentValues;
    }

    public static DeductEntity f(String str, long j) {
        List<DeductEntity> listM;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
                listM = m("select * from t_deduct where exam_site_id=? and code=? order by position", String.valueOf(j), str);
            } else {
                String strC = AccountUtils.c();
                if (n0.e(strC)) {
                    return null;
                }
                listM = m("select * from t_deduct where exam_site_id=? and user_id=? and code=? order by position", String.valueOf(j), strC, str);
            }
            if (listM == null || listM.isEmpty()) {
                listM = m("select * from t_deduct where exam_site_id=? and code=?  order by position", String.valueOf(SixentsCode.SIXENTS_RET_UNKNOWN), str);
            }
            if (!g.d(listM)) {
                return null;
            }
            return listM.get(0);
        }
    }

    public static List<Deduct> g(long j, KeMu keMu) {
        List<Deduct> listT;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            listT = t(h(j, keMu));
        }
        return listT;
    }

    public static List<DeductEntity> h(long j, KeMu keMu) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            try {
                if (j == -999) {
                    return j(keMu);
                }
                if (!AccountUtils.b() && !AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                    return null;
                }
                List<DeductEntity> listJ = j(keMu);
                n(listJ, i(j));
                return x(listJ, j);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static List<DeductEntity> i(long j) {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return m("select * from t_deduct where exam_site_id=? order by position", String.valueOf(j));
        }
        String strC = AccountUtils.c();
        if (n0.e(strC)) {
            return null;
        }
        return m("select * from t_deduct where exam_site_id=? and user_id=? order by position", String.valueOf(j), strC);
    }

    private static List<DeductEntity> j(KeMu keMu) {
        List<DeductEntity> list = b;
        if (list.size() > 0) {
            return a(keMu);
        }
        List<DeductEntity> listM = m("select * from t_deduct where exam_site_id=? order by position", String.valueOf(-999L));
        if (g.d(listM)) {
            list.clear();
            list.addAll(listM);
        } else {
            f.o("deduct : 本地基础数据获取为空!!!!!");
        }
        return a(keMu);
    }

    private static List<DeductEntity> k(long j, KeMu keMu) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (!AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                String strC = AccountUtils.c();
                if (n0.e(strC)) {
                    return null;
                }
                return m("select * from t_deduct where exam_site_id=? and user_id=? order by position", String.valueOf(j), strC);
            }
            return m("select * from t_deduct where exam_site_id=? and step_id <= ? and step_id >= ? order by position", String.valueOf(j), String.valueOf(keMu.max), String.valueOf(keMu.min));
        }
    }

    private static void l(List<DeductEntity> list, SQLiteDatabase sQLiteDatabase) {
        if (g.b(list)) {
            return;
        }
        Iterator<DeductEntity> it = list.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.insert("t_deduct", null, e(it.next()));
        }
    }

    private static List<DeductEntity> m(String str, String... strArr) {
        Cursor cursorRawQuery;
        SQLiteDatabase readableDatabase;
        try {
            readableDatabase = cn.mucang.android.jiakaoyi.framework.f.a.b().getReadableDatabase();
            try {
                cursorRawQuery = readableDatabase.rawQuery(str, strArr);
                try {
                    ArrayList arrayList = new ArrayList();
                    while (cursorRawQuery.moveToNext()) {
                        arrayList.add(b(cursorRawQuery));
                    }
                    j.b(cursorRawQuery);
                    j.c(readableDatabase);
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    try {
                        f.o("listDeduct 报错:" + Arrays.toString(strArr) + " , " + th.getLocalizedMessage());
                        return null;
                    } finally {
                        j.b(cursorRawQuery);
                        j.c(readableDatabase);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                cursorRawQuery = null;
            }
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
            readableDatabase = null;
        }
    }

    private static List<DeductEntity> n(List<DeductEntity> list, List<DeductEntity> list2) {
        if (g.b(list) || g.b(list2)) {
            return list;
        }
        HashMap map = new HashMap();
        if (g.d(list2)) {
            for (DeductEntity deductEntity : list2) {
                map.put(Integer.valueOf(deductEntity.getCode()), deductEntity);
            }
        }
        for (DeductEntity deductEntity2 : list) {
            DeductEntity deductEntity3 = (DeductEntity) map.get(Integer.valueOf(deductEntity2.getCode()));
            if (deductEntity3 != null) {
                deductEntity2.copy(deductEntity3);
            }
        }
        return list;
    }

    private static DeductEntity o(String[] strArr) {
        DeductEntity deductEntity = new DeductEntity();
        deductEntity.setExamSiteId(-999L);
        int i = 0;
        deductEntity.setCode(Integer.parseInt(strArr[0]));
        deductEntity.setStepId(Integer.parseInt(strArr[1]));
        deductEntity.setJudgeType(Integer.parseInt(strArr[2]));
        deductEntity.setDeductScore(Integer.parseInt(strArr[3]));
        deductEntity.setStatus(Integer.parseInt(strArr[4]));
        deductEntity.setAllowUserSet(Boolean.parseBoolean(strArr[5]));
        deductEntity.setName(strArr[6]);
        deductEntity.setDesc(strArr[7]);
        deductEntity.setCanAutoJudge(Boolean.parseBoolean(strArr[8]));
        deductEntity.setRuleIds(strArr[9]);
        if (strArr.length > 10) {
            try {
                i = Integer.parseInt(strArr[10]);
            } catch (Exception unused) {
            }
            deductEntity.setUseMode(i);
        }
        return deductEntity;
    }

    private static boolean p(KeMu keMu, boolean z) throws Throwable {
        int i;
        if (keMu == KeMu.K3) {
            i = cn.mucang.android.jiakaoyi.framework.f.a.b;
        } else if (keMu == KeMu.K2) {
            i = cn.mucang.android.jiakaoyi.framework.f.a.c;
        } else {
            i = keMu == KeMu.Moto ? cn.mucang.android.jiakaoyi.framework.f.a.f3448e : cn.mucang.android.jiakaoyi.framework.f.a.f3447d;
        }
        if (i <= 0) {
            f.o("return . deduct localV = " + i + " ,request kemu = " + keMu.name);
            return true;
        }
        int iD = i0.d(w(keMu), -1);
        boolean zB = g.b(j(keMu));
        if (iD == i && !zB) {
            f.o("deduct : 已经保存过全国数据,version=" + iD + ",本地version=" + i + ",kemu=" + keMu.name);
            return true;
        }
        if (zB) {
            f.o("deduct : 数据库发生错误，重新写入基础数据,version=" + iD + ",本地version=" + i + ",kemu=" + keMu.name);
        }
        try {
            r(keMu, i);
            i0.k(w(keMu), i);
            return true;
        } catch (IOException e2) {
            String str = "数据初始化失败, version:" + iD + " kemu:" + keMu + " RequestVersion:" + i;
            f.o(str + " : " + e2.getLocalizedMessage());
            t.h("DeductDataManager", str + " : " + e2.getLocalizedMessage());
            return false;
        } catch (IllegalStateException unused) {
            if (z) {
                SystemClock.sleep(200L);
                p(keMu, false);
            }
            return false;
        }
    }

    public static boolean q() {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (System.currentTimeMillis() - f9431a < DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS) {
                return false;
            }
            boolean zP = p(KeMu.K2, true);
            boolean zP2 = p(KeMu.K3, true);
            boolean zP3 = p(KeMu.B2, true);
            boolean zP4 = p(KeMu.Moto, true);
            if (!zP || !zP2 || !zP3 || !zP4) {
                return false;
            }
            f9431a = System.currentTimeMillis();
            return true;
        }
    }

    private static void r(KeMu keMu, int i) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        String str = keMu.dir + "/sdata/dv_" + i + ".data";
        Application context = MucangConfig.getContext();
        f.o("开始读取内置" + keMu + "全国扣分数据");
        InputStream inputStreamOpen = context.getAssets().open(str);
        BufferedReader bufferedReader = null;
        SQLiteDatabase writableDatabase = null;
        bufferedReader = null;
        try {
            byte[] bArrA = c.a(inputStreamOpen);
            for (int i2 = 0; i2 < bArrA.length; i2++) {
                bArrA[i2] = (byte) (bArrA[i2] ^ 103);
            }
            byteArrayInputStream = new ByteArrayInputStream(bArrA);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(byteArrayInputStream));
                try {
                    ArrayList arrayList = new ArrayList();
                    while (true) {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            List<DeductEntity> listJ = j(keMu);
                            try {
                                writableDatabase = cn.mucang.android.jiakaoyi.framework.f.a.b().getWritableDatabase();
                                writableDatabase.beginTransaction();
                                c(listJ, writableDatabase);
                                l(arrayList, writableDatabase);
                                writableDatabase.setTransactionSuccessful();
                                b.clear();
                                d(writableDatabase);
                                j.c(writableDatabase);
                                o.a(inputStreamOpen);
                                o.a(bufferedReader2);
                                o.a(byteArrayInputStream);
                                return;
                            } catch (Throwable th) {
                                try {
                                    f.o("deduct syncGlobalVersionData 报错:" + keMu + "," + th.getLocalizedMessage());
                                    throw th;
                                } catch (Throwable th2) {
                                    d(writableDatabase);
                                    j.c(writableDatabase);
                                    throw th2;
                                }
                            }
                        }
                        arrayList.add(o(line.split("%_%", line.length())));
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = bufferedReader2;
                    o.a(inputStreamOpen);
                    o.a(bufferedReader);
                    o.a(byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th = th5;
            byteArrayInputStream = null;
        }
    }

    public static boolean s(long j, boolean z, KeMu keMu) throws ApiException, IOException, InternalException, HttpException {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            try {
                if (!AccountUtils.b() && !AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                    return false;
                }
                f.o("开始拉取服务端扣分，examSiteId：" + j);
                List<DeductEntity> listN = new d(keMu).n(j);
                if (z) {
                    ActionLog.f3431a.m("记录一次重置拉取服务器扣分操作");
                }
                if (g.b(listN)) {
                    f.o("服务器个人扣分是null");
                    return true;
                }
                f.o("服务器个人扣分: " + JSON.toJSONString(listN));
                String strC = AccountUtils.c();
                HashMap map = new HashMap();
                if (g.d(listN)) {
                    for (DeductEntity deductEntity : listN) {
                        deductEntity.setUserId(strC);
                        map.put(deductEntity.getCode() + "-" + deductEntity.getExamSiteId(), deductEntity);
                    }
                }
                List<DeductEntity> listK = k(j, keMu);
                ArrayList arrayList = new ArrayList();
                HashMap map2 = new HashMap();
                if (g.d(listK)) {
                    for (int size = listK.size() - 1; size >= 0; size--) {
                        DeductEntity deductEntity2 = listK.get(size);
                        if (map2.containsKey(deductEntity2.getCode() + "-" + deductEntity2.getExamSiteId())) {
                            arrayList.add(deductEntity2);
                            listK.remove(deductEntity2);
                        } else {
                            map2.put(deductEntity2.getCode() + "-" + deductEntity2.getExamSiteId(), deductEntity2);
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                if (g.d(listN)) {
                    for (DeductEntity deductEntity3 : listN) {
                        DeductEntity deductEntity4 = (DeductEntity) map2.get(deductEntity3.getCode() + "-" + deductEntity3.getExamSiteId());
                        if (deductEntity4 == null) {
                            arrayList3.add(deductEntity3);
                        } else {
                            deductEntity4.copy(deductEntity3);
                            arrayList2.add(deductEntity4);
                        }
                    }
                }
                if (g.d(listK)) {
                    for (DeductEntity deductEntity5 : listK) {
                        if (((DeductEntity) map.get(deductEntity5.getCode() + "-" + deductEntity5.getExamSiteId())) == null) {
                            arrayList4.add(deductEntity5);
                        }
                    }
                }
                if (g.d(arrayList)) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (!arrayList4.contains((DeductEntity) it.next())) {
                            arrayList4.addAll(arrayList);
                        }
                    }
                }
                SQLiteDatabase writableDatabase = null;
                try {
                    writableDatabase = cn.mucang.android.jiakaoyi.framework.f.a.b().getWritableDatabase();
                    writableDatabase.beginTransaction();
                    c(arrayList4, writableDatabase);
                    l(arrayList3, writableDatabase);
                    v(arrayList2, writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    d(writableDatabase);
                } catch (Throwable th) {
                    try {
                        f.o("同步扣分报错：---------\n" + Log.getStackTraceString(th));
                        f.o("syncMyData 报错 : " + th.getLocalizedMessage());
                        t.h("DeductDataManager", "数据增量更新失败:" + th.getLocalizedMessage());
                        d(writableDatabase);
                    } catch (Throwable th2) {
                        d(writableDatabase);
                        j.c(writableDatabase);
                        throw th2;
                    }
                }
                j.c(writableDatabase);
                return true;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    private static List<Deduct> t(List<DeductEntity> list) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (g.b(list)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<DeductEntity> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().transform());
            }
            return arrayList;
        }
    }

    public static DeductEntity u(DeductEntity deductEntity, long j) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            DeductEntity deductEntity2 = null;
            if (!AccountUtils.b() && !AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                return null;
            }
            String strC = AccountUtils.c();
            cn.mucang.android.core.db.a aVarA = cn.mucang.android.jiakaoyi.framework.f.a.a();
            if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
                deductEntity2 = (DeductEntity) aVarA.n(DeductEntity.class, e.d("select * from t_deduct where code=? and exam_site_id=? order by position", String.valueOf(deductEntity.getCode()), String.valueOf(j)));
            } else {
                if (n0.e(strC)) {
                    return null;
                }
                List listY = aVarA.y(DeductEntity.class, e.d("select * from t_deduct where code=? and exam_site_id=? and user_id=? order by position", String.valueOf(deductEntity.getCode()), String.valueOf(j), strC));
                if (!g.b(listY)) {
                    deductEntity2 = (DeductEntity) listY.get(listY.size() - 1);
                    for (int i = 0; i < listY.size() - 1; i++) {
                        DeductEntity deductEntity3 = (DeductEntity) listY.get(i);
                        aVarA.h(deductEntity3.getClass(), deductEntity3.getId().longValue());
                    }
                }
            }
            if (deductEntity2 == null) {
                deductEntity2 = new DeductEntity();
                deductEntity2.copy(deductEntity, true);
            } else {
                deductEntity2.copy(deductEntity);
            }
            deductEntity2.setHadSetByUser(true);
            deductEntity2.setUserId(strC);
            aVarA.w(deductEntity2);
            return deductEntity2;
        }
    }

    private static void v(List<DeductEntity> list, SQLiteDatabase sQLiteDatabase) {
        if (g.b(list)) {
            return;
        }
        for (DeductEntity deductEntity : list) {
            sQLiteDatabase.update("t_deduct", e(deductEntity), "_id=?", new String[]{String.valueOf(deductEntity.getId())});
        }
    }

    private static String w(KeMu keMu) {
        return keMu.dir + "_Deduct_Version_Id";
    }

    private static List<DeductEntity> x(List<DeductEntity> list, long j) {
        if (g.b(list)) {
            return null;
        }
        String strC = AccountUtils.c();
        for (int size = list.size() - 1; size >= 0; size--) {
            DeductEntity deductEntity = list.get(size);
            if (deductEntity.isDelete()) {
                list.remove(size);
            } else {
                deductEntity.setUserId(strC);
                deductEntity.setExamSiteId(j);
            }
        }
        return list;
    }
}
