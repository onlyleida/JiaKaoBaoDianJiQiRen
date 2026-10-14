.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

.field public final b:I

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final f:D

.field public final g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    .line 3
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->b:I

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iput-wide p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->f:D

    .line 7
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->g:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 8
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->j:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->i:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->j:Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/CorrectState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/b;->i:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
