package com.tencent.open.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import cn.mucang.sundial.library.device.BaseCamera;
import com.tencent.open.log.SLog;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class c {
    private static String c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f14147a;
    private d b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f14148d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f14149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WeakReference<Activity> f14150f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f14151g = new Runnable() { // from class: com.tencent.open.utils.c.2
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            boolean zA;
            SLog.v("AsynLoadImg", "saveFileRunnable:");
            String str = "share_qq_" + l.f(c.this.f14147a) + BaseCamera.SUFFIX_JPEG;
            String str2 = c.c + str;
            File file = new File(str2);
            Message messageObtainMessage = c.this.f14149e.obtainMessage();
            if (file.exists()) {
                messageObtainMessage.arg1 = 0;
                messageObtainMessage.obj = str2;
                SLog.v("AsynLoadImg", "file exists: time:" + (System.currentTimeMillis() - c.this.f14148d));
            } else {
                Bitmap bitmapA = c.a(c.this.f14147a);
                if (bitmapA != null) {
                    zA = c.this.a(bitmapA, str);
                } else {
                    SLog.v("AsynLoadImg", "saveFileRunnable:get bmp fail---");
                    zA = false;
                }
                if (zA) {
                    messageObtainMessage.arg1 = 0;
                    messageObtainMessage.obj = str2;
                } else {
                    messageObtainMessage.arg1 = 1;
                }
                SLog.v("AsynLoadImg", "file not exists: download time:" + (System.currentTimeMillis() - c.this.f14148d));
            }
            c.this.f14149e.sendMessage(messageObtainMessage);
        }
    };

    public c(Activity activity) {
        this.f14150f = new WeakReference<>(activity);
        this.f14149e = new Handler(activity.getMainLooper()) { // from class: com.tencent.open.utils.c.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                SLog.v("AsynLoadImg", "handleMessage:" + message.arg1);
                if (message.arg1 == 0) {
                    c.this.b.a(message.arg1, (String) message.obj);
                } else {
                    c.this.b.a(message.arg1, (String) null);
                }
            }
        };
    }

    public void a(String str, d dVar) {
        SLog.v("AsynLoadImg", "--save---");
        if (str != null && !str.equals("")) {
            if (!l.a()) {
                dVar.a(2, (String) null);
                return;
            }
            if (this.f14150f.get() != null) {
                Activity activity = this.f14150f.get();
                File fileH = l.h(activity, "Images");
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                if (fileH == null) {
                    SLog.e("AsynLoadImg", "externalImageFile is null");
                    dVar.a(2, (String) null);
                    return;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(i.c(activity) ? fileH.getAbsolutePath() : externalStorageDirectory.getAbsolutePath());
                    sb.append("/tmp/");
                    c = sb.toString();
                }
            }
            this.f14148d = System.currentTimeMillis();
            this.f14147a = str;
            this.b = dVar;
            new Thread(this.f14151g).start();
            return;
        }
        dVar.a(1, (String) null);
    }

    public boolean a(Bitmap bitmap, String str) throws Throwable {
        String str2 = c;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdir();
                }
                SLog.v("AsynLoadImg", "saveFile:" + str);
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(new File(str2 + str)));
                try {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, 80, bufferedOutputStream2);
                    bufferedOutputStream2.flush();
                    try {
                        bufferedOutputStream2.close();
                        return true;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return true;
                    }
                } catch (IOException e3) {
                    e = e3;
                    bufferedOutputStream = bufferedOutputStream2;
                    e.printStackTrace();
                    SLog.e("AsynLoadImg", "saveFile bmp fail---", e);
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Bitmap a(String str) {
        SLog.v("AsynLoadImg", "getbitmap:" + str);
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            SLog.v("AsynLoadImg", "image download finished." + str);
            return bitmapDecodeStream;
        } catch (IOException e2) {
            e2.printStackTrace();
            SLog.v("AsynLoadImg", "getbitmap bmp fail---");
            return null;
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
            SLog.v("AsynLoadImg", "getbitmap bmp fail---");
            return null;
        }
    }
}
