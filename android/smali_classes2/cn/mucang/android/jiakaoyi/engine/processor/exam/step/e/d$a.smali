.class Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d$a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d$a;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
