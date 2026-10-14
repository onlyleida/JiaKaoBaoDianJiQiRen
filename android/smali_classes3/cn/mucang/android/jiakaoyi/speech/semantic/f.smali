.class public final Lcn/mucang/android/jiakaoyi/speech/semantic/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004J\"\u0010\u000f\u001a\u00020\r2\u001a\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\"\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/semantic/SpeechMcProtocolHelper;",
        "",
        "()V",
        "URL_ADJUST_VOLUME",
        "",
        "URL_CLOSE_PANEL",
        "bizProtocols",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "executeOK",
        "",
        "url",
        "init",
        "",
        "isBizInvokeProtocol",
        "setBizInvokeProtocols",
        "urlSet",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/speech/semantic/f;

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/semantic/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/c;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/c;

    const-string v1, "http://voice.nav.mucang.cn/adjustVolume"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/b;->a:Lcn/mucang/android/jiakaoyi/speech/semantic/b;

    const-string v1, "http://voice.nav.mucang.cn/closePanel"

    invoke-static {v1, v0}, Lf/a/a/a/i/h;->g(Ljava/lang/String;Lf/a/a/a/i/c;)Z

    return-void
.end method

.method private static final c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "cmd"

    .line 2
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 3
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const-string v2, "audio"

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v2, p0, Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    check-cast p0, Landroid/media/AudioManager;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const/4 v2, 0x1

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    :goto_2
    const/16 p1, 0x64

    if-le v1, p1, :cond_4

    const/16 v1, 0x64

    :cond_4
    const/4 p1, 0x3

    .line 5
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 6
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    int-to-double v5, v3

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    int-to-double v7, v1

    mul-double v5, v5, v7

    .line 7
    invoke-static {v5, v6}, Lkotlin/y/a;->a(D)I

    move-result v1

    const-string v3, "1"

    .line 8
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/2addr v1, v4

    goto :goto_3

    :cond_5
    const-string v3, "2"

    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sub-int v1, v4, v1

    .line 10
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_4
    return v2
.end method

.method private static final d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->t()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/a/a/a/i/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lf/a/a/a/i/h;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->b:Ljava/util/HashSet;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->b:Ljava/util/HashSet;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v3, v1, v4, v5}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1
.end method

.method public final h(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/speech/semantic/f;->b:Ljava/util/HashSet;

    return-void
.end method
