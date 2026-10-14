.class public Lcn/mucang/android/jiakaoyi/engine/i/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private final c:Lcn/mucang/android/jiakaoyi/engine/i/e/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/i/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->c:Lcn/mucang/android/jiakaoyi/engine/i/e/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->a:I

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->a:I

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->c:Lcn/mucang/android/jiakaoyi/engine/i/e/b;

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/i/e/b;->trigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->b:Z

    if-nez p2, :cond_0

    .line 3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->a:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->a:I

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->b:Z

    return p2

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/i/e/a;->b:Z

    const/4 p1, 0x0

    return p1
.end method
