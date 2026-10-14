package com.iflytek.cloud.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.RecognizerListener;
import com.iflytek.cloud.RecognizerResult;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SpeechRecognizer;
import com.iflytek.cloud.msc.util.g;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.resource.Resource;
import com.iflytek.cloud.ui.b.d;
import com.iflytek.cloud.ui.b.e;
import com.tencent.bugly.Bugly;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends d implements View.OnClickListener {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f12419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e f12420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RotateAnimation f12421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private SpeechRecognizer f12422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RecognizerDialogListener f12423h;
    private long i;
    private RecognizerListener j;
    private volatile int k;

    /* JADX INFO: renamed from: com.iflytek.cloud.ui.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0243a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f12424a;

        ViewOnClickListenerC0243a(Context context) {
            this.f12424a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                Uri uri = Uri.parse("http://www.xunfei.cn/?appid=" + com.iflytek.cloud.msc.util.e.b(com.iflytek.cloud.b.c.a()));
                DebugLog.LogD(uri.toString());
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                intent.addFlags(268435456);
                a.this.k = 1;
                a.this.k();
                a.this.f12422g.stopListening();
                a.this.f();
                this.f12424a.getApplicationContext().startActivity(intent);
            } catch (Exception unused) {
                DebugLog.LogW("failed");
            }
        }
    }

    class b implements RecognizerListener {
        b() {
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onBeginOfSpeech() {
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEndOfSpeech() {
            a.this.g();
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onError(SpeechError speechError) {
            if (speechError == null || !((d) a.this).b) {
                a.this.c();
            } else {
                a.this.a(speechError);
            }
            if (a.this.f12423h != null) {
                a.this.f12423h.onError(speechError);
            }
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onResult(RecognizerResult recognizerResult, boolean z) {
            if (z) {
                a.this.c();
            }
            if (a.this.f12423h != null) {
                a.this.f12423h.onResult(recognizerResult, z);
            }
        }

        @Override // com.iflytek.cloud.RecognizerListener
        public void onVolumeChanged(int i, byte[] bArr) {
            if (a.this.k != 1 || a.this.f12420e == null) {
                return;
            }
            a.this.f12420e.setVolume((i + 2) / 5);
            a.this.f12420e.invalidate();
        }
    }

    public class c extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f12426a;

        public c(String str) {
            this.f12426a = str;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            try {
                Context context = view.getContext();
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.f12426a));
                intent.addFlags(268435456);
                intent.putExtra("com.android.browser.application_id", context.getPackageName());
                context.startActivity(intent);
            } catch (Exception e2) {
                DebugLog.LogE(e2);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
        }
    }

    public a(Context context, InitListener initListener) {
        super(context.getApplicationContext());
        this.f12420e = null;
        this.f12421f = null;
        this.i = 0L;
        this.j = new b();
        this.f12422g = SpeechRecognizer.createRecognizer(context.getApplicationContext(), initListener);
        h();
    }

    private void i() {
        DebugLog.LogD("startRecognizing");
        long j = this.i;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.i = jElapsedRealtime;
        if (jElapsedRealtime - j < 300) {
            return;
        }
        this.f12422g.setParameter("msc.skin", "default");
        int iStartListening = this.f12422g.startListening(this.j);
        if (iStartListening != 0) {
            a(new SpeechError(iStartListening));
        } else {
            f();
        }
    }

    private void j() {
        LinearLayout linearLayout = this.f12419d;
        if (linearLayout != null) {
            linearLayout.destroyDrawingCache();
            this.f12419d = null;
        }
        this.f12420e = null;
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        FrameLayout frameLayout = (FrameLayout) this.f12419d.findViewWithTag("waiting");
        TextView textView = (TextView) this.f12419d.findViewWithTag("title");
        LinearLayout linearLayout = (LinearLayout) this.f12419d.findViewWithTag("error");
        TextView textView2 = (TextView) frameLayout.findViewWithTag("tips");
        if (this.k == 1) {
            linearLayout.setVisibility(8);
            textView.setVisibility(0);
            frameLayout.setVisibility(8);
            textView.setText(Resource.getTitle(2));
            this.f12420e.setVolume(0);
            this.f12420e.invalidate();
            this.f12420e.setVisibility(0);
            return;
        }
        if (this.k == 2) {
            textView.setVisibility(8);
            this.f12420e.setVisibility(8);
            frameLayout.setVisibility(0);
            textView2.setVisibility(0);
            textView2.setText(Resource.getTitle(3));
            return;
        }
        if (this.k == 3) {
            textView.setVisibility(8);
            this.f12420e.setVisibility(8);
            frameLayout.setVisibility(8);
            linearLayout.setVisibility(0);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = this.k;
        if (i == 1) {
            this.f12422g.stopListening();
            g();
        } else {
            if (i != 3) {
                return;
            }
            if (view.getTag() == null || ((SpeechError) view.getTag()).getErrorCode() != 20001) {
                i();
            } else {
                d();
            }
        }
    }

    public void setResultListener(RecognizerDialogListener recognizerDialogListener) {
        this.f12423h = recognizerDialogListener;
        setOnClickListener(this);
    }

    public void setTitle(CharSequence charSequence) {
        ((TextView) this.f12419d.findViewWithTag("title")).setText(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f12420e == null) {
            this.f12420e = new e(getContext().getApplicationContext());
        }
        this.k = 1;
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        try {
            ((FrameLayout) this.f12419d.findViewWithTag("waiting")).findViewWithTag("control").startAnimation(this.f12421f);
            this.k = 2;
            k();
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
    }

    @Override // com.iflytek.cloud.ui.b.d
    protected boolean b() {
        if (!super.b()) {
            return false;
        }
        j();
        return this.f12422g.destroy();
    }

    @Override // com.iflytek.cloud.ui.b.d
    public void e() {
        super.e();
        i();
    }

    public void h() {
        try {
            Context applicationContext = getContext().getApplicationContext();
            View viewA = com.iflytek.cloud.ui.b.a.a(applicationContext, "recognize", this);
            viewA.setBackground(com.iflytek.cloud.ui.b.a.b(applicationContext.getApplicationContext(), "voice_bg.9"));
            TextView textView = (TextView) viewA.findViewWithTag("textlink");
            textView.getPaint().setFlags(8);
            textView.setText("语音识别能力由讯飞输入法提供");
            textView.setLinksClickable(true);
            textView.setOnClickListener(new ViewOnClickListenerC0243a(applicationContext));
            this.f12419d = (LinearLayout) viewA.findViewWithTag(TtmlNode.RUBY_CONTAINER);
            g.a(this);
            this.f12420e = new e(applicationContext.getApplicationContext());
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
            layoutParams.bottomMargin = 20;
            this.f12419d.addView(this.f12420e, 1, layoutParams);
            ((FrameLayout) this.f12419d.findViewWithTag("waiting")).findViewWithTag("control").setBackgroundDrawable(com.iflytek.cloud.ui.b.a.b(getContext(), "waiting"));
            RotateAnimation rotateAnimation = new RotateAnimation(BitmapDescriptorFactory.HUE_RED, 360.0f, 1, 0.5f, 1, 0.5f);
            this.f12421f = rotateAnimation;
            rotateAnimation.setRepeatCount(-1);
            this.f12421f.setInterpolator(new LinearInterpolator());
            this.f12421f.setDuration(700L);
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
    }

    public void a(String str, String str2) {
        this.f12422g.setParameter(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SpeechError speechError) {
        try {
            LinearLayout linearLayout = (LinearLayout) this.f12419d.findViewWithTag("error");
            a((TextView) linearLayout.findViewWithTag("errtxt"), speechError);
            linearLayout.findViewWithTag("errview").setBackgroundDrawable(com.iflytek.cloud.ui.b.a.b(getContext(), "warning"));
            setTag(speechError);
            this.k = 3;
            k();
        } catch (Exception e2) {
            DebugLog.LogE(e2);
        }
    }

    public void a(TextView textView, SpeechError speechError) {
        String parameter = this.f12422g.getParameter("view_tips_plain");
        boolean z = parameter == null || !(parameter.equalsIgnoreCase(Bugly.SDK_IS_DEV) || parameter.equalsIgnoreCase("0"));
        textView.setText(Html.fromHtml(speechError.getHtmlDescription(z)));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.bringToFront();
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            int length = text.length();
            Spannable spannable = (Spannable) textView.getText();
            URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, length, URLSpan.class);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
            spannableStringBuilder.clearSpans();
            for (URLSpan uRLSpan : uRLSpanArr) {
                spannableStringBuilder.setSpan(new c(uRLSpan.getURL()), spannable.getSpanStart(uRLSpan), spannable.getSpanEnd(uRLSpan), 34);
            }
            int length2 = speechError.getHtmlDescription(false).length();
            int length3 = speechError.getHtmlDescription(true).length() - 4;
            spannableStringBuilder.setSpan(new ForegroundColorSpan(com.iflytek.cloud.ui.b.a.a()[0]), 0, length2, 34);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(com.iflytek.cloud.ui.b.a.b()[0], true), 0, length2, 33);
            if (z) {
                int i = length2 + 1;
                spannableStringBuilder.setSpan(new ForegroundColorSpan(com.iflytek.cloud.ui.b.a.a()[1]), i, length3 + 1, 34);
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan(com.iflytek.cloud.ui.b.a.b()[1], true), i, length, 34);
            }
            textView.setText(spannableStringBuilder);
        }
    }

    @Override // com.iflytek.cloud.ui.b.d
    public void a() {
        if (this.f12422g.isListening()) {
            this.f12422g.cancel();
        }
        super.a();
    }
}
