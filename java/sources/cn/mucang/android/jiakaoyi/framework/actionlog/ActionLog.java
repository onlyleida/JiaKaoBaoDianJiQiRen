package cn.mucang.android.jiakaoyi.framework.actionlog;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.u;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.d.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J$\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u001a\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00172\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0007J\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\u0018\u0010 \u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00042\b\u0010!\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u0004J\u0018\u0010$\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00042\b\u0010%\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/actionlog/ActionLog;", "", "()V", "Deduct", "", "FileSize", "", "Normal", "Rule", "TAG", "simpleDateFormat", "Ljava/text/SimpleDateFormat;", "createFile", "Ljava/io/File;", "logFile", "getLogFile", "dir", "fileName", "isCheckSize", "", "isNumber", "str", "readDeductLogs", "", "Lcn/mucang/android/jiakaoyi/framework/actionlog/ActionLogEntity;", "examSiteId", "readLogFile", "readNormalLogs", "readRuleLogs", "write", "", "json", "writeDeduct", "deductList", "writeNormal", "actionDesc", "writeRules", "ruleList", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ActionLog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ActionLog f3431a = new ActionLog();
    private static final SimpleDateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.CHINA);

    private ActionLog() {
    }

    private final File a(File file) {
        try {
            if (file.createNewFile()) {
                return file;
            }
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private final File b(File file, String str, boolean z) {
        File fileA;
        File file2 = new File(file, str);
        if (!file2.exists()) {
            return a(file2);
        }
        if (!z || file2.length() <= 4194304) {
            return file2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(b.format(Long.valueOf(System.currentTimeMillis())));
        sb.append('_');
        sb.append(str);
        return (file2.renameTo(new File(file, sb.toString())) && (fileA = a(file2)) != null && fileA.exists()) ? fileA : file2;
    }

    static /* synthetic */ File c(ActionLog actionLog, File file, String str, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return actionLog.b(file, str, z);
    }

    private final boolean d(String str) {
        return Pattern.compile("^[-\\+]?[\\d]*$").matcher(str).matches();
    }

    private final synchronized List<String> g(File file) {
        if (file != null) {
            if (file.exists()) {
                try {
                    return TextStreamsKt.e(new FileReader(file));
                } catch (FileNotFoundException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
        }
        return null;
    }

    private final synchronized void j(final String str, final File file) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.d.a
            @Override // java.lang.Runnable
            public final void run() {
                ActionLog.k(file, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(File file, String json) {
        r.e(json, "$json");
        try {
            FileWriter fileWriter = new FileWriter(file, true);
            fileWriter.write(System.currentTimeMillis() + "");
            fileWriter.write(System.getProperty("line.separator"));
            fileWriter.write(json);
            fileWriter.write(System.getProperty("line.separator"));
            fileWriter.flush();
        } catch (IOException e2) {
            t.d("ActionLog", e2.getMessage());
        }
    }

    public final List<c> f(String examSiteId) {
        r.e(examSiteId, "examSiteId");
        try {
            File fileA = d.a(examSiteId);
            r.d(fileA, "getDeductLogDir(examSiteId)");
            List<String> listG = g(c(this, fileA, "deduct.log", false, 4, null));
            if (listG != null && (!listG.isEmpty())) {
                c cVar = null;
                ArrayList arrayList = new ArrayList();
                for (String str : listG) {
                    if (d(str)) {
                        cVar = new c();
                        cVar.f3432a = str;
                        arrayList.add(cVar);
                    } else if (cn.mucang.android.core.utils.n0.g(str) && cVar != null) {
                        try {
                            cVar.b = str;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                return CollectionsKt___CollectionsKt.A0(arrayList);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return u.j();
    }

    public final List<c> h() {
        try {
            File fileB = d.b();
            r.d(fileB, "getNormalLogDir()");
            List<String> listG = g(c(this, fileB, "normal.log", false, 4, null));
            if (listG != null && (!listG.isEmpty())) {
                c cVar = null;
                ArrayList arrayList = new ArrayList();
                for (String str : listG) {
                    if (d(str)) {
                        cVar = new c();
                        cVar.f3432a = str;
                        arrayList.add(cVar);
                    } else if (cn.mucang.android.core.utils.n0.g(str) && cVar != null) {
                        cVar.b = str;
                    }
                }
                return CollectionsKt___CollectionsKt.A0(arrayList);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return u.j();
    }

    public final List<c> i(String examSiteId) {
        r.e(examSiteId, "examSiteId");
        try {
            File fileC = d.c(examSiteId);
            r.d(fileC, "getRuleLogDir(examSiteId)");
            List<String> listG = g(c(this, fileC, "rule.log", false, 4, null));
            if (listG != null && (!listG.isEmpty())) {
                c cVar = null;
                ArrayList arrayList = new ArrayList();
                for (String str : listG) {
                    if (cn.mucang.android.core.utils.n0.g(str)) {
                        if (d(str)) {
                            cVar = new c();
                            cVar.f3432a = str;
                            arrayList.add(cVar);
                        } else if (cVar != null) {
                            try {
                                cVar.b = str;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                    }
                }
                return CollectionsKt___CollectionsKt.A0(arrayList);
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return u.j();
    }

    public final void l(String examSiteId, Object obj) {
        r.e(examSiteId, "examSiteId");
        if (obj != null) {
            try {
                File fileA = d.a(examSiteId);
                r.d(fileA, "getDeductLogDir(examSiteId)");
                File fileB = b(fileA, "deduct.log", true);
                if (fileB == null) {
                    return;
                }
                ActionLog actionLog = f3431a;
                String jSONString = JSON.toJSONString(obj);
                r.d(jSONString, "toJSONString(deductList)");
                actionLog.j(jSONString, fileB);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void m(String actionDesc) {
        r.e(actionDesc, "actionDesc");
        try {
            if (cn.mucang.android.core.utils.n0.g(actionDesc)) {
                File fileB = d.b();
                r.d(fileB, "getNormalLogDir()");
                File fileB2 = b(fileB, "normal.log", true);
                if (fileB2 == null) {
                    return;
                }
                f3431a.j(actionDesc, fileB2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void n(String examSiteId, Object obj) {
        r.e(examSiteId, "examSiteId");
        if (obj != null) {
            try {
                File fileC = d.c(examSiteId);
                r.d(fileC, "getRuleLogDir(examSiteId)");
                File fileB = b(fileC, "rule.log", true);
                if (fileB == null) {
                    return;
                }
                ActionLog actionLog = f3431a;
                String jSONString = JSON.toJSONString(obj);
                r.d(jSONString, "toJSONString(ruleList)");
                actionLog.j(jSONString, fileB);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
