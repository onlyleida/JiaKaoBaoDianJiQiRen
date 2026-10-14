.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/x0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BC:",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b<",
        "**>;>",
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/e;"
    }
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBC;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/x0/f;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    return-void
.end method


# virtual methods
.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->o()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/c;->i()Lcn/mucang/android/jiakaoyi/engine/e;

    move-result-object v0

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/e;->d(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/x0/f;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/x0/f;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;-><init>()V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
