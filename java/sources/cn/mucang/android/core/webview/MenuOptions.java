package cn.mucang.android.core.webview;

import cn.mucang.android.core.utils.n0;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MenuOptions implements Serializable {
    public static final String COPY = "copy";
    private static final String DEFAULT = "refresh,copy";
    public static final String REFRESH = "refresh";
    private StringBuilder options = new StringBuilder();

    public static MenuOptions form(String str) {
        MenuOptions menuOptions = new MenuOptions();
        if (n0.e(str)) {
            return menuOptions;
        }
        for (String str2 : str.split(",")) {
            menuOptions.add(str2);
        }
        return menuOptions;
    }

    public MenuOptions add(String str) {
        if (this.options.length() != 0) {
            this.options.append(",");
        }
        this.options.append(str);
        return this;
    }

    public String getOptions() {
        return this.options.length() == 0 ? DEFAULT : this.options.toString();
    }
}
