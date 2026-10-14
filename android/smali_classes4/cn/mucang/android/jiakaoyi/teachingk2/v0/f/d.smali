.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

.field private final c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

.field private final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private final f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const-wide/16 p2, 0x1770

    invoke-direct {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p5, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step9:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p5, :cond_1

    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step8:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v2, v3, :cond_2

    const/16 v2, 0x28

    goto :goto_2

    :cond_2
    const/16 v2, 0x1e

    .line 3
    :goto_2
    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->rearAxlePoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    double-to-int v5, v5

    .line 5
    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, v6, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->f(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 6
    :goto_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p1, :cond_5

    if-lt v5, v2, :cond_4

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    const-wide/16 v1, 0x1770

    const-wide/16 v4, 0x2328

    if-eqz v0, :cond_7

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, v3, :cond_6

    .line 10
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gear_r_practice:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b()V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->c(J)V

    goto :goto_4

    :cond_6
    if-ne p1, p5, :cond_a

    .line 13
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gear_r_practice_start_slow:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b()V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->c(J)V

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 16
    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 18
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_gear_r_practice_start_slow:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b()V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->c(J)V

    goto :goto_4

    .line 21
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b()V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/d;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p5, :cond_9

    move-wide v1, v4

    :cond_9
    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->c(J)V

    :cond_a
    :goto_4
    return v0
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
    .locals 0

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
