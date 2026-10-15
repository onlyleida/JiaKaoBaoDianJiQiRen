package local.jiakao;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputType;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** New local debugging UI. Does not implement or claim to restore Unity teaching. */
public final class LocalWorkbenchActivity extends Activity {
    private static final String ORIGIN = "http://127.0.0.1:8765";
    // Keep API-test sessions separate from the original client's login state.
    private static final String DEVICE = "local-workbench";
    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private final ArrayList<Button> networkButtons = new ArrayList<>();
    private TextView serviceStatus, resourceStatus, sessionStatus;
    private String token = "";

    public static void open(Activity splash, int failedType) {
        if (splash.isFinishing() || splash.isDestroyed()) return;
        splash.startActivity(new Intent(splash, LocalWorkbenchActivity.class)
                .putExtra("failedType", failedType));
        splash.finish();
    }

    public static boolean handleBack(Activity activity) {
        if (!activity.getIntent().getBooleanExtra("localWorkbenchReturn", false)) return false;
        activity.finish();
        return true;
    }

    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        LinearLayout page = new LinearLayout(this);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(dp(28), dp(18), dp(28), dp(24));
        page.setBackgroundColor(Color.rgb(244, 247, 251));
        ScrollView scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        scroll.addView(page);
        setContentView(scroll);
        text(page, "本地调试工作台", 28, Color.rgb(24, 48, 84));
        text(page, "新增本地界面 · Unity " + getIntent().getIntExtra("failedType", 100)
                + " 加载未完成，原版教学尚不可用", 17, Color.rgb(143, 83, 17));
        serviceStatus = text(page, "服务：正在检查…", 18, Color.DKGRAY);
        resourceStatus = text(page, "资源：正在检查…", 17, Color.DKGRAY);
        sessionStatus = text(page, "接口会话：未登录（与原版登录独立）", 18, Color.DKGRAY);

        LinearLayout apiRow = row(page);
        networkButton(apiRow, "刷新服务状态", this::refresh);
        networkButton(apiRow, "本地接口登录", this::loginDialog);
        networkButton(apiRow, "检查接口会话", this::checkSession);
        networkButton(apiRow, "退出接口会话", this::logout);
        LinearLayout nativeRow = row(page);
        button(nativeRow, "原生设置", () -> openOriginal("cn.mucang.jiakaoyi.uilib.ui.setting.SettingActivity", false));
        button(nativeRow, "原生登录页", () -> openOriginal("cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity", false));
        button(nativeRow, "重试原启动", () -> openOriginal("cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TeachSplashActivity", true));
        text(page, "默认本地测试码：12345678。接口测试会话不会启用原版教学，也不会写入原版账号。", 16, Color.DKGRAY);
        text(page, "下一步：向本地服务导入兼容的 Unity 100 / 101 文件，再重试原启动。"
                + "场地、教学方案和车辆硬件仍需单独准备。", 16, Color.DKGRAY);
        text(page, "服务地址：" + ORIGIN + "   ·   蓝牙模拟已启用，未验证真实车辆或教学评分。", 15, Color.GRAY);
        refresh();
    }

    private int dp(int value) { return Math.round(value * getResources().getDisplayMetrics().density); }
    private TextView text(LinearLayout parent, String value, int size, int color) {
        TextView view = new TextView(this);
        view.setText(value);
        view.setTextSize(size);
        view.setTextColor(color);
        view.setPadding(0, dp(6), 0, dp(6));
        parent.addView(view);
        return view;
    }
    private LinearLayout row(LinearLayout parent) {
        LinearLayout row = new LinearLayout(this);
        parent.addView(row, new LinearLayout.LayoutParams(-1, -2));
        return row;
    }
    private Button button(LinearLayout row, String title, Runnable action) {
        Button button = new Button(this);
        button.setText(title);
        button.setTextSize(17);
        button.setAllCaps(false);
        button.setOnClickListener(view -> action.run());
        LinearLayout.LayoutParams layout = new LinearLayout.LayoutParams(0, dp(56), 1);
        layout.setMargins(0, dp(6), dp(8), dp(6));
        row.addView(button, layout);
        return button;
    }
    private void networkButton(LinearLayout row, String title, Runnable action) {
        networkButtons.add(button(row, title, action));
    }

    private interface Request { void run() throws Exception; }
    private void request(Request action) {
        for (Button button : networkButtons) button.setEnabled(false);
        worker.execute(() -> {
            try { action.run(); }
            catch (Exception error) {
                // Never display/log response payloads or tokens.
                ui(() -> new AlertDialog.Builder(this).setTitle("本地请求未完成")
                        .setMessage(error instanceof LocalError ? error.getMessage()
                                : "无法连接本地服务。请启动 server/local_server.py，并设置 adb reverse tcp:8765 tcp:8765。")
                        .setPositiveButton("确定", null).show());
            } finally { ui(() -> { for (Button button : networkButtons) button.setEnabled(true); }); }
        });
    }
    private void ui(Runnable action) {
        runOnUiThread(() -> { if (!isFinishing() && !isDestroyed()) action.run(); });
    }

    private void refresh() {
        serviceStatus.setText("服务：正在检查…");
        request(() -> {
            try {
                JSONObject health = call("/__local/health", null, false).getJSONObject("data");
                JSONArray missing = health.getJSONArray("missingUnityTypes");
                String resources = missing.length() == 0
                        ? "资源：100 / 101 文件已登记；格式与运行兼容性仍需验证。"
                        : "资源：缺少或损坏的 Unity 文件 " + missing + "。无法恢复原版教学主页。";
                ui(() -> {
                    serviceStatus.setText("服务：已连接 · " + health.optInt("implementedRoutes") + " 条业务接口");
                    resourceStatus.setText(resources);
                });
            } catch (Exception error) {
                ui(() -> { serviceStatus.setText("服务：未连接"); resourceStatus.setText("资源：服务不可达，状态未知"); });
                throw error;
            }
        });
    }
    private void loginDialog() {
        EditText input = new EditText(this);
        input.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_VARIATION_PASSWORD);
        input.setFilters(new InputFilter[]{new InputFilter.LengthFilter(18)});
        input.setHint("输入本地测试码 12345678");
        new AlertDialog.Builder(this).setTitle("本地接口登录").setView(input)
                .setNegativeButton("取消", null).setPositiveButton("登录", (dialog, which) -> {
                    String code = input.getText().toString();
                    request(() -> {
                        String body = "loginType=MOBILE_OR_IDCARD&deviceType=ROBOT&data="
                                + encode(new JSONObject().put("value", code).toString());
                        JSONObject user = call("/api/open/login/submit.htm", body, false).getJSONObject("data");
                        token = user.getString("xyToken");
                        ui(() -> sessionStatus.setText("接口会话：已登录 · " + user.optString("name") + "（独立测试会话）"));
                    });
                }).show();
    }
    private void checkSession() {
        request(() -> {
            try {
                call("/api/open/user/check-logout.htm", null, true);
                ui(() -> sessionStatus.setText("接口会话：有效（原版教学尚不可用）"));
            } catch (LocalError error) {
                if (error.expired) {
                    token = "";
                    ui(() -> sessionStatus.setText("接口会话：未登录或已过期"));
                } else throw error;
            }
        });
    }
    private void logout() {
        request(() -> {
            call("/api/open/login/logout.htm", null, true);
            token = "";
            ui(() -> sessionStatus.setText("接口会话：已退出"));
        });
    }
    private static String encode(String value) throws Exception { return URLEncoder.encode(value, "UTF-8"); }
    private JSONObject call(String path, String body, boolean authenticated) throws Exception {
        if (authenticated && token.isEmpty()) throw new LocalError("请先登录本地接口会话。", true);
        URL url = new URL(ORIGIN + path + "?deviceNum=" + DEVICE
                + (authenticated ? "&xyToken=" + encode(token) : ""));
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setConnectTimeout(6000);
        connection.setReadTimeout(6000);
        connection.setInstanceFollowRedirects(false);
        try {
            if (body != null) {
                connection.setRequestMethod("POST");
                connection.setDoOutput(true);
                connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
                byte[] bytes = body.getBytes("UTF-8");
                connection.setFixedLengthStreamingMode(bytes.length);
                try (java.io.OutputStream out = connection.getOutputStream()) { out.write(bytes); }
            }
            int status = connection.getResponseCode();
            if (status >= 300 && status < 400) throw new LocalError("本地服务返回了重定向，已停止请求。", false);
            InputStream stream = status >= 400 ? connection.getErrorStream() : connection.getInputStream();
            if (stream == null) throw new LocalError("本地服务没有返回数据。", false);
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            try (InputStream in = stream) {
                byte[] buffer = new byte[4096];
                int count;
                while ((count = in.read(buffer)) != -1) {
                    if (bytes.size() + count > 1024 * 1024) throw new LocalError("本地响应过大。", false);
                    bytes.write(buffer, 0, count);
                }
            }
            JSONObject result = new JSONObject(bytes.toString("UTF-8"));
            if (status != 200 || !result.optBoolean("success")) {
                boolean expired = result.optInt("errorCode") == 44;
                throw new LocalError(expired ? "接口会话未登录或已过期。"
                        : status == 401 ? "本地测试码不正确。" : "接口返回错误（HTTP " + status + "）。", expired);
            }
            return result;
        } finally { connection.disconnect(); }
    }
    private static class LocalError extends Exception {
        final boolean expired;
        LocalError(String message, boolean expired) { super(message); this.expired = expired; }
    }
    private void openOriginal(String name, boolean finish) {
        try {
            startActivity(new Intent().setClassName(getPackageName(), name).putExtra("key.loadType", 0)
                    .putExtra("localWorkbenchReturn", !finish));
            if (finish) finish();
        } catch (Exception error) {
            new AlertDialog.Builder(this).setTitle("页面未打开").setMessage("请查看运行日志以定位原生页面错误。")
                    .setPositiveButton("确定", null).show();
        }
    }
    @Override protected void onDestroy() { worker.shutdownNow(); super.onDestroy(); }
}
