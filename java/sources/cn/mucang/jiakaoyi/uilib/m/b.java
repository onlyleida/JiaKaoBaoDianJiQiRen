package cn.mucang.jiakaoyi.uilib.m;

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
import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.actionlog.ActionLog;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.SchoolDeviceUtil;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.jiakaoyi.uilib.api.n;
import cn.mucang.jiakaoyi.uilib.model.RuleConfigEntity;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.sixents.sdk.base.SixentsCode;
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
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f9432a;
    private static final List<RuleConfigEntity> b = new ArrayList();
    private static final Map<Integer, RuleConfigEntity> c = new HashMap();

    private static String a(String[] strArr, int i, String str) {
        if (i >= strArr.length) {
            return str;
        }
        String str2 = strArr[i];
        if (str2 != null && !str2.equals(BuildConfig.COMMON_MODULE_COMMIT_ID) && !str2.equals("NULL")) {
            return str2;
        }
        StringBuilder sb = new StringBuilder();
        for (String str3 : strArr) {
            sb.append(str3);
            sb.append(",");
        }
        if (i == 1) {
            return str;
        }
        f.o("规则数据解析错误，索引号是:" + i + "，数据是 : " + ((Object) sb));
        return str;
    }

    private static List<RuleConfigEntity> b(KeMu keMu) {
        List<RuleConfigEntity> list = b;
        if (list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (RuleConfigEntity ruleConfigEntity : list) {
            if (keMu == null || (ruleConfigEntity.getStepId() >= keMu.min && ruleConfigEntity.getStepId() <= keMu.max)) {
                RuleConfigEntity ruleConfigEntity2 = new RuleConfigEntity();
                ruleConfigEntity2.copy(ruleConfigEntity, true);
                ruleConfigEntity2.setId(ruleConfigEntity.getId());
                arrayList.add(ruleConfigEntity2);
            }
        }
        return arrayList;
    }

    private static RuleConfigEntity c(Cursor cursor) {
        RuleConfigEntity ruleConfigEntity = new RuleConfigEntity();
        ruleConfigEntity.setId(Long.valueOf(cursor.getLong(cursor.getColumnIndex("_id"))));
        ruleConfigEntity.setDeductIds(cursor.getString(cursor.getColumnIndex("deduct_ids")));
        ruleConfigEntity.setMaxValue(cursor.getInt(cursor.getColumnIndex("max_value")));
        ruleConfigEntity.setMaxValue2(cursor.getInt(cursor.getColumnIndex("max_value2")));
        ruleConfigEntity.setMinValue(cursor.getInt(cursor.getColumnIndex("min_value")));
        ruleConfigEntity.setMinValue2(cursor.getInt(cursor.getColumnIndex("min_value2")));
        ruleConfigEntity.setExamSiteId(cursor.getLong(cursor.getColumnIndex("exam_site_id")));
        ruleConfigEntity.setOptions(cursor.getString(cursor.getColumnIndex("options")));
        ruleConfigEntity.setName(cursor.getString(cursor.getColumnIndex(Constant.PROTOCOL_WEBVIEW_NAME)));
        ruleConfigEntity.setRuleId(cursor.getInt(cursor.getColumnIndex("rule_id")));
        ruleConfigEntity.setStepId(cursor.getInt(cursor.getColumnIndex("step_id")));
        ruleConfigEntity.setUserId(cursor.getString(cursor.getColumnIndex("user_id")));
        ruleConfigEntity.setValue(cursor.getString(cursor.getColumnIndex("value")));
        if (ruleConfigEntity.getValue() == null) {
            ruleConfigEntity.setValue("0");
        }
        ruleConfigEntity.setValue2(cursor.getInt(cursor.getColumnIndex("value2")));
        ruleConfigEntity.setValueType(cursor.getInt(cursor.getColumnIndex("value_type")));
        ruleConfigEntity.setAreaCode(cursor.getString(cursor.getColumnIndex("area_code")));
        ruleConfigEntity.setAllowUserSet(cursor.getInt(cursor.getColumnIndex("allow_user_set")) == 1);
        ruleConfigEntity.setHadSetByUser(cursor.getInt(cursor.getColumnIndex("had_set_by_user")) == 1);
        ruleConfigEntity.setPosition(cursor.getInt(cursor.getColumnIndex("position")));
        ruleConfigEntity.setLevel(cursor.getInt(cursor.getColumnIndex(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL)));
        return ruleConfigEntity;
    }

    private static void d(List<RuleConfigEntity> list, SQLiteDatabase sQLiteDatabase) {
        if (g.b(list)) {
            return;
        }
        Iterator<RuleConfigEntity> it = list.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.delete("t_rule_config", "_id=?", new String[]{String.valueOf(it.next().getId())});
        }
    }

    private static void e(SQLiteDatabase sQLiteDatabase) {
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

    private static ContentValues f(RuleConfigEntity ruleConfigEntity) {
        ContentValues contentValues = new ContentValues();
        if (ruleConfigEntity.getId() != null) {
            contentValues.put("_id", ruleConfigEntity.getId());
        }
        contentValues.put("deduct_ids", ruleConfigEntity.getDeductIds());
        contentValues.put("max_value", Integer.valueOf(ruleConfigEntity.getMaxValue()));
        contentValues.put("max_value2", Integer.valueOf(ruleConfigEntity.getMaxValue2()));
        contentValues.put("min_value", Integer.valueOf(ruleConfigEntity.getMinValue()));
        contentValues.put("min_value2", Integer.valueOf(ruleConfigEntity.getMinValue2()));
        contentValues.put("exam_site_id", Long.valueOf(ruleConfigEntity.getExamSiteId()));
        contentValues.put("options", ruleConfigEntity.getOptions());
        contentValues.put(Constant.PROTOCOL_WEBVIEW_NAME, ruleConfigEntity.getName());
        contentValues.put("rule_id", Integer.valueOf(ruleConfigEntity.getRuleId()));
        contentValues.put("step_id", Integer.valueOf(ruleConfigEntity.getStepId()));
        contentValues.put("user_id", ruleConfigEntity.getUserId());
        contentValues.put("value", ruleConfigEntity.getValue());
        contentValues.put("value2", Integer.valueOf(ruleConfigEntity.getValue2()));
        contentValues.put("value_type", Integer.valueOf(ruleConfigEntity.getValueType()));
        contentValues.put("area_code", ruleConfigEntity.getAreaCode());
        contentValues.put("allow_user_set", Integer.valueOf(ruleConfigEntity.isAllowUserSet() ? 1 : 0));
        contentValues.put("had_set_by_user", Integer.valueOf(ruleConfigEntity.isHadSetByUser() ? 1 : 0));
        contentValues.put("position", Integer.valueOf(ruleConfigEntity.getPosition()));
        contentValues.put(DBHelpTool.RecordEntry.COLUMN_NAME_LEVEL, Integer.valueOf(ruleConfigEntity.getLevel()));
        return contentValues;
    }

    private static List<RuleConfigEntity> g(long j) {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return n("select * from t_rule_config where exam_site_id=? order by position", String.valueOf(j));
        }
        String strC = AccountUtils.c();
        if (n0.e(strC)) {
            return null;
        }
        return n("select * from t_rule_config where exam_site_id=? and user_id=? order by position", String.valueOf(j), strC);
    }

    private static List<RuleConfigEntity> h(KeMu keMu) {
        List<RuleConfigEntity> list = b;
        if (list.size() > 0) {
            return b(keMu);
        }
        List<RuleConfigEntity> listN = n("select * from t_rule_config where exam_site_id=?  order by position", String.valueOf(-999L));
        if (g.d(listN)) {
            list.clear();
            list.addAll(listN);
            for (RuleConfigEntity ruleConfigEntity : list) {
                c.put(Integer.valueOf(ruleConfigEntity.getRuleId()), ruleConfigEntity);
            }
        } else {
            f.o("rule : 本地基础数据获取为空!!!!!");
        }
        return b(keMu);
    }

    private static List<RuleConfigEntity> i(long j, KeMu keMu) {
        if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
            return n("select * from t_rule_config where exam_site_id=? and step_id <= ? and step_id >= ? order by position", String.valueOf(j), String.valueOf(keMu.max), String.valueOf(keMu.min));
        }
        String strC = AccountUtils.c();
        if (n0.e(strC)) {
            return null;
        }
        return n("select * from t_rule_config where exam_site_id=? and user_id=? order by position", String.valueOf(j), strC);
    }

    public static RuleConfig j(long j, String str) {
        List<RuleConfigEntity> listN;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
                listN = n("select * from t_rule_config where exam_site_id=? and rule_id=? order by position", String.valueOf(j), str);
            } else {
                String strC = AccountUtils.c();
                if (n0.e(strC)) {
                    return null;
                }
                listN = n("select * from t_rule_config where exam_site_id=? and user_id=? and rule_id=? order by position", String.valueOf(j), strC, str);
            }
            if (listN == null || listN.isEmpty()) {
                listN = n("select * from t_rule_config where exam_site_id=? and rule_id=? order by position", String.valueOf(SixentsCode.SIXENTS_RET_UNKNOWN), str);
            }
            List<RuleConfig> listV = v(listN);
            if (!g.d(listV)) {
                return null;
            }
            return listV.get(0);
        }
    }

    private static List<RuleConfigEntity> k(long j, KeMu keMu) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            try {
                if (j == -999) {
                    return h(keMu);
                }
                if (!AccountUtils.b() && !AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                    return null;
                }
                List<RuleConfigEntity> listH = h(keMu);
                o(listH, g(j));
                return y(listH, j);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static List<RuleConfig> l(long j, KeMu keMu) {
        List<RuleConfig> listV;
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            listV = v(k(j, keMu));
        }
        return listV;
    }

    private static void m(List<RuleConfigEntity> list, SQLiteDatabase sQLiteDatabase) {
        if (g.b(list)) {
            return;
        }
        Iterator<RuleConfigEntity> it = list.iterator();
        while (it.hasNext()) {
            sQLiteDatabase.insert("t_rule_config", null, f(it.next()));
        }
    }

    private static List<RuleConfigEntity> n(String str, String... strArr) {
        SQLiteDatabase readableDatabase;
        Cursor cursorRawQuery;
        try {
            readableDatabase = cn.mucang.android.jiakaoyi.framework.f.a.b().getReadableDatabase();
            try {
                cursorRawQuery = readableDatabase.rawQuery(str, strArr);
                try {
                    ArrayList arrayList = new ArrayList();
                    while (cursorRawQuery.moveToNext()) {
                        arrayList.add(c(cursorRawQuery));
                    }
                    if (cursorRawQuery != null) {
                        j.b(cursorRawQuery);
                    }
                    if (readableDatabase != null) {
                        j.c(readableDatabase);
                    }
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    try {
                        f.o("listRules 报错, sql = " + str + " , param = " + Arrays.toString(strArr) + " , error = " + th.getLocalizedMessage());
                        return null;
                    } finally {
                        if (cursorRawQuery != null) {
                            j.b(cursorRawQuery);
                        }
                        if (readableDatabase != null) {
                            j.c(readableDatabase);
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                cursorRawQuery = null;
            }
        } catch (Throwable th3) {
            th = th3;
            readableDatabase = null;
            cursorRawQuery = null;
        }
    }

    private static List<RuleConfigEntity> o(List<RuleConfigEntity> list, List<RuleConfigEntity> list2) {
        if (g.b(list) || g.b(list2)) {
            return list;
        }
        HashMap map = new HashMap();
        if (g.d(list2)) {
            for (RuleConfigEntity ruleConfigEntity : list2) {
                map.put(Integer.valueOf(ruleConfigEntity.getRuleId()), ruleConfigEntity);
            }
        }
        for (RuleConfigEntity ruleConfigEntity2 : list) {
            RuleConfigEntity ruleConfigEntity3 = (RuleConfigEntity) map.get(Integer.valueOf(ruleConfigEntity2.getRuleId()));
            if (ruleConfigEntity3 != null) {
                ruleConfigEntity2.copy(ruleConfigEntity3);
            }
        }
        return list;
    }

    private static RuleConfigEntity p(String[] strArr) {
        RuleConfigEntity ruleConfigEntity = new RuleConfigEntity();
        ruleConfigEntity.setExamSiteId(-999L);
        ruleConfigEntity.setStepId(q(a(strArr, 0, "3"), Step.K3_Global.type));
        ruleConfigEntity.setDeductIds(a(strArr, 1, ""));
        ruleConfigEntity.setRuleId(q(a(strArr, 2, "0"), 0));
        ruleConfigEntity.setValueType(q(a(strArr, 3, "1"), 1));
        ruleConfigEntity.setAllowUserSet(Boolean.parseBoolean(a(strArr, 4, "true")));
        ruleConfigEntity.setName(a(strArr, 5, "defaultName"));
        ruleConfigEntity.setValue(a(strArr, 6, "0"));
        ruleConfigEntity.setValue2(q(a(strArr, 7, "0"), 0));
        ruleConfigEntity.setMinValue(q(a(strArr, 8, "0"), 0));
        ruleConfigEntity.setMaxValue(q(a(strArr, 9, "100"), 0));
        ruleConfigEntity.setMinValue2(q(a(strArr, 10, "0"), 0));
        ruleConfigEntity.setMaxValue2(q(a(strArr, 11, "0"), 0));
        ruleConfigEntity.setOptions(a(strArr, 12, "0"));
        ruleConfigEntity.setLevel(q(a(strArr, 13, "0"), 0));
        return ruleConfigEntity;
    }

    private static int q(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (Throwable unused) {
            return i;
        }
    }

    private static boolean r(KeMu keMu, boolean z) throws Throwable {
        int i;
        if (keMu == KeMu.K3) {
            i = cn.mucang.android.jiakaoyi.framework.f.a.b;
        } else if (keMu == KeMu.K2) {
            i = cn.mucang.android.jiakaoyi.framework.f.a.c;
        } else {
            i = keMu == KeMu.Moto ? cn.mucang.android.jiakaoyi.framework.f.a.f3448e : cn.mucang.android.jiakaoyi.framework.f.a.f3447d;
        }
        if (i <= 0) {
            return true;
        }
        int iD = i0.d(x(keMu), -1);
        boolean zB = g.b(h(keMu));
        if (iD == i && !zB) {
            f.o("rule : 已经保存过全国数据,version=" + iD + ",本地version=" + i + ",kemu=" + keMu.name);
            return true;
        }
        if (zB) {
            f.o("rule : 数据库发生错误，重新写入基础数据,version=" + iD + ",本地version=" + i + ",kemu=" + keMu.name);
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            t(keMu, i);
            t.h("RuleConfigDataManager", "第一次保存规则数据的时间:" + (System.currentTimeMillis() - jCurrentTimeMillis));
            i0.k(x(keMu), i);
            return true;
        } catch (IOException e2) {
            String str = "ruleConfig数据初始化失败,version:" + iD + " kemu:" + keMu + " RequestVersion:" + i + " , error=" + e2.getLocalizedMessage();
            f.o(str);
            t.d("RuleConfigDataManager", str);
            return false;
        } catch (IllegalStateException unused) {
            if (z) {
                SystemClock.sleep(200L);
                r(keMu, false);
            }
            return false;
        }
    }

    public static boolean s() {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (System.currentTimeMillis() - f9432a < DefaultDrmSessionManager.DEFAULT_SESSION_KEEPALIVE_MS) {
                return false;
            }
            boolean zR = r(KeMu.K2, true);
            boolean zR2 = r(KeMu.K3, true);
            boolean zR3 = r(KeMu.B2, true);
            boolean zR4 = r(KeMu.Moto, true);
            if (!zR || !zR2 || !zR3 || !zR4) {
                return true;
            }
            h(null);
            f9432a = System.currentTimeMillis();
            return true;
        }
    }

    private static void t(KeMu keMu, int i) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        String str = keMu.dir + "/sdata/rv_" + i + ".data";
        f.o("开始读取内置 全国规则数据");
        InputStream inputStreamOpen = MucangConfig.getContext().getAssets().open(str);
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
                            List<RuleConfigEntity> listH = h(keMu);
                            try {
                                writableDatabase = cn.mucang.android.jiakaoyi.framework.f.a.b().getWritableDatabase();
                                writableDatabase.beginTransaction();
                                d(listH, writableDatabase);
                                m(arrayList, writableDatabase);
                                writableDatabase.setTransactionSuccessful();
                                b.clear();
                                e(writableDatabase);
                                j.c(writableDatabase);
                                o.a(inputStreamOpen);
                                o.a(bufferedReader2);
                                o.a(byteArrayInputStream);
                                return;
                            } catch (Throwable th) {
                                try {
                                    f.o("ruleConfig syncGlobalVersionData , error = " + th.getLocalizedMessage());
                                    throw th;
                                } catch (Throwable th2) {
                                    e(writableDatabase);
                                    j.c(writableDatabase);
                                    throw th2;
                                }
                            }
                        }
                        String[] strArrSplit = line.split("%_%", line.length());
                        t.d("RuleConfigDataManager", line + " , " + p(strArrSplit));
                        arrayList.add(p(strArrSplit));
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

    public static boolean u(Long l, boolean z, KeMu keMu) throws ApiException, IOException, InternalException, HttpException {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (!AccountUtils.b() && !AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                return false;
            }
            f.o("开始拉取服务端规则，examSiteId：" + l);
            List<RuleConfigEntity> listN = new n(keMu).n(l.longValue());
            if (z) {
                ActionLog.f3431a.m("记录一次重置拉取服务器规则操作");
            }
            if (g.b(listN)) {
                f.o("服务器个人规则是null");
                return true;
            }
            f.o("服务器个人规则：" + JSON.toJSONString(listN));
            String strC = AccountUtils.c();
            List<RuleConfigEntity> listI = i(l.longValue(), keMu);
            ArrayList arrayList = new ArrayList();
            SQLiteDatabase writableDatabase = null;
            if (c.isEmpty()) {
                f.o("非法初始化globalData");
                h(null);
            }
            for (RuleConfigEntity ruleConfigEntity : listN) {
                ruleConfigEntity.setUserId(strC);
                ruleConfigEntity.setExamSiteId(l.longValue());
                RuleConfigEntity ruleConfigEntity2 = c.get(Integer.valueOf(ruleConfigEntity.getRuleId()));
                if (ruleConfigEntity2 == null) {
                    f.o("服务器包含了本地没有的规则:" + ruleConfigEntity.getRuleId() + "," + ruleConfigEntity.getName());
                } else if (ruleConfigEntity2.getValueType() != ruleConfigEntity.getValueType()) {
                    f.o("对比服务器规则类型不一样 ruleId:" + ruleConfigEntity2.getRuleId() + " 数据库类型:" + ruleConfigEntity2.getValueType() + " , 服务器类型:" + ruleConfigEntity.getValueType());
                    if (MucangConfig.v()) {
                        throw new Error("对比服务器规则类型不一样 ruleId:" + ruleConfigEntity2.getRuleId() + " 数据库类型:" + ruleConfigEntity2.getValueType() + " , 服务器类型:" + ruleConfigEntity.getValueType());
                    }
                } else {
                    if (ruleConfigEntity2.getValueType() == 4) {
                        if (Integer.parseInt(ruleConfigEntity.getValue()) >= ruleConfigEntity2.getOptionList().size()) {
                            f.o("warning---新版本的options比当前版本多，请更新版本来兼容, ruleId=" + ruleConfigEntity2.getRuleId() + " , 数据库 options=" + ruleConfigEntity2.getOptions() + ", 服务器 options=" + ruleConfigEntity.getOptions());
                        } else {
                            ruleConfigEntity.setOptions(ruleConfigEntity2.getOptions());
                        }
                    }
                    ruleConfigEntity.setLevel(ruleConfigEntity2.getLevel());
                    arrayList.add(ruleConfigEntity);
                }
            }
            try {
                writableDatabase = cn.mucang.android.jiakaoyi.framework.f.a.b().getWritableDatabase();
                writableDatabase.beginTransaction();
                d(listI, writableDatabase);
                m(arrayList, writableDatabase);
                writableDatabase.setTransactionSuccessful();
                e(writableDatabase);
            } catch (Throwable th) {
                try {
                    f.o("同步规则报错：---------\n" + Log.getStackTraceString(th));
                    f.o("syncMyData error : " + th.getLocalizedMessage());
                    t.d("RuleConfigDataManager", "数据增量更新失败:" + th.getLocalizedMessage());
                    e(writableDatabase);
                } catch (Throwable th2) {
                    e(writableDatabase);
                    j.c(writableDatabase);
                    throw th2;
                }
            }
            j.c(writableDatabase);
            return true;
        }
    }

    private static List<RuleConfig> v(List<RuleConfigEntity> list) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            if (g.b(list)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<RuleConfigEntity> it = list.iterator();
            while (it.hasNext()) {
                RuleConfig ruleConfigTransform = it.next().transform();
                if (ruleConfigTransform != null) {
                    arrayList.add(ruleConfigTransform);
                }
            }
            return arrayList;
        }
    }

    public static RuleConfigEntity w(RuleConfigEntity ruleConfigEntity, long j) {
        synchronized (cn.mucang.android.jiakaoyi.framework.consts.a.f3429a) {
            RuleConfigEntity ruleConfigEntity2 = null;
            if (!AccountUtils.b() && !AppUtils.k() && !SchoolDeviceUtil.f3622a.a()) {
                return null;
            }
            cn.mucang.android.core.db.a aVarA = cn.mucang.android.jiakaoyi.framework.f.a.a();
            String strC = AccountUtils.c();
            if (AppUtils.k() || SchoolDeviceUtil.f3622a.a()) {
                ruleConfigEntity2 = (RuleConfigEntity) aVarA.n(RuleConfigEntity.class, e.d("select * from t_rule_config where rule_id=? and exam_site_id=? order by position", String.valueOf(ruleConfigEntity.getRuleId()), String.valueOf(j)));
            } else {
                if (n0.e(strC)) {
                    return null;
                }
                List listY = aVarA.y(RuleConfigEntity.class, e.d("select * from t_rule_config where rule_id=? and exam_site_id=? and user_id=? order by position", String.valueOf(ruleConfigEntity.getRuleId()), String.valueOf(j), strC));
                if (!g.b(listY)) {
                    ruleConfigEntity2 = (RuleConfigEntity) listY.get(listY.size() - 1);
                    for (int i = 0; i < listY.size() - 1; i++) {
                        RuleConfigEntity ruleConfigEntity3 = (RuleConfigEntity) listY.get(i);
                        aVarA.h(ruleConfigEntity3.getClass(), ruleConfigEntity3.getId().longValue());
                    }
                }
            }
            if (ruleConfigEntity2 == null) {
                ruleConfigEntity2 = new RuleConfigEntity();
                ruleConfigEntity2.copy(ruleConfigEntity, true);
            } else {
                ruleConfigEntity2.copy(ruleConfigEntity);
                ruleConfigEntity2.setOptions(ruleConfigEntity.getOptions());
            }
            ruleConfigEntity2.setExamSiteId(j);
            ruleConfigEntity2.setHadSetByUser(true);
            ruleConfigEntity2.setUserId(strC);
            aVarA.w(ruleConfigEntity2);
            return ruleConfigEntity2;
        }
    }

    private static String x(KeMu keMu) {
        return keMu.dir + "_Rule_Config_Version_Id";
    }

    private static List<RuleConfigEntity> y(List<RuleConfigEntity> list, long j) {
        if (g.b(list)) {
            return null;
        }
        String strC = AccountUtils.c();
        for (RuleConfigEntity ruleConfigEntity : list) {
            ruleConfigEntity.setUserId(strC);
            ruleConfigEntity.setExamSiteId(j);
        }
        return list;
    }
}
