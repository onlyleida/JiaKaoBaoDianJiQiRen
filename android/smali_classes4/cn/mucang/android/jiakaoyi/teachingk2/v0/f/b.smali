.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;
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
.field private final a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

.field private final b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const-wide/16 v0, 0x7d0

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 0
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
    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p4

    iget-wide p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p2, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    sget p2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_start_slowly:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b()V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const-wide/16 p3, 0x1f40

    invoke-virtual {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->c(J)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->b()V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/b;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const-wide/16 p3, 0x7d0

    invoke-virtual {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->c(J)V

    :cond_2
    :goto_1
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
