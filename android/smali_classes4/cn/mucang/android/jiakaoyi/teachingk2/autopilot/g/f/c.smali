.class public Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->a:I

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->b:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Z
    .locals 4
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
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 p5, 0x7d0

    invoke-direct {p2, p5, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    .line 4
    iget p3, p4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    const/16 p5, 0x1e

    const/4 p6, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-lt p3, p5, :cond_3

    iget p3, p4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data2:I

    const/16 p5, -0x1f4

    if-ge p3, p5, :cond_1

    if-lt p2, p3, :cond_3

    :cond_1
    const/16 p5, 0x1f4

    if-le p3, p5, :cond_2

    if-le p2, p3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p3, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b(J)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->c:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 8
    iget-object p1, p4, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->desc:Ljava/lang/String;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u89e6\u53d1\u65b9\u5411\u76d8\u63d0\u9192:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->b:I

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v1, :cond_4

    .line 11
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->a:I

    add-int/2addr p1, p6

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->a:I

    goto :goto_1

    .line 12
    :cond_4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->a:I

    .line 13
    :cond_5
    :goto_1
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->b:I

    .line 14
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/c;->a:I

    if-lt p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p6, 0x0

    :goto_2
    return p6
.end method
