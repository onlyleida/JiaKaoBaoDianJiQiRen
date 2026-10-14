.class public Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field private final b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/a;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;-><init>(Lcn/mucang/android/jiakaoyi/engine/i/e/b;J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    sget p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    mul-float p2, p2, v0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/c;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    return-void
.end method
