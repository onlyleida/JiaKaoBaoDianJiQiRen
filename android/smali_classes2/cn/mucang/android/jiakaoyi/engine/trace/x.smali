.class public final Lcn/mucang/android/jiakaoyi/engine/trace/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0016\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0001H\u0007J\u0008\u0010?\u001a\u00020\u001bH\u0007J\u0010\u0010@\u001a\u00020=2\u0006\u0010A\u001a\u00020\u001bH\u0007R\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\u0008R\"\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0002\u001a\u0004\u0008\u0010\u0010\u0008R\"\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0008R\"\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0002\u001a\u0004\u0008\u0018\u0010\u0008R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001e\u0010\u0002\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\'\u001a\u0004\u0018\u00010&2\u0008\u0010%\u001a\u0004\u0018\u00010&8\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010\u0002\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u00102\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u001d8\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00083\u0010\u0002\u001a\u0004\u00084\u0010 \"\u0004\u00085\u0010\"R$\u00106\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00087\u0010\u0002\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;\u00a8\u0006B"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/engine/trace/TraceCacheManager;",
        "",
        "()V",
        "backupTrackCarData",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;",
        "getBackupTrackCarData$annotations",
        "getBackupTrackCarData",
        "()Ljava/util/List;",
        "backupTrackDeductData",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
        "getBackupTrackDeductData$annotations",
        "getBackupTrackDeductData",
        "backupTrackErrorData",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;",
        "getBackupTrackErrorData$annotations",
        "getBackupTrackErrorData",
        "backupTrackSignalData",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;",
        "getBackupTrackSignalData$annotations",
        "getBackupTrackSignalData",
        "backupTrackStepData",
        "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
        "getBackupTrackStepData$annotations",
        "getBackupTrackStepData",
        "lastSignalModel",
        "needAddData",
        "",
        "passScore",
        "",
        "getPassScore$annotations",
        "getPassScore",
        "()I",
        "setPassScore",
        "(I)V",
        "startTime",
        "",
        "value",
        "",
        "subCode",
        "getSubCode$annotations",
        "getSubCode",
        "()Ljava/lang/String;",
        "setSubCode",
        "(Ljava/lang/String;)V",
        "trackCarData",
        "trackDeductData",
        "trackErrorData",
        "trackSignalData",
        "trackStepData",
        "type",
        "getType$annotations",
        "getType",
        "setType",
        "valid",
        "getValid$annotations",
        "getValid",
        "()Z",
        "setValid",
        "(Z)V",
        "addData",
        "",
        "any",
        "canReplay",
        "clear",
        "needCopy",
        "engine_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/engine/trace/x;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Z

.field private static m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

.field private static n:J

.field private static volatile o:Ljava/lang/String;

.field private static volatile p:Z

.field private static q:I

.field private static r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/x;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->a:Lcn/mucang/android/jiakaoyi/engine/trace/x;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->b:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->e:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->g:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->h:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->i:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->j:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->k:Ljava/util/List;

    const/16 v0, 0x50

    .line 11
    sput v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->q:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "any"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->n:J

    .line 3
    :cond_0
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    if-eqz v0, :cond_1

    .line 4
    move-object v1, p0

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    sput-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/x;->m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    .line 5
    :cond_1
    sget v1, Lcn/mucang/android/jiakaoyi/engine/trace/x;->r:I

    if-nez v1, :cond_2

    instance-of v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-eqz v2, :cond_2

    move-object v2, p0

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    iget-byte v2, v2, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->st:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 6
    sput-boolean v3, Lcn/mucang/android/jiakaoyi/engine/trace/x;->l:Z

    :cond_2
    if-nez v1, :cond_3

    .line 7
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/engine/trace/x;->l:Z

    if-nez v1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9
    instance-of v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    const-string v3, "obj"

    if-eqz v2, :cond_4

    .line 10
    const-class p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    invoke-static {v1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->b:Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 12
    const-class p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    invoke-static {v1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    .line 13
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->c:Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    if-eqz v0, :cond_6

    .line 15
    const-class p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    invoke-static {v1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->d:Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_6
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    if-eqz v0, :cond_7

    .line 18
    const-class p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    invoke-static {v1, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;

    .line 19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;->reverse:Z

    .line 20
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->e:Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_7
    instance-of v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    if-eqz v0, :cond_8

    .line 22
    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    .line 23
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/x;->f:Ljava/util/List;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->r:I

    if-nez v0, :cond_8

    check-cast p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;

    iget-byte p0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;->st:B

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    const/4 p0, 0x0

    .line 25
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->l:Z

    :cond_8
    :goto_0
    return-void
.end method

.method public static final b()Z
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final c(Z)V
    .locals 13

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/trace/x;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/trace/x;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 4
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/trace/x;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/trace/x;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->c:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->m:Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;

    if-eqz p0, :cond_0

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->d:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->e:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->f:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v5, Lcn/mucang/android/jiakaoyi/engine/trace/x;->n:J

    sub-long/2addr v0, v5

    .line 14
    sget-object v9, Lcn/mucang/android/jiakaoyi/engine/trace/x;->o:Ljava/lang/String;

    .line 15
    sget-boolean v12, Lcn/mucang/android/jiakaoyi/engine/trace/x;->p:Z

    const-class p0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;

    .line 16
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p0

    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;

    sget v6, Lcn/mucang/android/jiakaoyi/engine/trace/x;->r:I

    long-to-int v7, v0

    sget v8, Lcn/mucang/android/jiakaoyi/engine/trace/x;->q:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;-><init>(IIILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    invoke-virtual {p0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 17
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 18
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 19
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 20
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 21
    sget-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 22
    sput-wide v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->n:J

    const/4 p0, 0x0

    .line 23
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 24
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->p:Z

    return-void
.end method

.method public static final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceCarModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceDeductModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->j:Ljava/util/List;

    return-object v0
.end method

.method public static final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceErrorModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->i:Ljava/util/List;

    return-object v0
.end method

.method public static final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceSignalModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->h:Ljava/util/List;

    return-object v0
.end method

.method public static final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->k:Ljava/util/List;

    return-object v0
.end method

.method public static final i(I)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->q:I

    return-void
.end method

.method public static final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->o:Ljava/lang/String;

    const-string v0, "\u5173\u5361-\u8bbe\u7f6e subCode:"

    .line 2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public static final k(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/x;->c(Z)V

    .line 2
    sput p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->r:I

    return-void
.end method

.method public static final l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/engine/trace/x;->p:Z

    return-void
.end method
