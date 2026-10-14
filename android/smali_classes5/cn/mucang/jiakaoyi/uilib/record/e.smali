.class public final Lcn/mucang/jiakaoyi/uilib/record/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\u0006H\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u0006H\u0007J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/record/UploadRecordManager;",
        "",
        "()V",
        "examModel",
        "Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;",
        "addDeduct",
        "",
        "info",
        "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;",
        "end",
        "getLocalModel",
        "start",
        "orderId",
        "",
        "upload",
        "uploadExamResult",
        "result",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;",
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
.field public static final a:Lcn/mucang/jiakaoyi/uilib/record/e;

.field private static b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/record/e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/record/e;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->a:Lcn/mucang/jiakaoyi/uilib/record/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->getDeductDetails()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->setDeductDetails(Ljava/util/List;)V

    .line 4
    :cond_3
    :goto_1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->getDeductDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/record/f;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/record/b;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/uilib/record/b;-><init>(Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final c(Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;)V
    .locals 2

    const-string v0, "keyExamRecord"

    const-string v1, "$it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/record/d;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/record/d;-><init>()V

    invoke-virtual {v1, p0}, Lcn/mucang/jiakaoyi/uilib/record/d;->m(Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/record/c;->a:Lcn/mucang/jiakaoyi/uilib/record/c;

    .line 3
    :goto_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 4
    :catch_0
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcn/mucang/jiakaoyi/uilib/record/c;->a:Lcn/mucang/jiakaoyi/uilib/record/c;

    goto :goto_0

    :goto_1
    return-void

    .line 5
    :goto_2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/c;->a:Lcn/mucang/jiakaoyi/uilib/record/c;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    throw p0
.end method

.method private static final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/engine/model/a;Lcn/mucang/android/jiakaoyi/engine/model/a;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/record/e;->i(Lcn/mucang/android/jiakaoyi/engine/model/a;Lcn/mucang/android/jiakaoyi/engine/model/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/uilib/record/e;->c(Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;)V

    return-void
.end method

.method public static synthetic g()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/record/e;->d()V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/engine/model/a;Lcn/mucang/android/jiakaoyi/engine/model/a;)I
    .locals 7

    const-string v0, "o1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    sub-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final h(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;->c:Ljava/util/Map;

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;

    .line 5
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    .line 6
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;->b:Ljava/util/List;

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/record/a;->a:Lcn/mucang/jiakaoyi/uilib/record/a;

    invoke-static {v0, p1}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/a;

    .line 12
    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/record/f;->a(Lcn/mucang/android/jiakaoyi/engine/model/a;)Lcn/mucang/jiakaoyi/uilib/record/DeductRecordModel;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->getDeductDetails()Ljava/util/List;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_5

    .line 14
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->setDeductDetails(Ljava/util/List;)V

    .line 15
    :cond_5
    :goto_3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->getDeductDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    :goto_4
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/record/e;->b:Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/record/UploadRecordModel;->getDeductDetails()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_a
    :goto_5
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/record/e;->b()V

    return-void
.end method
