package cn.mucang.android.account.utils;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.account.n.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bH\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/android/account/utils/AccountProtocolUtils;", "", "()V", "renderProtocolText", "", "textView", "Landroid/widget/TextView;", "userProtocolClick", "Lkotlin/Function0;", "privacyProtocolClick", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AccountProtocolUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AccountProtocolUtils f2251a = new AccountProtocolUtils();

    /* JADX INFO: renamed from: cn.mucang.android.account.n.b$a */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/account/utils/AccountProtocolUtils$renderProtocolText$1", "Landroid/text/style/ClickableSpan;", "onClick", "", "widget", "Landroid/view/View;", "updateDrawState", "ds", "Landroid/text/TextPaint;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0<v> f2252a;
        final /* synthetic */ Context b;
        final /* synthetic */ int c;

        a(Function0<v> function0, Context context, int i) {
            this.f2252a = function0;
            this.b = context;
            this.c = i;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            r.e(widget, "widget");
            Function0<v> function0 = this.f2252a;
            if (function0 == null) {
                f.a.a.f.a.a(this.b);
            } else {
                function0.invoke();
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            r.e(ds, "ds");
            ds.linkColor = this.c;
            ds.setUnderlineText(false);
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.n.b$b */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/account/utils/AccountProtocolUtils$renderProtocolText$2", "Landroid/text/style/ClickableSpan;", "onClick", "", "widget", "Landroid/view/View;", "updateDrawState", "ds", "Landroid/text/TextPaint;", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b extends ClickableSpan {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function0<v> f2253a;
        final /* synthetic */ Context b;
        final /* synthetic */ int c;

        b(Function0<v> function0, Context context, int i) {
            this.f2253a = function0;
            this.b = context;
            this.c = i;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            r.e(widget, "widget");
            Function0<v> function0 = this.f2253a;
            if (function0 == null) {
                f.a.a.f.a.b(this.b);
            } else {
                function0.invoke();
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            r.e(ds, "ds");
            ds.linkColor = this.c;
            ds.setUnderlineText(false);
        }
    }

    private AccountProtocolUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void c(AccountProtocolUtils accountProtocolUtils, TextView textView, Function0 function0, Function0 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        if ((i & 4) != 0) {
            function1 = null;
        }
        accountProtocolUtils.b(textView, function0, function1);
    }

    public final void a(TextView textView) {
        r.e(textView, "textView");
        c(this, textView, null, null, 6, null);
    }

    public final void b(TextView textView, Function0<v> function0, Function0<v> function1) {
        r.e(textView, "textView");
        Context context = textView.getContext();
        int color = Color.parseColor("#FF1DACF9");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) "《用户使用协议》");
        int length2 = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(new ForegroundColorSpan(color), length, length2, 17);
        spannableStringBuilder.setSpan(new a(function0, context, color), length, length2, 17);
        spannableStringBuilder.append((CharSequence) "和");
        int length3 = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) "《隐私政策》");
        int length4 = spannableStringBuilder.length();
        spannableStringBuilder.setSpan(new ForegroundColorSpan(color), length3, length4, 17);
        spannableStringBuilder.setSpan(new b(function1, context, color), length3, length4, 17);
        textView.setText(spannableStringBuilder);
        textView.setMovementMethod(new LinkMovementMethod());
        textView.setHighlightColor(0);
    }
}
