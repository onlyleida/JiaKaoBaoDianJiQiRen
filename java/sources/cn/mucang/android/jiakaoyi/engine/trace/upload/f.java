package cn.mucang.android.jiakaoyi.engine.trace.upload;

import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.trace.TraceExtraData;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3196a;
    public final File b;

    public f(String str) {
        this.f3196a = str;
        this.b = new File(str).getParentFile();
    }

    static /* synthetic */ boolean a(File file, String str) {
        return !str.endsWith(".zip");
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        Boolean bool;
        File[] fileArr;
        TraceExtraData traceExtraData;
        File[] fileArrListFiles;
        int i;
        FileWriter fileWriter;
        FileWriter fileWriter2;
        if (n0.e(this.f3196a) || !this.b.exists() || !this.b.isDirectory() || (bool = Boolean.TRUE) == w.s.e()) {
            return;
        }
        w.s.l(bool);
        char c = 1;
        if (this.b.getAbsolutePath().equals(this.f3196a) && (fileArrListFiles = this.b.listFiles(new FilenameFilter() { // from class: cn.mucang.android.jiakaoyi.engine.trace.upload.b
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                return f.a(file, str);
            }
        })) != null && fileArrListFiles.length > 0) {
            int length = fileArrListFiles.length;
            int i2 = 0;
            while (i2 < length) {
                File file = fileArrListFiles[i2];
                String absolutePath = file.getAbsolutePath();
                if (!file.isDirectory() || file.getAbsolutePath().equals(this.f3196a)) {
                    i = length;
                } else {
                    if (file.getName().startsWith("trace-temp-")) {
                        File[] fileArrListFiles2 = file.listFiles();
                        if (fileArrListFiles2 != null && fileArrListFiles2.length > 0) {
                            int length2 = fileArrListFiles2.length;
                            int i3 = 0;
                            while (i3 < length2) {
                                File file2 = fileArrListFiles2[i3];
                                if (file2.length() > 0) {
                                    try {
                                        fileWriter2 = new FileWriter(file2, true);
                                        try {
                                            fileWriter2.append((CharSequence) "]");
                                        } catch (IOException unused) {
                                        } catch (Throwable th) {
                                            th = th;
                                            fileWriter = fileWriter2;
                                            o.a(fileWriter);
                                            throw th;
                                        }
                                    } catch (IOException unused2) {
                                        fileWriter2 = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        fileWriter = null;
                                    }
                                    o.a(fileWriter2);
                                }
                                i3++;
                                length = length;
                            }
                        }
                        i = length;
                        String strReplace = absolutePath.replace("trace-temp-", "");
                        if (m.r(absolutePath, strReplace)) {
                            absolutePath = strReplace;
                        }
                    } else {
                        i = length;
                    }
                    if (d.a(absolutePath)) {
                        t.a("UploadTrace", "deleteSuccess " + m.g(absolutePath) + "  ; " + absolutePath);
                    }
                }
                i2++;
                length = i;
            }
        }
        if (!this.b.getAbsolutePath().equals(this.f3196a)) {
            if (!new File(this.f3196a + ".zip").exists() && d.a(this.f3196a)) {
                t.a("UploadTrace", "deleteSuccess " + m.g(this.f3196a) + "  ; " + this.f3196a);
            }
        }
        File[] fileArrListFiles3 = this.b.listFiles(new FilenameFilter() { // from class: cn.mucang.android.jiakaoyi.engine.trace.upload.a
            @Override // java.io.FilenameFilter
            public final boolean accept(File file3, String str) {
                return str.endsWith(".zip");
            }
        });
        if (fileArrListFiles3 != null && fileArrListFiles3.length > 0) {
            int length3 = fileArrListFiles3.length;
            int i4 = 0;
            while (i4 < length3) {
                File file3 = fileArrListFiles3[i4];
                try {
                    String name = file3.getName();
                    String[] strArrSplit = name.substring(0, name.lastIndexOf(".")).split("_");
                    if (strArrSplit.length >= 5) {
                        String str = strArrSplit[0];
                        String str2 = strArrSplit[c];
                        String str3 = strArrSplit[2];
                        String str4 = strArrSplit[3];
                        String str5 = strArrSplit[4];
                        fileArr = fileArrListFiles3;
                        try {
                            String str6 = strArrSplit.length > 5 ? strArrSplit[5] : "";
                            String strD = h0.d(str + str2 + str4 + str5);
                            if (!file3.exists() || file3.length() >= 1) {
                                try {
                                    traceExtraData = (TraceExtraData) JSON.parseObject(i0.g(strD, ""), TraceExtraData.class);
                                } catch (Exception unused3) {
                                    traceExtraData = null;
                                }
                                UploadTraceApi.UploadTraceResult uploadTraceResultB = new UploadTraceApi().b(file3, str, str2, str3, str4, str5, str6, traceExtraData);
                                cn.mucang.android.jiakaoyi.framework.log.f.o("轨迹上传:" + file3.getName() + "," + this.f3196a + "," + uploadTraceResultB.id);
                                if (n0.g(uploadTraceResultB.url)) {
                                    String absolutePath2 = file3.getAbsolutePath();
                                    t.a("UploadTrace", "deleteSuccess " + m.g(absolutePath2) + "  ; " + absolutePath2 + "  ; " + uploadTraceResultB.url);
                                    i0.h(strD);
                                    if (absolutePath2.contains(this.f3196a)) {
                                        LiveBus.d(e.class).l(new e(file3.getAbsolutePath(), uploadTraceResultB.id, uploadTraceResultB.clientContext));
                                    }
                                }
                            } else {
                                m.g(file3.getAbsolutePath());
                                i0.h(strD);
                                cn.mucang.android.jiakaoyi.framework.log.f.o("上传轨迹本地文件内容为空，直接删除");
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            cn.mucang.android.jiakaoyi.framework.log.f.o("上传轨迹报错：" + th.getMessage());
                        }
                    } else {
                        fileArr = fileArrListFiles3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    fileArr = fileArrListFiles3;
                }
                i4++;
                fileArrListFiles3 = fileArr;
                c = 1;
            }
        }
        w.s.l(Boolean.FALSE);
    }

    public f(File file) {
        this.b = file;
        this.f3196a = file.getAbsolutePath();
    }
}
