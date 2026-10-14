.class public final Lcn/mucang/android/facelib/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/facelib/q$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0011J\u001e\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0011J\u0006\u0010\u001f\u001a\u00020\u0011R2\u0010\u0003\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0007\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R2\u0010\u0008\u001a&\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005 \u0006*\u0012\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u0005\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\t\u001a*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b0\nj\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/android/facelib/FaceRegister;",
        "",
        "()V",
        "avgCount",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "",
        "kotlin.jvm.PlatformType",
        "avgX",
        "avgY",
        "fullAngleList",
        "Ljava/util/ArrayList;",
        "Lkotlin/Pair;",
        "Lkotlin/collections/ArrayList;",
        "posFailCount",
        "posSuccessCount",
        "registerCount",
        "clear",
        "",
        "deleteUserFace",
        "studentId",
        "",
        "mark",
        "observeLogUpload",
        "register",
        "faceData",
        "Lcn/mucang/android/facelib/tflite/SimilarityClassifier$Recognition;",
        "user",
        "Lcn/mucang/android/facelib/model/FaceUserModel;",
        "faceResult",
        "Lcn/mucang/jiakaoyi/uilib/login/face/FaceResult;",
        "reset",
        "trimOldLabel",
        "Companion",
        "facelib_release"
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
.field public static final h:Lcn/mucang/android/facelib/q$a;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/facelib/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/facelib/q$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/facelib/q;->h:Lcn/mucang/android/facelib/q$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "face_avg_x"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/facelib/q;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "face_avg_y"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/facelib/q;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    const-string v0, "face_avg_count"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->f(Ljava/lang/String;I)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/facelib/q;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/facelib/q;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic c(Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/facelib/q;->g(Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/facelib/q;->i()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/facelib/q;->h()V

    return-void
.end method

.method private static final g(Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;)V
    .locals 3

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    sget-object v0, Lcn/mucang/android/facelib/i;->a:Lcn/mucang/android/facelib/i;

    const-string v1, "face_log_upload_count"

    const/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final h()V
    .locals 1

    sget-object v0, Lcn/mucang/android/facelib/h;->a:Lcn/mucang/android/facelib/h;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i()V
    .locals 10

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    const-string v3, "select * from t_face_label"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    .line 3
    invoke-static {v3, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "face_log_upload_day"

    .line 7
    invoke-static {v2, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "face_log_upload_count"

    .line 8
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v3

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LogUploadRequest\uff1acacheCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uploadCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", today:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    if-eqz v5, :cond_a

    if-lt v3, v5, :cond_0

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v2, "face_log_upload_day"

    .line 11
    invoke-static {v2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    const-string v0, "face_log_upload_count"

    .line 12
    invoke-static {v0, v5}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->k(Ljava/lang/String;I)V

    const-string v0, "upload-start"

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    const-string v0, "flList"

    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 17
    move-object v3, v2

    check-cast v3, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    .line 18
    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getStudentId()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 23
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "face-studentId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    .line 29
    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getFaceFile()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/4 v8, 0x0

    if-eqz v6, :cond_5

    .line 30
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getFaceFile()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v6, v8

    :goto_4
    if-nez v6, :cond_7

    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 31
    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-ne v9, v7, :cond_6

    const/4 v9, 0x1

    :goto_5
    if-eqz v9, :cond_3

    .line 32
    invoke-static {v6, v8, v7, v8}, Lkotlin/io/g;->f(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\npos:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getFaceX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getFaceY()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getFaceWidth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getFaceHeight()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 34
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "upload-end"

    .line 35
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->s:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->v(Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    :cond_a
    :goto_6
    return-void

    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/o$a;->a()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v1, "DbLock"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "studentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mark"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v3, "DbLock"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v3

    const-class v4, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    const-string v5, "student_id=?"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v3, v4, v5, v1}, Lcn/mucang/android/core/db/a;->j(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    sget-object v0, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/facelib/o$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 2

    const-class v0, Lcn/mucang/jiakaoyi/uilib/socket/model/LogUploadRequest;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/facelib/g;->a:Lcn/mucang/android/facelib/g;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public final declared-synchronized j(Lcn/mucang/android/facelib/y/e$a;Lcn/mucang/android/facelib/model/a;Lcn/mucang/jiakaoyi/uilib/login/face/m;)I
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    const-string v0, "faceData"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "faceResult"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->g()Lorg/opencv/core/Rect;

    move-result-object v5

    .line 2
    iget v0, v1, Lcn/mucang/android/facelib/q;->d:I

    iget v6, v1, Lcn/mucang/android/facelib/q;->e:I

    sub-int/2addr v0, v6

    const/16 v6, 0x14

    const/4 v7, 0x0

    if-le v0, v6, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8fde\u7eed"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcn/mucang/android/facelib/q;->d:I

    iget v9, v1, Lcn/mucang/android/facelib/q;->e:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\u6b21\u4eba\u8138\u4f4d\u7f6e\u4e0d\u5408\u9002\uff0c\u91cd\u65b0\u7edf\u8ba1\u4eba\u8138\u4f4d\u7f6e\u4fe1\u606f"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 4
    iput v7, v1, Lcn/mucang/android/facelib/q;->d:I

    .line 5
    iput v7, v1, Lcn/mucang/android/facelib/q;->e:I

    .line 6
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    :cond_0
    const/4 v8, 0x1

    if-eqz v5, :cond_1

    .line 9
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v9, "avgCount.get()"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const v9, 0x186a0

    if-ge v0, v9, :cond_1

    .line 10
    iget v0, v5, Lorg/opencv/core/Rect;->x:I

    iget v9, v5, Lorg/opencv/core/Rect;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v0, v9

    .line 11
    iget v9, v5, Lorg/opencv/core/Rect;->y:I

    iget v10, v5, Lorg/opencv/core/Rect;->height:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 12
    iget-object v10, v1, Lcn/mucang/android/facelib/q;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    add-int/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v9, "count"

    .line 16
    invoke-static {v0, v9}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v9, v6, :cond_2

    const-string v0, "\u4eba\u8138\u4f4d\u7f6e\u8fd8\u672a\u8ba1\u7b97\u51fa\uff0c\u5148\u4e0d\u6ce8\u518c"

    .line 17
    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 18
    monitor-exit p0

    return v7

    .line 19
    :cond_2
    :try_start_1
    iget-object v6, v1, Lcn/mucang/android/facelib/q;->a:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    div-int/2addr v6, v9

    .line 20
    iget-object v9, v1, Lcn/mucang/android/facelib/q;->b:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v9, v0

    const-string v0, "\u5f00\u59cb\u6ce8\u518c mark:"

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x3a

    if-eqz v5, :cond_4

    if-lez v6, :cond_4

    if-lez v9, :cond_4

    .line 22
    iget v10, v5, Lorg/opencv/core/Rect;->x:I

    iget v11, v5, Lorg/opencv/core/Rect;->width:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 23
    iget v11, v5, Lorg/opencv/core/Rect;->y:I

    iget v12, v5, Lorg/opencv/core/Rect;->height:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    sub-int v12, v10, v6

    .line 24
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    sub-int v13, v11, v9

    .line 25
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "facePos:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v9, v5, Lorg/opencv/core/Rect;->width:I

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v5, Lorg/opencv/core/Rect;->height:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 27
    iget v6, v5, Lorg/opencv/core/Rect;->width:I

    div-int/lit8 v6, v6, 0x2

    if-ge v12, v6, :cond_3

    iget v6, v5, Lorg/opencv/core/Rect;->height:I

    if-lt v13, v6, :cond_4

    .line 28
    :cond_3
    iget v2, v1, Lcn/mucang/android/facelib/q;->d:I

    add-int/2addr v2, v8

    iput v2, v1, Lcn/mucang/android/facelib/q;->d:I

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eba\u8138\u4f4d\u7f6e\u4e0d\u5408\u9002\uff0c\u6ce8\u518c\u5931\u8d25 | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcn/mucang/android/facelib/q;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v1, Lcn/mucang/android/facelib/q;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 30
    monitor-exit p0

    return v7

    .line 31
    :cond_4
    :try_start_2
    iget v6, v1, Lcn/mucang/android/facelib/q;->e:I

    add-int/2addr v6, v8

    iput v6, v1, Lcn/mucang/android/facelib/q;->e:I

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4eba\u8138\u4f4d\u7f6e\u6bd4\u4f8b | "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcn/mucang/android/facelib/q;->e:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v1, Lcn/mucang/android/facelib/q;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 33
    iget v0, v1, Lcn/mucang/android/facelib/q;->f:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v6, 0x3c

    const/16 v9, 0x2711

    if-le v0, v6, :cond_5

    .line 34
    monitor-exit p0

    return v9

    :cond_5
    add-int/2addr v0, v8

    .line 35
    :try_start_3
    iput v0, v1, Lcn/mucang/android/facelib/q;->f:I

    .line 36
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    iget v0, v1, Lcn/mucang/android/facelib/q;->f:I

    add-int/2addr v0, v8

    iput v0, v1, Lcn/mucang/android/facelib/q;->f:I

    const-string v0, "\u7070\u5ea6\u7167\u7247\u4e0d\u6ce8\u518c"

    .line 38
    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 39
    monitor-exit p0

    return v7

    .line 40
    :cond_6
    :try_start_4
    iget-object v0, v1, Lcn/mucang/android/facelib/q;->g:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lkotlin/Pair;

    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v12

    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v12

    invoke-virtual {v11}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v12, v11

    if-gez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_7

    goto :goto_1

    :cond_9
    move-object v6, v10

    :goto_1
    check-cast v6, Lkotlin/Pair;

    if-eqz v6, :cond_a

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eba\u8138\u89d2\u5ea6\uff08"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\uff09\u5728\u8303\u56f4\uff08"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff09\u5185\u6ee1\u4e86"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 42
    monitor-exit p0

    return v7

    .line 43
    :cond_a
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/facelib/y/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, [[F

    if-eqz v6, :cond_b

    check-cast v0, [[F

    goto :goto_2

    :cond_b
    move-object v0, v10

    :goto_2
    if-nez v0, :cond_c

    move-object v14, v10

    goto :goto_3

    :cond_c
    invoke-static {v0, v7}, Lkotlin/collections/k;->B([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move-object v14, v0

    :goto_3
    if-eqz v14, :cond_1c

    .line 44
    array-length v0, v14

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    xor-int/2addr v0, v8

    if-eqz v0, :cond_1c

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_1c

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 47
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 48
    new-instance v11, Lcn/mucang/jiakaoyi/uilib/login/o/b;

    invoke-direct {v11}, Lcn/mucang/jiakaoyi/uilib/login/o/b;-><init>()V

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->e()Ljava/lang/String;

    move-result-object v12

    .line 50
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v13

    const-string v15, "nonstandard"

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->c()Ljava/lang/String;

    move-result-object v16

    .line 52
    invoke-virtual/range {v11 .. v16}, Lcn/mucang/jiakaoyi/uilib/login/o/b;->q(Ljava/lang/String;F[FLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_7
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    move-object v6, v0

    .line 54
    invoke-static {v6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 55
    instance-of v0, v11, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_12

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u6ce8\u518c\u5931\u8d25\uff1a"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "\uff0c\u89d2\u5ea6\uff1a"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, "\uff0c\u8017\u65f6\uff1a"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/facelib/x/a;->a(Ljava/lang/String;)V

    .line 57
    move-object v0, v11

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-ne v0, v9, :cond_f

    .line 58
    monitor-exit p0

    return v9

    .line 59
    :cond_f
    :try_start_8
    move-object v0, v11

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getErrorCode()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v9, 0x271a

    if-ne v0, v9, :cond_12

    .line 60
    :try_start_9
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    move-object v0, v11

    check-cast v0, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v0}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v9, "maxAngle"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_a
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move-object v0, v10

    :cond_10
    move-object v9, v0

    check-cast v9, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 61
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    check-cast v11, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v11}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/core/api/ApiResponse;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v11, "minAngle"

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_c
    sget-object v11, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    move-object v0, v10

    :cond_11
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    if-eqz v9, :cond_12

    .line 62
    iget-object v11, v1, Lcn/mucang/android/facelib/q;->g:Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lkotlin/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_12
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :cond_13
    invoke-static {v6}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_9

    :cond_14
    move-object v10, v6

    :goto_9
    check-cast v10, Ljava/lang/Boolean;

    if-nez v10, :cond_15

    const/4 v0, 0x0

    goto :goto_a

    .line 64
    :cond_15
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_a
    if-eqz v0, :cond_1c

    .line 65
    sget-object v0, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Lcn/mucang/android/facelib/o$a;->g(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x32

    if-ge v6, v9, :cond_16

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->d()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->a()Ljava/lang/String;

    move-result-object v9

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/facelib/y/e$a;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v10, "faceData.faceBitmap"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v10

    .line 70
    invoke-virtual {v0, v6, v9, v2, v10}, Lcn/mucang/android/facelib/o$a;->j(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_16
    const-string v0, ""

    .line 71
    :goto_b
    sget-object v2, Lcn/mucang/android/facelib/p;->a:Lcn/mucang/android/facelib/p$a;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/mucang/android/facelib/p$a;->c(Ljava/lang/String;)I

    move-result v6

    const/16 v9, 0x1e

    if-ge v6, v9, :cond_17

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->d()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->f()Landroid/graphics/Bitmap;

    move-result-object v9

    const-string v10, "faceResult.originBitmap"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v10

    .line 75
    invoke-virtual {v2, v6, v9, v10}, Lcn/mucang/android/facelib/p$a;->d(Ljava/lang/String;Landroid/graphics/Bitmap;F)Ljava/lang/String;

    .line 76
    :cond_17
    new-instance v2, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    const-string v6, ""

    const-string v9, ""

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->b()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-direct {v2, v6, v9, v10, v11}, Lcn/mucang/android/facelib/model/FaceLabelEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setMark(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v0}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setFaceFile(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setStudentId(Ljava/lang/String;)V

    if-nez v5, :cond_18

    const/4 v0, 0x0

    goto :goto_c

    .line 80
    :cond_18
    iget v0, v5, Lorg/opencv/core/Rect;->x:I

    :goto_c
    invoke-virtual {v2, v0}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setFaceX(I)V

    if-nez v5, :cond_19

    const/4 v0, 0x0

    goto :goto_d

    .line 81
    :cond_19
    iget v0, v5, Lorg/opencv/core/Rect;->y:I

    :goto_d
    invoke-virtual {v2, v0}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setFaceY(I)V

    if-nez v5, :cond_1a

    const/4 v0, 0x0

    goto :goto_e

    .line 82
    :cond_1a
    iget v0, v5, Lorg/opencv/core/Rect;->width:I

    :goto_e
    invoke-virtual {v2, v0}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setFaceWidth(I)V

    if-nez v5, :cond_1b

    goto :goto_f

    .line 83
    :cond_1b
    iget v7, v5, Lorg/opencv/core/Rect;->height:I

    :goto_f
    invoke-virtual {v2, v7}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->setFaceHeight(I)V

    .line 84
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 85
    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v0, "DbLock"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 86
    :try_start_d
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 87
    :try_start_e
    monitor-exit v5

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eba\u8138\u6ce8\u518c\u6210\u529f, \u89d2\u5ea6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcn/mucang/jiakaoyi/uilib/login/face/m;->b()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u8017\u65f6\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "   mark:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/facelib/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 89
    monitor-exit p0

    return v8

    :catchall_3
    move-exception v0

    .line 90
    :try_start_f
    monitor-exit v5

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 91
    :cond_1c
    monitor-exit p0

    return v7

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/facelib/q;->d:I

    .line 2
    iput v0, p0, Lcn/mucang/android/facelib/q;->e:I

    .line 3
    iput v0, p0, Lcn/mucang/android/facelib/q;->f:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/facelib/q;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final l()V
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "sundial_vector"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v2, "DbLock"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 9
    :try_start_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v2

    const-class v3, Lcn/mucang/android/facelib/model/FaceHistoryEntity;

    const-string v4, "select * from t_face_history"

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 10
    monitor-exit v0

    const-string v0, "history"

    .line 11
    invoke-static {v2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/facelib/model/FaceHistoryEntity;

    .line 13
    invoke-virtual {v2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->getMucangId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->getUpdateTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->getUpdateTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x48190800

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 16
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    const-string v5, "DbLock"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v3

    .line 17
    :try_start_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v5

    const-class v6, Lcn/mucang/android/facelib/model/FaceHistoryEntity;

    invoke-virtual {v2}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v7

    const-string v8, "it.id"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v5

    const-class v6, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    const-string v7, "select * from t_face_label where mucang_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 19
    invoke-virtual {v2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->getMucangId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v1

    invoke-static {v7, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v4

    .line 20
    invoke-virtual {v5, v6, v4}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    monitor-exit v3

    .line 22
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/android/facelib/model/FaceHistoryEntity;->getMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5411\u91cf\u6570\u636e\u8d85\u8fc714\u5929\u672a\u4f7f\u7528\uff0c\u5220\u9664"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x6761

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    const-string v2, "flList"

    .line 24
    invoke-static {v4, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/facelib/model/FaceLabelEntity;

    .line 26
    sget-object v4, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getStudentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getMark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcn/mucang/android/facelib/o$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v5, Lcn/mucang/android/facelib/p;->a:Lcn/mucang/android/facelib/p$a;

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getStudentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/mucang/android/facelib/p$a;->a(Ljava/lang/String;)V

    .line 28
    sget-object v5, Lcn/mucang/android/facelib/q;->h:Lcn/mucang/android/facelib/q$a;

    const-string v6, "et"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcn/mucang/android/facelib/q$a;->a(Lcn/mucang/android/facelib/model/FaceLabelEntity;)V

    .line 29
    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getStudentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcn/mucang/android/facelib/model/FaceLabelEntity;->getMark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcn/mucang/android/facelib/o$a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 30
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 32
    monitor-exit v3

    throw v0

    .line 33
    :cond_6
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 34
    sget-object v0, Lcn/mucang/android/facelib/o;->a:Lcn/mucang/android/facelib/o$a;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/o$a;->k()V

    .line 35
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 36
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_5
    :try_start_4
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 38
    sget-object v0, Lcn/mucang/android/facelib/p;->a:Lcn/mucang/android/facelib/p$a;

    invoke-virtual {v0}, Lcn/mucang/android/facelib/p$a;->e()V

    .line 39
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 40
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-void

    :catchall_4
    move-exception v1

    .line 41
    monitor-exit v0

    throw v1
.end method
