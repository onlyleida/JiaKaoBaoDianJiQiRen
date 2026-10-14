.class public Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;
.super Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/y0/a<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

.field public c:D


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/i;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>(Z)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;->b:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/h;->c:D

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
