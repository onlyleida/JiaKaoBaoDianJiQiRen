.class public final Lcn/mucang/android/account/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00082\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcn/mucang/android/account/utils/AccountProtocolUtils;",
        "",
        "()V",
        "renderProtocolText",
        "",
        "textView",
        "Landroid/widget/TextView;",
        "userProtocolClick",
        "Lkotlin/Function0;",
        "privacyProtocolClick",
        "account_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/account/n/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/account/n/b;

    invoke-direct {v0}, Lcn/mucang/android/account/n/b;-><init>()V

    sput-object v0, Lcn/mucang/android/account/n/b;->a:Lcn/mucang/android/account/n/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/account/n/b;Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/account/n/b;->b(Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)V
    .locals 7

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/account/n/b;->c(Lcn/mucang/android/account/n/b;Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/widget/TextView;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "#FF1DACF9"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-string v4, "\u300a\u7528\u6237\u4f7f\u7528\u534f\u8bae\u300b"

    .line 5
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 7
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x11

    .line 8
    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    new-instance v5, Lcn/mucang/android/account/n/b$a;

    invoke-direct {v5, p2, v0, v1}, Lcn/mucang/android/account/n/b$a;-><init>(Lkotlin/jvm/b/a;Landroid/content/Context;I)V

    .line 10
    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p2, "\u548c"

    .line 11
    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-string v3, "\u300a\u9690\u79c1\u653f\u7b56\u300b"

    .line 13
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 15
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 16
    invoke-virtual {v2, v4, p2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    new-instance v4, Lcn/mucang/android/account/n/b$b;

    invoke-direct {v4, p3, v0, v1}, Lcn/mucang/android/account/n/b$b;-><init>(Lkotlin/jvm/b/a;Landroid/content/Context;I)V

    .line 18
    invoke-virtual {v2, v4, p2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance p2, Landroid/text/method/LinkMovementMethod;

    invoke-direct {p2}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method
