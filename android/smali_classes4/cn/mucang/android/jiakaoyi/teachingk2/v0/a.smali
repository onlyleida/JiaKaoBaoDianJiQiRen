.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
        "TT;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

.field private final f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

.field private final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Ljava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;>;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
            "TT;>;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->c:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->d:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 8
    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->k:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;",
            "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;",
            "I",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->i:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, v0, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->j:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->d:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    invoke-interface/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->l:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 7
    invoke-interface/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->k:Z

    goto :goto_0

    .line 9
    :cond_3
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p1, :cond_4

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p1, :cond_5

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 14
    :cond_5
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->g()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->i:Z

    if-nez p1, :cond_6

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 18
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_error_reset:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 19
    :cond_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->j:Z

    if-nez p1, :cond_7

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_stop_error_reset:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 22
    :cond_7
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->k:Z

    return p1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic b(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/b;->d(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;I)Z

    move-result p1

    return p1
.end method

.method public synthetic c(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/b;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;I)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->i:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->j:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->k:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->clear()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->clear()V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->d:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->clear()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;

    .line 8
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->clear()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic d(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/b;->e(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;I)Z

    move-result p1

    return p1
.end method

.method public synthetic f(I)Z
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/b;->b(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;I)Z

    move-result p1

    return p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->e:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->f:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
