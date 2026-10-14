.class public final Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0010\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J \u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tJ\"\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0002J \u0010\u001b\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;",
        "",
        "()V",
        "SKIN",
        "",
        "VOICE_PACK",
        "checkUpdateSkin",
        "",
        "examSiteId",
        "",
        "callback",
        "Lkotlin/Function0;",
        "checkUpdateVoicePack",
        "getSkinConfig",
        "Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;",
        "groupId",
        "update",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "updateSkinToEnableExamSite",
        "name",
        "",
        "id",
        "updateVoicePack",
        "progressCallback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "updateVoicePackToEnableExamSite",
        "uilib_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;J)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->d(J)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;JLcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->g(JLcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;

    move-result-object p0

    return-object p0
.end method

.method private final d(J)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/m;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/m;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcn/mucang/jiakaoyi/uilib/i/m;->m(JI)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u68c0\u67e5\u5230\u6709\u9700\u8981\u66f4\u65b0\u7684\u8bed\u97f3\u5305 \u63a5\u53e3\u5931\u8d25"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "\u6ca1\u6709\u68c0\u67e5\u5230\u6709\u9700\u8981\u66f4\u65b0\u7684\u8bed\u97f3\u5305 "

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Float;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper;->h(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Float;)V

    return-void
.end method

.method private final g(JLcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;"
        }
    .end annotation

    const-string v0, "\u89e3\u538b\u5931\u8d25\uff1a"

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff1a"

    const-string v2, "\u8bed\u97f3\u5305"

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/i/m;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/i/m;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, p1, p2, v5}, Lcn/mucang/jiakaoyi/uilib/i/m;->m(JI)Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p3, "\u6ca1\u6709\u68c0\u67e5\u5230\u6709\u9700\u8981\u66f4\u65b0\u7684\u8bed\u97f3\u5305 "

    .line 2
    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-object v3

    .line 3
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u62c9\u53d6\u5230\u7ebf\u4e0a\u914d\u7f6e\u7684\u8bed\u97f3\u5305: name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " ; configId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ; version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object v5

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getVersion()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->b(Ljava/lang/String;Ljava/lang/Long;I)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->d()Lcn/mucang/android/jiakaoyi/framework/tts/i/c;

    move-result-object v5

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v6

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getVersion()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/framework/tts/i/c;->e(JI)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    .line 6
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/i/b;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getConfigId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getVersion()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 10
    :cond_2
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/tts/voice/n;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/ResConfigInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcn/mucang/jiakaoyi/uilib/upgrade/b;

    invoke-direct {v7, p3}, Lcn/mucang/jiakaoyi/uilib/upgrade/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/n;->d(Lcn/mucang/android/jiakaoyi/framework/h/b;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 11
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    .line 13
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/utils/t0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 14
    :cond_3
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_0
    move-exception p3

    .line 15
    :try_start_2
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p3

    .line 21
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u67e5\u8be2\u8003\u573a\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5931\u8d25"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-object v3
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Float;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final c(JLkotlin/jvm/b/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p3, v0}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateSkin$1;-><init>(JLkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final f(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;J)V
    .locals 6

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iput-object p2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->skinName:Ljava/lang/String;

    .line 4
    iput-wide p3, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->skinId:J

    .line 5
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final i(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Ljava/lang/String;J)V
    .locals 6

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-wide v4, p1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iput-object p2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->voicePackageName:Ljava/lang/String;

    .line 4
    iput-wide p3, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->voicePackageId:J

    .line 5
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->r(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    :cond_3
    :goto_1
    return-void
.end method
