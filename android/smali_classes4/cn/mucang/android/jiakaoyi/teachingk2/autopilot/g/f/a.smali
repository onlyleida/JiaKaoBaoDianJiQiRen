.class public Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;


# instance fields
.field private a:I

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 p3, 0x7d0

    invoke-direct {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 3
    :cond_0
    iget p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->a:I

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    const-wide/16 p4, 0x1388

    const/4 p6, 0x2

    if-eq p2, p3, :cond_4

    const/4 v0, 0x3

    if-eq p2, p6, :cond_2

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    return p3

    .line 4
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz p2, :cond_3

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->a:I

    goto :goto_0

    .line 6
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1, p4, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b(J)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 9
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_push_handbrake:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_5

    .line 11
    iput p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->a:I

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1, p4, p5}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b(J)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 16
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_pull_handbrake:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 17
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz p1, :cond_7

    .line 18
    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->a:I

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
