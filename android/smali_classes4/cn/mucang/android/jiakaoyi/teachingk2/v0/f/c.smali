.class public Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;
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
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->d:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->e:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/FirstPracticeStep;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;ILcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Z
    .locals 2
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
    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->f(I)Z

    move-result p1

    .line 2
    invoke-interface {p0, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/firstpractice/c;->e(I)Z

    move-result p2

    .line 3
    invoke-interface {p4}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/4 p4, 0x1

    const/4 p5, 0x0

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->d:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_body_press_line_reset:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->e:Z

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 9
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_wheel_press_line_reset:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 10
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->f:Z

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 12
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_speed_over_5_reset:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 13
    :cond_3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->e:Z

    .line 14
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->d:Z

    .line 15
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/f/c;->f:Z

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    :goto_1
    return p4
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
