package cn.mucang.android.core.utils;

import android.graphics.PixelFormat;
import android.os.Build;
import android.view.WindowManager;
import cn.mucang.android.core.config.MucangConfig;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class PhoneInfoUtils {

    public static class PhoneInfo implements Serializable {
        private int colorDepth;
        private int hardwareConcurrency;
        private String language;
        private int pixelDepth;
        private float pixelRatio;
        private String platform;
        private int screenHeight;
        private int screenWidth;

        public int getColorDepth() {
            return this.colorDepth;
        }

        public int getHardwareConcurrency() {
            return this.hardwareConcurrency;
        }

        public String getLanguage() {
            return this.language;
        }

        public int getPixelDepth() {
            return this.pixelDepth;
        }

        public float getPixelRatio() {
            return this.pixelRatio;
        }

        public String getPlatform() {
            return this.platform;
        }

        public int getScreenHeight() {
            return this.screenHeight;
        }

        public int getScreenWidth() {
            return this.screenWidth;
        }

        public PhoneInfo setColorDepth(int i) {
            this.colorDepth = i;
            return this;
        }

        public PhoneInfo setHardwareConcurrency(int i) {
            this.hardwareConcurrency = i;
            return this;
        }

        public PhoneInfo setLanguage(String str) {
            this.language = str;
            return this;
        }

        public PhoneInfo setPixelDepth(int i) {
            this.pixelDepth = i;
            return this;
        }

        public PhoneInfo setPixelRatio(float f2) {
            this.pixelRatio = f2;
            return this;
        }

        public PhoneInfo setPlatform(String str) {
            this.platform = str;
            return this;
        }

        public PhoneInfo setScreenHeight(int i) {
            this.screenHeight = i;
            return this;
        }

        public PhoneInfo setScreenWidth(int i) {
            this.screenWidth = i;
            return this;
        }
    }

    public static PhoneInfo a() {
        PhoneInfo phoneInfo = new PhoneInfo();
        phoneInfo.setPixelRatio(c0.a().getDisplayMetrics().density);
        WindowManager windowManager = (WindowManager) MucangConfig.getContext().getSystemService("window");
        int iQ = o0.q(windowManager);
        int iP = o0.p(windowManager);
        phoneInfo.setScreenWidth(iQ);
        phoneInfo.setScreenHeight(iP);
        PixelFormat pixelFormat = new PixelFormat();
        PixelFormat.getPixelFormatInfo(1, pixelFormat);
        phoneInfo.setColorDepth(pixelFormat.bitsPerPixel);
        phoneInfo.setPixelDepth(pixelFormat.bitsPerPixel);
        if (Build.VERSION.SDK_INT < 21) {
            phoneInfo.setPlatform(Build.CPU_ABI);
        } else {
            phoneInfo.setPlatform(Build.SUPPORTED_ABIS[0]);
        }
        phoneInfo.setHardwareConcurrency(Runtime.getRuntime().availableProcessors());
        phoneInfo.setLanguage(Locale.getDefault().getLanguage());
        return phoneInfo;
    }
}
