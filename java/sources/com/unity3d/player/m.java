package com.unity3d.player;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.AsyncTask;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import cn.mucang.android.core.api.upload.FileUploadApi;
import com.google.common.net.HttpHeaders;
import com.tencent.connect.common.Constants;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Timer;
import java.util.TimerTask;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class m extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    UnityPlayer f14317a;
    l b;
    Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f14318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    VideoView f14319e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ImageView f14320f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ImageView f14321g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    TextView f14322h;
    Timer i;
    int j;
    int k;
    boolean l;
    TimerTask m;

    class a extends AsyncTask {
        private String[] b;

        a() {
        }

        private static void a(String str) throws Throwable {
            HttpURLConnection httpURLConnection = null;
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL("https://splash.unity.cn/api/diagnosis").openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
                    httpURLConnection2.setRequestMethod(Constants.HTTP_POST);
                    httpURLConnection2.setRequestProperty(HttpHeaders.CONTENT_TYPE, FileUploadApi.TYPE_APPLICATION_JSON);
                    httpURLConnection2.setDoOutput(true);
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type", "tracking");
                    jSONObject.put("reason", str);
                    jSONObject.put(Constants.PARAM_PLATFORM, "android");
                    byte[] bytes = jSONObject.toString().getBytes();
                    outputStream.write(bytes, 0, bytes.length);
                    outputStream.flush();
                    outputStream.close();
                    httpURLConnection2.getResponseCode();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                } catch (Exception unused) {
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public final Void doInBackground(String... strArr) throws Throwable {
            HttpURLConnection httpURLConnection;
            this.b = strArr;
            HttpURLConnection httpURLConnection2 = null;
            if (strArr == null) {
                return null;
            }
            int i = 0;
            while (true) {
                String[] strArr2 = this.b;
                if (i >= strArr2.length) {
                    return null;
                }
                String str = strArr2[i];
                if (str != null) {
                    try {
                        httpURLConnection = (HttpURLConnection) new URL(m.f(str)).openConnection();
                        try {
                            try {
                                httpURLConnection.setConnectTimeout(CMAESOptimizer.DEFAULT_MAXITERATIONS);
                                httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                                int responseCode = httpURLConnection.getResponseCode();
                                if (responseCode >= 400) {
                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
                                    String str2 = "";
                                    while (true) {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        str2 = str2 + line;
                                    }
                                    a(str + " - " + responseCode + " - " + str2);
                                    bufferedReader.close();
                                }
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                            } catch (Exception e2) {
                                e = e2;
                                a(str + " - " + e.toString());
                                if (httpURLConnection != null) {
                                }
                                i++;
                            }
                        } catch (Throwable th) {
                            th = th;
                            httpURLConnection2 = httpURLConnection;
                            if (httpURLConnection2 != null) {
                                httpURLConnection2.disconnect();
                            }
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        httpURLConnection = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                i++;
            }
        }
    }

    public m(Context context, UnityPlayer unityPlayer, l lVar) {
        super(context);
        this.f14318d = 5;
        this.j = 0;
        this.k = 5;
        this.m = new TimerTask() { // from class: com.unity3d.player.m.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                m.this.f14317a.runOnUiThread(new Runnable() { // from class: com.unity3d.player.m.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        m mVar = m.this;
                        if (mVar.l) {
                            mVar.k--;
                            mVar.f14322h.setText("Skip " + m.this.k);
                            m mVar2 = m.this;
                            if (mVar2.k <= 0) {
                                mVar2.i();
                            }
                        }
                    }
                });
            }
        };
        this.c = context;
        this.f14317a = unityPlayer;
        this.b = lVar;
        d();
        e();
        g();
    }

    private static String a(String str, String str2) {
        if (str == null || str.indexOf(63) == -1) {
            return null;
        }
        for (String str3 : str.split("\\?")[1].split("&")) {
            String[] strArrSplit = str3.split("=");
            if (str2.equals(strArrSplit[0])) {
                return strArrSplit[1];
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (!str.startsWith("deeplinker")) {
            if (e(str)) {
                c(str);
                return;
            }
            return;
        }
        String strF = f(a(str, "primaryUrl"));
        String strF2 = f(a(str, "fallbackUrl"));
        if (d(strF) && strF != null && e(strF)) {
            if (this.b.h() != null) {
                new a().execute(this.b.h());
            }
            c(strF);
        } else {
            if (strF2 == null || !e(strF2)) {
                return;
            }
            if (this.b.i() != null) {
                new a().execute(this.b.i());
            }
            c(strF2);
        }
    }

    private void c(String str) {
        if (str == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.c.startActivity(intent);
        if (this.b.e() != null) {
            new a().execute(this.b.e());
        }
    }

    private void d() {
        if (!"VIDEO".equals(this.b.j())) {
            String strB = this.b.b();
            if (this.b.b() == null || this.b.b() == "" || this.f14320f != null) {
                return;
            }
            if (strB.startsWith("file://")) {
                strB = strB.substring(7);
            }
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(strB);
            if (bitmapDecodeFile == null) {
                return;
            }
            this.f14320f = new ImageView(this.c);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(11);
            layoutParams.addRule(9);
            this.f14320f.setLayoutParams(layoutParams);
            this.f14320f.setImageBitmap(bitmapDecodeFile);
            this.f14320f.setScaleType(ImageView.ScaleType.CENTER_CROP);
            addView(this.f14320f);
            return;
        }
        if (this.b.k() == null || this.b.k() == "" || this.f14319e != null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(11);
        layoutParams2.addRule(9);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(this.c, Uri.parse(this.b.k()));
        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(0L, 2);
        ImageView imageView = new ImageView(this.c);
        imageView.setLayoutParams(layoutParams2);
        imageView.setImageBitmap(frameAtTime);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(imageView);
        VideoView videoView = new VideoView(this.c);
        this.f14319e = videoView;
        videoView.setLayoutParams(layoutParams2);
        this.f14319e.setVideoPath(this.b.k());
        addView(this.f14319e);
    }

    private boolean d(String str) {
        if (str == null) {
            return false;
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        return this.c.getPackageManager().resolveActivity(intent, 0) != null;
    }

    private void e() {
        if (this.f14317a.getShowSplashSlogan().booleanValue()) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), getResources().getIdentifier("unity_splash_slogan", "drawable", this.c.getPackageName()), new BitmapFactory.Options());
            this.f14321g = new ImageView(this.c);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.f14317a.getShowSplashSloganHeight());
            layoutParams.addRule(11);
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            this.f14321g.setLayoutParams(layoutParams);
            this.f14321g.setImageBitmap(bitmapDecodeResource);
            this.f14321g.setScaleType(ImageView.ScaleType.CENTER);
            this.f14321g.setBackgroundColor(-1);
            addView(this.f14321g);
        }
    }

    private static boolean e(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("http");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Uri.encode(URLDecoder.decode(str, "UTF-8"), "@#&=*+-_.,:!?()/~'%");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    private void f() {
        this.f14322h = new TextView(this.c);
        String str = "Skip " + this.f14318d;
        if (this.f14319e != null) {
            str = "Skip";
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        layoutParams.rightMargin = 48;
        layoutParams.topMargin = 72;
        this.f14322h.setLayoutParams(layoutParams);
        this.f14322h.setText(str);
        this.f14322h.setTextSize(15.0f);
        this.f14322h.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-7829368);
        gradientDrawable.setCornerRadius(12.0f);
        gradientDrawable.setStroke(3, -1);
        this.f14322h.setBackground(gradientDrawable);
        this.f14322h.setPadding(20, 5, 20, 5);
        this.f14322h.setAlpha(0.8f);
        this.f14322h.setOnClickListener(new View.OnClickListener() { // from class: com.unity3d.player.m.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                m.this.h();
            }
        });
        addView(this.f14322h);
    }

    private void g() {
        TextView textView = new TextView(this.c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        layoutParams.leftMargin = 32;
        layoutParams.topMargin = 64;
        textView.setLayoutParams(layoutParams);
        textView.setText("ADS");
        textView.setTextSize(8.0f);
        textView.setTextColor(-7829368);
        textView.setAlpha(0.8f);
        textView.setPadding(10, 5, 10, 5);
        addView(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        VideoView videoView = this.f14319e;
        if (videoView != null) {
            videoView.stopPlayback();
        }
        Timer timer = this.i;
        if (timer != null) {
            timer.cancel();
        }
        this.f14317a.NotifySplashAdsFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.b.l() != null) {
            new a().execute(this.b.l());
        }
        h();
    }

    public final void a() {
        if (this.b.f() > 0) {
            int iF = this.b.f();
            this.f14318d = iF;
            this.k = iF;
        }
        f();
        VideoView videoView = this.f14319e;
        if (videoView != null) {
            videoView.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.unity3d.player.m.2
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer) {
                    m.this.i();
                }
            });
            this.f14319e.start();
        } else {
            Timer timer = new Timer();
            this.i = timer;
            this.l = true;
            timer.schedule(this.m, 1000L, 1000L);
        }
        if (this.b.d() != null) {
            new a().execute(this.b.d());
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.unity3d.player.m.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return true;
                }
                m mVar = m.this;
                mVar.b(mVar.b.c());
                return true;
            }
        });
    }

    public final void b() {
        VideoView videoView = this.f14319e;
        if (videoView != null) {
            videoView.pause();
            this.j = this.f14319e.getCurrentPosition();
        }
        if (this.i != null) {
            this.l = false;
        }
    }

    public final void c() {
        VideoView videoView = this.f14319e;
        if (videoView != null) {
            videoView.start();
            this.f14319e.seekTo(this.j);
        }
        if (this.i != null) {
            this.l = true;
        }
    }
}
