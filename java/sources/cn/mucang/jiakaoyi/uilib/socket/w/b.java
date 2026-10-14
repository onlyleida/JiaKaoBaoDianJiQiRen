package cn.mucang.jiakaoyi.uilib.socket.w;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.jiakaoyi.uilib.socket.model.CmdModel;
import cn.mucang.jiakaoyi.uilib.socket.u;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Process f9700a;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.socket.w.b$b, reason: collision with other inner class name */
    static final class C0161b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f9701a = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CmdModel cmdModel) {
        String strB = b(cmdModel);
        if (strB == null) {
            return;
        }
        f.f(cmdModel.cmd + ",id:" + cmdModel.id + ",执行结果:" + strB);
        if (u.u(strB, cmdModel)) {
            return;
        }
        f.f("响应结果发送失败:" + cmdModel.cmd + ",id:" + cmdModel.id);
    }

    private String b(CmdModel cmdModel) {
        String strTrim = cmdModel.cmd;
        if (n0.g(strTrim)) {
            strTrim = strTrim.trim();
            if (strTrim.startsWith("ping ") && !strTrim.contains("-c")) {
                strTrim = strTrim.replace("ping ", "ping -c 4 ");
            }
        }
        f.f("执行:" + strTrim + ",type:" + ((int) cmdModel.cmdType) + ",id:" + cmdModel.id);
        e();
        if (cmdModel.cmdType == 1) {
            f.f("结束当前执行的命令，不继续执行其他指令");
            return null;
        }
        if (n0.e(strTrim)) {
            f.f("命令行为空");
            return null;
        }
        try {
            Process processExec = Runtime.getRuntime().exec(strTrim);
            this.f9700a = processExec;
            InputStream inputStream = processExec.getInputStream();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null || i >= 100) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
                i++;
            }
            bufferedReader.close();
            inputStream.close();
            return sb.toString();
        } catch (IOException e2) {
            return "指令执行出错:" + strTrim + ",id=" + cmdModel.id + ",error:" + q0.d(e2);
        } finally {
            e();
        }
    }

    public static void c(final CmdModel cmdModel) {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.socket.w.a
            @Override // java.lang.Runnable
            public final void run() {
                b.C0161b.f9701a.a(cmdModel);
            }
        });
    }

    private void e() {
        Process process = this.f9700a;
        this.f9700a = null;
        if (process != null) {
            try {
                process.destroy();
            } catch (Throwable th) {
                f.f("process destroy error : " + th.getMessage());
            }
        }
    }

    private b() {
        this.f9700a = null;
    }
}
