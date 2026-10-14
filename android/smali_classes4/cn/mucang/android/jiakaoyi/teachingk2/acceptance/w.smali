.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0017J5\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001f\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\u0002\u0010 J?\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001f\u001a\u00028\u00002\u0006\u0010\"\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0002\u0010#J\u0018\u0010$\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;",
        "T",
        "",
        "()V",
        "endTime",
        "",
        "getEndTime",
        "()J",
        "setEndTime",
        "(J)V",
        "manager",
        "Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;",
        "getManager",
        "()Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;",
        "setManager",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/creator/K2TeachingEngineManager;)V",
        "startTime",
        "getStartTime",
        "setStartTime",
        "traceId",
        "",
        "clickSubmit",
        "",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "workOrderId",
        "destroy",
        "doSubmit",
        "module",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "subType",
        "model",
        "(Landroidx/appcompat/app/AppCompatActivity;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;J)V",
        "doUpload",
        "trackId",
        "(Landroidx/appcompat/app/AppCompatActivity;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V",
        "initAndStart",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->h(Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->d:Ljava/lang/String;

    return-void
.end method

.method private static final f(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v0, "\u8f68\u8ff9\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8f68\u8ff9\u4e0a\u4f20\u8d85\u65f6\uff0c\u9a8c\u6536\u5931\u8d25:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 4
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 5
    invoke-static {p3, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private static final g(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$observer"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private final h(Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/d;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move-object v1, p4

    invoke-static {p4, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d0\u4ea4\u9a8c\u6536:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p6

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    move-object v9, p1

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v10, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/g;

    move-object v1, v10

    move-object v5, p0

    invoke-direct/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Ljava/lang/String;JLandroidx/appcompat/app/d;)V

    const-string v1, "\u6b63\u5728\u63d0\u4ea4"

    const-string v2, "\u63d0\u4ea4\u5931\u8d25"

    invoke-virtual {v0, v10, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Ljava/lang/String;JLandroidx/appcompat/app/d;)V
    .locals 13

    move-object/from16 v0, p7

    const-string v1, "$module"

    move-object v3, p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$trackId"

    move-object/from16 v10, p4

    invoke-static {v10, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;-><init>()V

    const-string v4, "content"

    move-object v5, p2

    .line 2
    invoke-static {p2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->m()J

    move-result-wide v6

    .line 4
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->k()J

    move-result-wide v8

    move-object v2, v1

    move-object v4, p1

    move-wide/from16 v11, p5

    .line 5
    invoke-virtual/range {v2 .. v12}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/v;->p(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;

    invoke-direct {v2, v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/i;-><init>(Ljava/lang/String;Landroidx/appcompat/app/d;)V

    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final j(Ljava/lang/String;Landroidx/appcompat/app/d;)V
    .locals 2

    const-string v0, "$reportUrl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u9a8c\u6536\u7ed3\u679c:"

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "reportUrl"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Ljava/lang/String;JLandroidx/appcompat/app/d;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->i(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Ljava/lang/String;JLandroidx/appcompat/app/d;)V

    return-void
.end method

.method public static synthetic p(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->f(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Ljava/lang/String;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->j(Ljava/lang/String;Landroidx/appcompat/app/d;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->g(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public c(Landroidx/appcompat/app/d;J)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->s(J)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->l()Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->stop()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->l()Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->destroy()V

    :goto_1
    return-void
.end method

.method public final e(Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/d;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
            "Ljava/lang/String;",
            "TT;J)V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v5, p2

    const-string v0, "activity"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u9a8c\u6536\u8f68\u8ff9\u5df2\u4e0a\u4f20\uff0c\u91cd\u65b0\u63d0\u4ea4\u7ed3\u679c"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-object v6, v10, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->d:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->h(Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u6b63\u5728\u4e0a\u4f20\u8f68\u8ff9..."

    .line 4
    invoke-static {v11, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v12

    .line 5
    new-instance v13, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct {v13, v12, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/h;-><init>(Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;

    move-object v0, v14

    move-object v1, v13

    move-object v2, v12

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;-><init>(Ljava/lang/Runnable;Landroid/app/ProgressDialog;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;Landroidx/appcompat/app/d;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/j;

    invoke-direct {v0, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w$a;)V

    invoke-virtual {v12, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/e;

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, v11, v14}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-wide/32 v0, 0xea60

    .line 9
    invoke-static {v13, v0, v1}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->d()V

    return-void
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->c:J

    return-wide v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    return-object v0
.end method

.method public m()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->b:J

    return-wide v0
.end method

.method public n(Landroidx/appcompat/app/d;J)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->u(J)V

    return-void
.end method

.method public s(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->c:J

    return-void
.end method

.method public t(Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/t0/b;

    return-void
.end method

.method public u(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;->b:J

    return-void
.end method
