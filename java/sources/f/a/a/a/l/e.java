package f.a.a.a.l;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.o;
import cn.mucang.android.core.utils.t;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static File a() {
        return MucangConfig.getContext().getExternalFilesDir(CustomLogInfoBuilder.LOG_TYPE);
    }

    public static File b() {
        return new File(a(), "exception.txt");
    }

    public static void c(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        File fileB = b();
        BufferedWriter bufferedWriter = null;
        try {
            fileB.getParentFile().mkdirs();
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileB)));
            try {
                bufferedWriter2.write(new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").format(new Date()) + "\n" + stringWriter.toString());
                bufferedWriter2.flush();
            } catch (Exception e2) {
                e = e2;
                bufferedWriter = bufferedWriter2;
                t.c(CustomLogInfoBuilder.LOG_TYPE, e);
                o.a(bufferedWriter);
            }
        } catch (Exception e3) {
            e = e3;
        }
    }
}
