.class public final Lcn/mucang/android/jiakaoyi/speech/semantic/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J$\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006J\u001a\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi;",
        "",
        "()V",
        "waitRetSessionSemantic",
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticApi$SessionSemantic;",
        "getBizInvokeSuccessTip",
        "",
        "sessionId",
        "getSemantic",
        "",
        "asrText",
        "callback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISemanticCallback;",
        "isMatchSuccess",
        "",
        "text",
        "reportInvokeRet",
        "aswText",
        "Companion",
        "SessionSemantic",
        "speech_release"
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
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key10:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->b:Ljava/lang/String;

    .line 2
    sget v0, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key11:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->c:Ljava/lang/String;

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key12:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->d:Ljava/lang/String;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key13:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    return-void
.end method

.method private static final c(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;Lcn/mucang/android/jiakaoyi/speech/semantic/d;)V
    .locals 9

    const-string v0, "SemanticApi"

    const-string v1, "this$0"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lcn/mucang/android/jiakaoyi/speech/semantic/e;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;-><init>()V

    .line 2
    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v5, Lcn/mucang/android/jiakaoyi/speech/provider/AbsInteractionProvider;

    invoke-static {v4, v5, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/speech/provider/AbsInteractionProvider;

    if-nez v4, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/speech/provider/AbsInteractionProvider;->getServerKemu()Ljava/lang/String;

    move-result-object v4

    .line 3
    :goto_0
    invoke-virtual {v3, p0, p1, v4}, Lcn/mucang/android/jiakaoyi/speech/semantic/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSemantic error "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    :goto_1
    const/4 v4, 0x1

    if-nez v3, :cond_2

    if-nez p2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->b:Ljava/lang/String;

    invoke-interface {p2, p0, p1, v4}, Lcn/mucang/android/jiakaoyi/speech/d/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void

    .line 7
    :cond_2
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getType()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    if-eq v5, v1, :cond_9

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getReply()Ljava/lang/String;

    move-result-object v5

    const-string v7, "reply:"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v5, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/f;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getReply()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 10
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getReply()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    const-string v8, "http://voice.nav.mucang.cn/adjustVolume"

    invoke-static {v7, v8, v6, v1, v2}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v6, 0x1

    .line 11
    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getReply()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "reply invoke by Biz"

    .line 12
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;->d(Ljava/lang/String;)V

    .line 14
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    invoke-virtual {p3, v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;->c(Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;)V

    const-string p3, ""

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getTip()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getTip()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    sget p3, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key14:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    :goto_4
    const-string v0, "{\n                      \u2026                        }"

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 17
    :cond_7
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getCommandFailTip()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getCommandFailTip()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    sget p3, Lcn/mucang/android/jiakaoyi/speech/R$string;->speech_key15:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getString(R.string.speech_key15)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 18
    :cond_9
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getReply()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getReply()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    sget-object p3, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->c:Ljava/lang/String;

    const-string v0, "NO_MATCH"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :goto_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getType()I

    move-result v0

    if-ne v0, v4, :cond_b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 20
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-virtual {v0, v3, p3}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->g(Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;Ljava/lang/String;)V

    :cond_b
    if-nez p2, :cond_c

    goto :goto_6

    .line 21
    :cond_c
    invoke-interface {p2, p0, p3, v6}, Lcn/mucang/android/jiakaoyi/speech/d/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    :goto_6
    sget-object p2, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;Lcn/mucang/android/jiakaoyi/speech/semantic/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->c(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;Lcn/mucang/android/jiakaoyi/speech/semantic/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;->a()Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;->getTip()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;)V
    .locals 2

    const-string v0, "SemanticApi"

    if-nez p1, :cond_0

    const-string p1, "sessionId == null !!"

    .line 1
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "asrText is Empty!!"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcn/mucang/android/jiakaoyi/speech/semantic/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;Lcn/mucang/android/jiakaoyi/speech/semantic/d;)V

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    xor-int/2addr p1, v1

    return p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/d$a;->a()Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->g(Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
