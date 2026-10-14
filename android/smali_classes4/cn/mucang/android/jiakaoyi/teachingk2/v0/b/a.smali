.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/teachingk2/v0/a<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field protected final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final h:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->j:J

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->h:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->g()Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->c:I

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i:Z

    return-void
.end method

.method private i(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    iget v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->totalCount:I

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->c:I

    sub-int/2addr v0, v1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;->passCount:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0

    .line 1
    check-cast p5, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->j(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z

    move-result p1

    return p1
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
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i:Z

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->c:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->j:J

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
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

.method protected abstract g()Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/teachingk2/v0/a<",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;",
            ">;"
        }
    .end annotation
.end method

.method protected h(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V
    .locals 0

    return-void
.end method

.method public j(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i:Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->j:J

    .line 4
    invoke-virtual {p0, p4, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;)V

    .line 5
    :cond_0
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->g()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    add-int/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_pass_first_prace:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 11
    :cond_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->c:I

    .line 12
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 13
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_come_on_again:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p2, p4}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 14
    :cond_2
    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->c(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->e()Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/a;->m(Z)V

    .line 16
    :cond_3
    :goto_0
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->h:Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->b:I

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->c:I

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->j:J

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;IIJ)V

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    iget-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, p3, p4, p5, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;->setCount(IIII)Lcn/mucang/android/jiakaoyi/teachingk2/fp/info/FpResult;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->h(Ljava/lang/Object;)V

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/a;->clear()V

    .line 20
    :cond_4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/b/a;->i(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;)Z

    move-result p1

    return p1
.end method
